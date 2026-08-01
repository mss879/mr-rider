"use client";

import { useCallback, useEffect, useState } from "react";
import type { SupabaseClient } from "@supabase/supabase-js";

export type RowData = Record<string, unknown>;

export type FieldDef = {
  key: string;
  label: string;
  type: "text" | "number" | "select" | "checkbox" | "date" | "datetime" | "textarea";
  options?: { value: string; label: string }[];
  required?: boolean;
  placeholder?: string;
  step?: string;
};

const fieldCls =
  "w-full border border-line bg-chalk px-3 py-2.5 text-sm placeholder:text-ink-soft/60";
const labelCls =
  "mb-1 block font-mono text-[10px] uppercase tracking-[0.2em] text-ink-soft";
const errCls =
  "border border-accent-deep bg-chalk px-4 py-3 font-mono text-[11px] uppercase tracking-[0.12em] text-accent-deep";
const btnSm =
  "px-3 py-1.5 font-mono text-[10px] font-semibold uppercase tracking-[0.14em] transition-colors duration-200 ease-out";

function toLocalInput(iso: string): string {
  const d = new Date(iso);
  const pad = (n: number) => String(n).padStart(2, "0");
  return `${d.getFullYear()}-${pad(d.getMonth() + 1)}-${pad(d.getDate())}T${pad(d.getHours())}:${pad(d.getMinutes())}`;
}

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
}) {
  const [rows, setRows] = useState<RowData[]>([]);
  const [editing, setEditing] = useState<RowData | null>(null);
  const [isNew, setIsNew] = useState(false);
  const [busy, setBusy] = useState(false);
  const [error, setError] = useState<string | null>(null);

  const load = useCallback(async () => {
    const { data, error: err } = await sb.from(table).select("*").order(orderBy);
    if (err) setError(`${table}: ${err.message}`);
    else setRows((data as RowData[]) ?? []);
  }, [sb, table, orderBy]);

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
    setEditing(v);
    setIsNew(false);
    setError(null);
  }

  async function save(e: React.FormEvent) {
    e.preventDefault();
    if (!editing) return;
    const payload: RowData = { id: editing.id };
    for (const f of fields) {
      let v = editing[f.key];
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
    setEditing(null);
    load();
  }

  async function remove(r: RowData) {
    if (!window.confirm(`Delete “${summary(r).title}”? This cannot be undone.`))
      return;
    const { error: err } = await sb
      .from(table)
      .delete()
      .eq("id", r.id as string);
    if (err) setError(err.message);
    else load();
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
            {rows.length} rows{blurb ? ` · ${blurb}` : ""}
          </p>
        </div>
        <button
          type="button"
          onClick={() => {
            setEditing(newRow());
            setIsNew(true);
            setError(null);
          }}
          className={`${btnSm} bg-accent px-4 py-2.5 text-chalk hover:bg-accent-deep`}
        >
          + Add new
        </button>
      </div>

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
            {fields.map((f) => (
              <div
                key={f.key}
                className={f.type === "textarea" ? "sm:col-span-2 lg:col-span-3" : ""}
              >
                {f.type === "checkbox" ? (
                  <label className="flex cursor-pointer items-center gap-2.5 pt-6 text-sm">
                    <input
                      type="checkbox"
                      checked={Boolean(editing[f.key])}
                      onChange={(e) =>
                        setEditing({ ...editing, [f.key]: e.target.checked })
                      }
                      className="size-4 accent-accent"
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
                        value={String(editing[f.key] ?? "")}
                        onChange={(e) =>
                          setEditing({ ...editing, [f.key]: e.target.value })
                        }
                        className={fieldCls}
                      >
                        {(f.options ?? []).map((o) => (
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
              disabled={busy}
              className={`${btnSm} bg-ink px-5 py-2.5 text-chalk hover:bg-accent-deep disabled:opacity-60`}
            >
              {busy ? "Saving…" : "Save"}
            </button>
            <button
              type="button"
              onClick={() => setEditing(null)}
              className={`${btnSm} border border-line px-5 py-2.5 text-ink-soft hover:border-ink hover:text-ink`}
            >
              Cancel
            </button>
          </div>
        </form>
      )}

      <div className="border-t border-line">
        {rows.map((r) => {
          const s = summary(r);
          return (
            <div
              key={String(r.id)}
              className="flex flex-wrap items-center gap-x-6 gap-y-3 border-b border-line py-3.5"
            >
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
                  className={`${btnSm} border border-line text-ink-soft hover:border-accent-deep hover:text-accent-deep`}
                >
                  Delete
                </button>
              </div>
            </div>
          );
        })}
      </div>
    </section>
  );
}
