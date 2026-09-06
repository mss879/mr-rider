"use client";

import { useCallback, useEffect, useState } from "react";
import type { SupabaseClient } from "@supabase/supabase-js";
import {
  newImagePath,
  productImageUrl,
  rejectReason,
  ALLOWED_IMAGE_TYPES,
} from "@/lib/images";

export type RowData = Record<string, unknown>;

export type FieldDef = {
  key: string;
  label: string;
  type:
    | "text"
    | "number"
    | "select"
    /* BUG-02 — no field anywhere in the admin declares "multiselect" any more:
       the products form's brand-collections picker was the only one, and the
       club asked for it off. The type and its save/layout/render branches below
       stay deliberately. This is generic infrastructure in a component six admin
       tabs share, it costs nothing while unused, and it is the entire fix if the
       collections picker (or any other multi-value field) is ever wanted back. */
    | "multiselect"
    | "images"
    | "checkbox"
    | "date"
    | "datetime"
    | "textarea";
  options?: { value: string; label: string }[];
  /** Options that depend on other values in the row (e.g. product type follows category). */
  optionsFor?: (row: RowData) => { value: string; label: string }[];
  required?: boolean;
  placeholder?: string;
  step?: string;
  /** images only — Storage bucket to upload into, and how many are allowed. */
  bucket?: string;
  max?: number;
  /** Hide the field unless the rest of the row calls for it — stock only
      matters on a brand-new product, say. A hidden field is also skipped
      by the required check, so it can never block a save the admin has no
      way of seeing the cause of. */
  showIf?: (row: RowData) => boolean;
};

const isVisible = (f: FieldDef, row: RowData) => f.showIf?.(row) ?? true;

function optionsOf(f: FieldDef, row: RowData): { value: string; label: string }[] {
  return f.optionsFor ? f.optionsFor(row) : (f.options ?? []);
}

/* Dependent selects (product type follows category) can hold a value that no
   longer belongs to the parent — fall back to the first valid option so the
   form never saves a value that breaks the foreign key. */
function selectValue(f: FieldDef, row: RowData): string {
  const current = String(row[f.key] ?? "");
  if (!f.optionsFor) return current;
  const opts = f.optionsFor(row);
  return opts.some((o) => o.value === current) ? current : (opts[0]?.value ?? "");
}

function asArray(v: unknown): string[] {
  return Array.isArray(v) ? (v as string[]) : [];
}

type StoredFile = { bucket: string; path: string };

const fieldCls =
  "w-full border border-line bg-chalk px-3 py-2.5 text-sm placeholder:text-ink-soft/60";
const labelCls =
  "mb-1 block font-mono text-[10px] uppercase tracking-[0.2em] text-ink-soft";
const errCls =
  "border border-ink bg-chalk px-4 py-3 font-mono text-[11px] uppercase tracking-[0.12em] text-ink font-semibold";
const btnSm =
  "px-3 py-1.5 font-mono text-[10px] font-semibold uppercase tracking-[0.14em] transition-colors duration-200 ease-out";

function toLocalInput(iso: string): string {
  const d = new Date(iso);
  const pad = (n: number) => String(n).padStart(2, "0");
  return `${d.getFullYear()}-${pad(d.getMonth() + 1)}-${pad(d.getDate())}T${pad(d.getHours())}:${pad(d.getMinutes())}`;
}

/** BE-01 — one entry in the log's sort picker. */
export type SortOption = {
  value: string;
  label: string;
  column: string;
  ascending: boolean;
};

/* PostgREST parses `or=(col.ilike.%x%,col2.ilike.%x%)` by splitting the string
   itself, so a comma, a bracket or a quote inside what the admin typed ends
   the filter early and the query comes back as a 400. They are stripped rather
   than escaped: the alternative is a quoting scheme that has to stay in step
   with PostgREST's own, to support characters nobody searches product names
   by. `%` and `_` go too — they are ILIKE wildcards, and a search box that
   silently accepts them behaves differently for two admins typing the same
   thing. */
const sanitiseSearch = (raw: string) =>
  raw.replace(/[,()"'\\%_]/g, " ").replace(/\s+/g, " ").trim();

export default function AdminCrud({
  sb,
  table,
  title,
  blurb,
  fields,
  orderBy = "id",
  summary,
  newRow,
  quickActions = [],
  searchColumns,
  sortOptions,
  pageSize,
}: {
  sb: SupabaseClient;
  table: string;
  title: string;
  blurb?: string;
  fields: FieldDef[];
  orderBy?: string;
  summary: (r: RowData) => { title: string; meta: string; chips?: string[] };
  newRow: () => RowData;
  quickActions?: { label: string; patch: () => RowData }[];
  /* BE-01 — the three below turn this list into a LOG: a table that can be
     searched, ordered and paged through instead of one that renders every row
     it can find. Opt-in, because they cost a `count: exact` on every query and
     a tab holding twenty rows does not need any of it.

     All three are done in Postgres, not in the browser. Products is past 1,400
     rows: filtering client-side would still mean fetching all 1,400 and
     mounting a card for each one, which is the problem, not the fix. */
  /** Columns an ILIKE search runs across. Omit for no search box. */
  searchColumns?: string[];
  /** Orderings offered in the picker. The first is the default. */
  sortOptions?: SortOption[];
  /** Rows per page. Omit to load the whole table as before. */
  pageSize?: number;
}) {
  const [rows, setRows] = useState<RowData[]>([]);
  const [editing, setEditing] = useState<RowData | null>(null);
  const [isNew, setIsNew] = useState(false);
  const [busy, setBusy] = useState(false);
  const [uploading, setUploading] = useState(false);
  const [error, setError] = useState<string | null>(null);

  /* `query` is what is in the box; `search` is what has been sent. Typing into
     an unthrottled box on a 1,400-row table fires a query per keystroke. */
  const [query, setQuery] = useState("");
  const [search, setSearch] = useState("");
  const [sortKey, setSortKey] = useState(() => sortOptions?.[0]?.value ?? "");
  const [page, setPage] = useState(0);
  const [total, setTotal] = useState<number | null>(null);
  const [loading, setLoading] = useState(true);

  const paged = typeof pageSize === "number" && pageSize > 0;
  const perPage = pageSize ?? 0;

  useEffect(() => {
    if (query === search) return;
    const t = setTimeout(() => setSearch(query), 300);
    return () => clearTimeout(t);
  }, [query, search]);

  /* A different question deserves its first page, not page 7 of the last one.

     Adjusted during render rather than in an effect: an effect would let the
     page-7 query fire first and then immediately fire the page-1 one, so the
     admin pays for two round trips and sees the wrong fifty rows in between. */
  const question = `${search}\u0000${sortKey}`;
  const [lastQuestion, setLastQuestion] = useState(question);
  if (lastQuestion !== question) {
    setLastQuestion(question);
    setPage(0);
  }

  /* Uploads land in Storage immediately so the admin can see a thumbnail, but
     nothing is destroyed until the form is resolved: saving deletes the files
     the admin removed, cancelling deletes the files this session uploaded. */
  const [sessionUploads, setSessionUploads] = useState<StoredFile[]>([]);
  const [sessionRemovals, setSessionRemovals] = useState<StoredFile[]>([]);

  const dropFiles = useCallback(
    async (items: StoredFile[]) => {
      const byBucket = new Map<string, string[]>();
      for (const { bucket, path } of items) {
        if (/^https?:\/\//i.test(path)) continue; // external URL, nothing of ours to delete
        byBucket.set(bucket, [...(byBucket.get(bucket) ?? []), path]);
      }
      for (const [bucket, paths] of byBucket) {
        await sb.storage.from(bucket).remove(paths);
      }
    },
    [sb],
  );

  /* Flattened to primitives before `load` closes over them. An array or an
     object prop is a new identity on every render of the PARENT, so putting
     `searchColumns` / `sortOptions` straight into the dependency list makes
     `load` new every render — and since an effect below calls it, that is a
     query loop for anyone who passes the props inline rather than hoisting
     them to module scope, which is not a trap a caller should have to know
     about. */
  const searchKey = searchColumns?.length ? searchColumns.join(",") : "";
  const chosen = sortOptions?.find((o) => o.value === sortKey);
  const sortCol = chosen?.column ?? "";
  const sortAsc = chosen?.ascending ?? true;

  const load = useCallback(async () => {
    setLoading(true);

    let q = paged
      ? sb.from(table).select("*", { count: "exact" })
      : sb.from(table).select("*");

    const cols = searchKey ? searchKey.split(",") : [];
    const term = cols.length ? sanitiseSearch(search) : "";
    if (term) q = q.or(cols.map((c) => `${c}.ilike.%${term}%`).join(","));

    if (sortCol) {
      // nullsFirst false so an unset date or position sinks rather than
      // occupying the top of the list the admin is trying to read.
      q = q.order(sortCol, { ascending: sortAsc, nullsFirst: false });
      // A stable tie-break, or two rows listed on the same day swap places
      // between pages and one of them is never shown.
      if (sortCol !== "id") q = q.order("id", { ascending: true });
    } else {
      q = q.order(orderBy);
    }

    if (paged) q = q.range(page * perPage, page * perPage + perPage - 1);

    const { data, error: err, count } = await q;
    setLoading(false);
    if (err) {
      setError(`${table}: ${err.message}`);
      return;
    }
    setRows((data as RowData[]) ?? []);
    if (paged) setTotal(count ?? 0);
  }, [
    sb,
    table,
    orderBy,
    paged,
    perPage,
    page,
    search,
    searchKey,
    sortCol,
    sortAsc,
  ]);

  useEffect(() => {
    load();
  }, [load]);


  function openEdit(r: RowData) {
    const v: RowData = { ...r };
    for (const f of fields) {
      if (f.type === "datetime" && typeof v[f.key] === "string" && v[f.key]) {
        v[f.key] = toLocalInput(v[f.key] as string);
      }
    }
    setSessionUploads([]);
    setSessionRemovals([]);
    setEditing(v);
    setIsNew(false);
    setError(null);
  }

  /** Abandon the form — anything uploaded during it never made it to a row. */
  async function cancelEdit() {
    const orphans = sessionUploads;
    setSessionUploads([]);
    setSessionRemovals([]);
    setEditing(null);
    if (orphans.length > 0) await dropFiles(orphans);
  }

  async function uploadImages(f: FieldDef, fileList: FileList | null) {
    if (!editing || !fileList || fileList.length === 0) return;
    const bucket = f.bucket;
    if (!bucket) return;
    const max = f.max ?? 5;
    const current = asArray(editing[f.key]);
    const room = max - current.length;
    if (room <= 0) {
      setError(`${f.label}: ${max} is the maximum`);
      return;
    }

    const files = Array.from(fileList).slice(0, room);
    const skipped =
      fileList.length > room
        ? [`only ${room} more image${room === 1 ? "" : "s"} allowed — extras skipped`]
        : [];

    setUploading(true);
    setError(null);
    const added: string[] = [];
    for (const file of files) {
      const reason = rejectReason(file);
      if (reason) {
        skipped.push(reason);
        continue;
      }
      const path = newImagePath(String(editing.id ?? "product"), file);
      const { error: err } = await sb.storage
        .from(bucket)
        .upload(path, file, { cacheControl: "31536000", upsert: false });
      if (err) {
        skipped.push(`${file.name}: ${err.message}`);
        continue;
      }
      setSessionUploads((prev) => [...prev, { bucket, path }]);
      added.push(path);
    }
    setUploading(false);
    if (added.length > 0) {
      setEditing((prev) =>
        prev ? { ...prev, [f.key]: [...asArray(prev[f.key]), ...added] } : prev,
      );
    }
    if (skipped.length > 0) setError(skipped.join(" · "));
  }

  function removeImage(f: FieldDef, path: string) {
    if (!editing) return;
    setSessionRemovals((prev) => [...prev, { bucket: f.bucket ?? "", path }]);
    setEditing({
      ...editing,
      [f.key]: asArray(editing[f.key]).filter((p) => p !== path),
    });
  }

  function moveImage(f: FieldDef, from: number, to: number) {
    if (!editing) return;
    const list = [...asArray(editing[f.key])];
    if (to < 0 || to >= list.length) return;
    const [moved] = list.splice(from, 1);
    list.splice(to, 0, moved);
    setEditing({ ...editing, [f.key]: list });
  }

  async function save(e: React.FormEvent) {
    e.preventDefault();
    if (!editing) return;
    const payload: RowData = { id: editing.id };
    for (const f of fields) {
      if (f.type === "multiselect" || f.type === "images") {
        payload[f.key] = asArray(editing[f.key]);
        continue;
      }
      let v: unknown =
        f.type === "select" ? selectValue(f, editing) : editing[f.key];
      if (typeof v === "string") v = v.trim();
      if (f.type === "number") {
        if (v === "" || v == null) v = null;
        else {
          const num = Number(v);
          if (Number.isNaN(num)) {
            setError(`${f.label} must be a number`);
            return;
          }
          v = num;
        }
      }
      if (f.type === "datetime" && typeof v === "string" && v) {
        v = new Date(v).toISOString();
      }
      if (!isVisible(f, editing)) continue;
      if (f.required && (v == null || v === "" || v === false && f.type !== "checkbox")) {
        if (v !== false) {
          setError(`${f.label} is required`);
          return;
        }
      }
      payload[f.key] = v === "" ? null : v;
    }
    setBusy(true);
    setError(null);
    const { error: err } = isNew
      ? await sb.from(table).insert(payload)
      : await sb.from(table).update(payload).eq("id", editing.id as string);
    setBusy(false);
    if (err) {
      setError(err.message);
      return;
    }
    // The row is saved — now bin the images the admin took off it.
    const removed = sessionRemovals;
    setSessionUploads([]);
    setSessionRemovals([]);
    setEditing(null);
    if (removed.length > 0) await dropFiles(removed);
    load();
  }

  async function remove(r: RowData) {
    if (!window.confirm(`Delete “${summary(r).title}”? This cannot be undone.`))
      return;
    const { error: err } = await sb
      .from(table)
      .delete()
      .eq("id", r.id as string);
    if (err) {
      setError(err.message);
      return;
    }
    // Take the product's photography with it.
    for (const f of fields) {
      if (f.type !== "images" || !f.bucket) continue;
      const paths = asArray(r[f.key]).map((path) => ({ bucket: f.bucket!, path }));
      if (paths.length > 0) await dropFiles(paths);
    }
    load();
  }

  async function applyQuick(r: RowData, patch: RowData) {
    const { error: err } = await sb
      .from(table)
      .update(patch)
      .eq("id", r.id as string);
    if (err) setError(err.message);
    else load();
  }

  return (
    <section className="mb-14">
      <div className="mb-5 flex flex-wrap items-end justify-between gap-4">
        <div>
          <h2 className="headline text-3xl">{title}</h2>
          <p className="mt-1 font-mono text-[11px] uppercase tracking-[0.18em] text-ink-soft">
            {paged && total !== null
              ? `${total} row${total === 1 ? "" : "s"}${search ? " matching" : ""}`
              : `${rows.length} rows`}
            {blurb ? ` · ${blurb}` : ""}
          </p>
        </div>
        <button
          type="button"
          onClick={() => {
            setSessionUploads([]);
            setSessionRemovals([]);
            setEditing(newRow());
            setIsNew(true);
            setError(null);
          }}
          className={`${btnSm} bg-ink px-4 py-2.5 text-chalk hover:bg-ink-soft`}
        >
          + Add new
        </button>
      </div>

      {(searchColumns?.length || sortOptions?.length) && (
        <div className="mb-5 flex flex-wrap items-center gap-3">
          {searchColumns?.length ? (
            <label className="flex min-w-0 flex-1 basis-64 items-center gap-2 border-b-2 border-ink">
              <span className="sr-only">Search {table}</span>
              <input
                value={query}
                onChange={(e) => setQuery(e.target.value)}
                placeholder="SEARCH BY NAME, BRAND OR ID…"
                className="w-full min-w-0 bg-transparent py-2 font-mono text-xs uppercase tracking-[0.14em] placeholder:text-ink-soft/60 focus:outline-none"
              />
              {query && (
                <button
                  type="button"
                  onClick={() => setQuery("")}
                  aria-label="Clear search"
                  className="font-mono text-xs text-ink-soft hover:text-ink"
                >
                  ✕
                </button>
              )}
            </label>
          ) : null}
          {sortOptions?.length ? (
            <label className="flex items-center gap-2">
              <span className="font-mono text-[10px] uppercase tracking-[0.18em] text-ink-soft">
                Sort
              </span>
              <select
                value={sortKey}
                onChange={(e) => setSortKey(e.target.value)}
                className="border border-line bg-chalk px-2 py-2 font-mono text-[11px] uppercase tracking-[0.1em]"
              >
                {sortOptions.map((o) => (
                  <option key={o.value} value={o.value}>
                    {o.label}
                  </option>
                ))}
              </select>
            </label>
          ) : null}
        </div>
      )}

      {error && (
        <p role="alert" className={`${errCls} mb-5`}>
          {error}
        </p>
      )}

      {editing && (
        <form
          onSubmit={save}
          className="mb-8 border border-ink bg-chalk p-6"
        >
          <p className="mb-5 font-mono text-[11px] font-semibold uppercase tracking-[0.2em]">
            {isNew ? `New ${title.replace(/\.$/, "").toLowerCase()} entry` : `Editing: ${summary(editing).title}`}
          </p>
          <div className="grid gap-4 sm:grid-cols-2 lg:grid-cols-3">
            {fields.filter((f) => isVisible(f, editing)).map((f) => (
              <div
                key={f.key}
                className={
                  f.type === "textarea" ||
                  f.type === "multiselect" ||
                  f.type === "images"
                    ? "sm:col-span-2 lg:col-span-3"
                    : ""
                }
              >
                {f.type === "images" ? (
                  (() => {
                    const imgs = asArray(editing[f.key]);
                    const max = f.max ?? 5;
                    return (
                      <fieldset>
                        <legend className={labelCls}>
                          {f.label} — {imgs.length}/{max}
                        </legend>
                        {imgs.length > 0 && (
                          <ul className="mb-3 flex flex-wrap gap-3">
                            {imgs.map((path, idx) => (
                              <li
                                key={path}
                                className="w-32 border border-line bg-chalk p-1.5"
                              >
                                <span className="relative block aspect-square overflow-clip bg-paper-2">
                                  {/* eslint-disable-next-line @next/next/no-img-element */}
                                  <img
                                    src={productImageUrl(path)}
                                    alt={`${String(editing.name ?? "Product")} — photo ${idx + 1}`}
                                    className="size-full object-cover"
                                  />
                                  {idx === 0 && (
                                    <span className="absolute left-0 top-0 bg-ink px-1.5 py-0.5 font-mono text-[9px] font-semibold tracking-[0.12em] text-chalk">
                                      MAIN
                                    </span>
                                  )}
                                </span>
                                <span className="mt-1.5 flex items-center justify-between gap-1">
                                  <span className="flex gap-1">
                                    <button
                                      type="button"
                                      onClick={() => moveImage(f, idx, idx - 1)}
                                      disabled={idx === 0}
                                      aria-label="Move image earlier"
                                      className="border border-line px-1.5 py-0.5 font-mono text-[10px] disabled:opacity-30"
                                    >
                                      ←
                                    </button>
                                    <button
                                      type="button"
                                      onClick={() => moveImage(f, idx, idx + 1)}
                                      disabled={idx === imgs.length - 1}
                                      aria-label="Move image later"
                                      className="border border-line px-1.5 py-0.5 font-mono text-[10px] disabled:opacity-30"
                                    >
                                      →
                                    </button>
                                  </span>
                                  <button
                                    type="button"
                                    onClick={() => removeImage(f, path)}
                                    className="font-mono text-[10px] uppercase tracking-[0.1em] text-ink underline underline-offset-2 hover:text-ink-soft"
                                  >
                                    Remove
                                  </button>
                                </span>
                              </li>
                            ))}
                          </ul>
                        )}
                        <input
                          id={`f-${table}-${f.key}`}
                          type="file"
                          accept={ALLOWED_IMAGE_TYPES.join(",")}
                          multiple
                          disabled={uploading || imgs.length >= max}
                          onChange={(e) => {
                            uploadImages(f, e.target.files);
                            e.target.value = "";
                          }}
                          className="block w-full text-sm file:mr-3 file:border-0 file:bg-ink file:px-4 file:py-2 file:font-mono file:text-[10px] file:font-semibold file:uppercase file:tracking-[0.14em] file:text-chalk disabled:opacity-50"
                        />
                        <p className="mt-1.5 font-mono text-[10px] uppercase tracking-[0.12em] text-ink-soft">
                          {uploading
                            ? "Uploading…"
                            : imgs.length >= max
                              ? `Maximum ${max} images reached — remove one to add another`
                              : "JPEG, PNG, WebP or AVIF · up to 5MB each · first image is the card shot"}
                        </p>
                      </fieldset>
                    );
                  })()
                ) : f.type === "multiselect" ? (
                  <fieldset>
                    <legend className={labelCls}>{f.label}</legend>
                    <div className="flex max-h-40 flex-wrap gap-x-5 gap-y-2 overflow-y-auto border border-line bg-chalk px-3 py-2.5">
                      {optionsOf(f, editing).map((o) => {
                        const selected = asArray(editing[f.key]);
                        return (
                          <label
                            key={o.value}
                            className="flex cursor-pointer items-center gap-2 text-sm"
                          >
                            <input
                              type="checkbox"
                              checked={selected.includes(o.value)}
                              onChange={() =>
                                setEditing({
                                  ...editing,
                                  [f.key]: selected.includes(o.value)
                                    ? selected.filter((s) => s !== o.value)
                                    : [...selected, o.value],
                                })
                              }
                              className="size-4 accent-ink"
                            />
                            {o.label}
                          </label>
                        );
                      })}
                    </div>
                  </fieldset>
                ) : f.type === "checkbox" ? (
                  <label className="flex cursor-pointer items-center gap-2.5 pt-6 text-sm">
                    <input
                      type="checkbox"
                      checked={Boolean(editing[f.key])}
                      onChange={(e) =>
                        setEditing({ ...editing, [f.key]: e.target.checked })
                      }
                      className="size-4 accent-ink"
                    />
                    {f.label}
                  </label>
                ) : (
                  <>
                    <label htmlFor={`f-${table}-${f.key}`} className={labelCls}>
                      {f.label}
                      {f.required ? " *" : ""}
                    </label>
                    {f.type === "textarea" ? (
                      <textarea
                        id={`f-${table}-${f.key}`}
                        rows={3}
                        value={String(editing[f.key] ?? "")}
                        onChange={(e) =>
                          setEditing({ ...editing, [f.key]: e.target.value })
                        }
                        placeholder={f.placeholder}
                        className={`${fieldCls} resize-y`}
                      />
                    ) : f.type === "select" ? (
                      <select
                        id={`f-${table}-${f.key}`}
                        value={selectValue(f, editing)}
                        onChange={(e) =>
                          setEditing({ ...editing, [f.key]: e.target.value })
                        }
                        className={fieldCls}
                      >
                        {optionsOf(f, editing).map((o) => (
                          <option key={o.value} value={o.value}>
                            {o.label}
                          </option>
                        ))}
                      </select>
                    ) : (
                      <input
                        id={`f-${table}-${f.key}`}
                        type={
                          f.type === "number"
                            ? "number"
                            : f.type === "date"
                              ? "date"
                              : f.type === "datetime"
                                ? "datetime-local"
                                : "text"
                        }
                        step={f.step}
                        value={String(editing[f.key] ?? "")}
                        onChange={(e) =>
                          setEditing({ ...editing, [f.key]: e.target.value })
                        }
                        placeholder={f.placeholder}
                        className={fieldCls}
                      />
                    )}
                  </>
                )}
              </div>
            ))}
          </div>
          <div className="mt-6 flex gap-3">
            <button
              type="submit"
              disabled={busy || uploading}
              className={`${btnSm} bg-ink px-5 py-2.5 text-chalk hover:bg-ink-soft disabled:opacity-60`}
            >
              {busy ? "Saving…" : uploading ? "Uploading…" : "Save"}
            </button>
            <button
              type="button"
              onClick={cancelEdit}
              className={`${btnSm} border border-line px-5 py-2.5 text-ink-soft hover:border-ink hover:text-ink`}
            >
              Cancel
            </button>
          </div>
        </form>
      )}

      {/* UX gap — a query across 1,400 rows takes long enough that a list
          which simply does not change looks broken. Skeleton rows the same
          height as real ones, so the page does not jump when they arrive. */}
      {loading && rows.length === 0 ? (
        <div className="border-t border-line" aria-busy="true">
          <span className="sr-only">Loading {table}…</span>
          {Array.from({ length: 6 }).map((_, i) => (
            <div
              key={i}
              aria-hidden
              className="flex items-center gap-x-6 border-b border-line py-3.5"
            >
              <span className="size-12 shrink-0 animate-pulse bg-line/50" />
              <span className="min-w-0 flex-1 basis-56">
                <span className="mb-2 block h-4 w-2/5 animate-pulse bg-line/50" />
                <span className="block h-3 w-3/5 animate-pulse bg-line/35" />
              </span>
            </div>
          ))}
        </div>
      ) : rows.length === 0 ? (
        <div className="border-y border-line px-6 py-14 text-center">
          <p className="font-display text-xl font-bold uppercase tracking-wide">
            {search ? "No rows match that search" : "Nothing here yet"}
          </p>
          {search && (
            <button
              type="button"
              onClick={() => setQuery("")}
              className={`${btnSm} mt-4 border border-ink hover:bg-ink hover:text-chalk`}
            >
              Clear search
            </button>
          )}
        </div>
      ) : (
      <div
        className={`border-t border-line ${loading ? "opacity-50 transition-opacity" : ""}`}
        aria-busy={loading}
      >
        {rows.map((r) => {
          const s = summary(r);
          const imageField = fields.find((f) => f.type === "images");
          const thumb = imageField ? asArray(r[imageField.key])[0] : undefined;
          return (
            <div
              key={String(r.id)}
              className="flex flex-wrap items-center gap-x-6 gap-y-3 border-b border-line py-3.5"
            >
              {imageField &&
                (thumb ? (
                  // eslint-disable-next-line @next/next/no-img-element
                  <img
                    src={productImageUrl(thumb)}
                    alt=""
                    className="size-12 shrink-0 border border-line object-cover"
                  />
                ) : (
                  <span
                    aria-hidden
                    className="grid size-12 shrink-0 place-items-center border border-dashed border-line font-mono text-[9px] uppercase tracking-[0.1em] text-ink-soft"
                  >
                    No img
                  </span>
                ))}
              <div className="min-w-0 flex-1 basis-56">
                <p className="font-display text-lg font-bold uppercase leading-tight tracking-wide">
                  {s.title}
                </p>
                <p className="font-mono text-[10px] uppercase tracking-[0.14em] text-ink-soft">
                  {s.meta}
                </p>
              </div>
              {(s.chips ?? []).map((c) => (
                <span
                  key={c}
                  className="bg-ink px-2 py-1 font-mono text-[9px] font-semibold uppercase tracking-[0.14em] text-chalk"
                >
                  {c}
                </span>
              ))}
              <div className="flex gap-2">
                {quickActions.map((qa) => (
                  <button
                    key={qa.label}
                    type="button"
                    onClick={() => applyQuick(r, qa.patch())}
                    className={`${btnSm} border border-line text-ink-soft hover:border-ink hover:text-ink`}
                  >
                    {qa.label}
                  </button>
                ))}
                <button
                  type="button"
                  onClick={() => openEdit(r)}
                  className={`${btnSm} border border-ink hover:bg-ink hover:text-chalk`}
                >
                  Edit
                </button>
                <button
                  type="button"
                  onClick={() => remove(r)}
                  className={`${btnSm} border border-line text-ink-soft hover:border-ink hover:text-ink`}
                >
                  Delete
                </button>
              </div>
            </div>
          );
        })}
      </div>
      )}

      {/* BE-01 — pages rather than one 1,400-row scroll. Numbered jumps are
          deliberately not offered: with search and sort in the toolbar above,
          "page 19" is never the thing an admin is actually looking for. */}
      {paged && total !== null && total > perPage && (
        <div className="mt-6 flex flex-wrap items-center justify-between gap-4">
          <p className="font-mono text-[11px] uppercase tracking-[0.16em] text-ink-soft">
            {page * perPage + 1}–{Math.min((page + 1) * perPage, total)} of {total}
          </p>
          <div className="flex gap-2">
            <button
              type="button"
              onClick={() => setPage((p) => Math.max(0, p - 1))}
              disabled={page === 0 || loading}
              className={`${btnSm} border border-ink px-4 py-2.5 hover:bg-ink hover:text-chalk disabled:opacity-30 disabled:hover:bg-transparent disabled:hover:text-ink`}
            >
              ← Previous
            </button>
            <span className="flex items-center px-2 font-mono text-[11px] uppercase tracking-[0.16em] text-ink-soft">
              Page {page + 1} / {Math.max(1, Math.ceil(total / perPage))}
            </span>
            <button
              type="button"
              onClick={() => setPage((p) => p + 1)}
              disabled={(page + 1) * perPage >= total || loading}
              className={`${btnSm} border border-ink px-4 py-2.5 hover:bg-ink hover:text-chalk disabled:opacity-30 disabled:hover:bg-transparent disabled:hover:text-ink`}
            >
              Next →
            </button>
          </div>
        </div>
      )}
    </section>
  );
}
