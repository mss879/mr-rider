"use client";

import { useCallback, useEffect, useMemo, useState } from "react";
import type { Session, SupabaseClient } from "@supabase/supabase-js";
import InquiryThread from "@/components/inquiry/InquiryThread";
import { formatThreadTime, hasUnread, type InquiryRow } from "@/lib/inquiries";
import { productImageUrl } from "@/lib/images";
import { brandName, subcategoryName } from "@/lib/taxonomy";

/* The club's side of the inbox. One thread per product a rider asked about —
   read it, answer it, attach the quote, close it when it is done. */

type Filter = "needs-reply" | "open" | "all";

const FILTERS: { id: Filter; label: string }[] = [
  { id: "needs-reply", label: "Needs reply" },
  { id: "open", label: "Open" },
  { id: "all", label: "All" },
];

const btnSm =
  "px-3 py-1.5 font-mono text-[10px] font-semibold uppercase tracking-[0.14em] transition-colors duration-200 ease-out";

export default function AdminInquiries({
  sb,
  session,
  onChanged,
}: {
  sb: SupabaseClient;
  session: Session;
  /** Lets the panel refresh the unread count on its tab. */
  onChanged?: () => void;
}) {
  const [rows, setRows] = useState<InquiryRow[]>([]);
  const [activeId, setActiveId] = useState<string | null>(null);
  const [filter, setFilter] = useState<Filter>("needs-reply");
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  const load = useCallback(async () => {
    const { data, error: err } = await sb
      .from("inquiries")
      .select("*")
      .order("last_message_at", { ascending: false })
      .limit(500);
    setLoading(false);
    if (err) {
      setError(`Could not read inquiries (${err.message}). Run migration 14 first.`);
      return;
    }
    setError(null);
    // A thread whose opening message never made it is not a conversation.
    setRows(((data as InquiryRow[]) ?? []).filter((r) => r.message_count > 0));
    onChanged?.();
  }, [sb, onChanged]);

  useEffect(() => {
    // eslint-disable-next-line react-hooks/set-state-in-effect -- loads its own data; state lands in the async callback
    load();
  }, [load]);

  const visible = useMemo(() => {
    if (filter === "all") return rows;
    if (filter === "open") return rows.filter((r) => r.status === "open");
    return rows.filter((r) => hasUnread(r, "admin"));
  }, [rows, filter]);

  const needsReply = rows.filter((r) => hasUnread(r, "admin")).length;

  /* Looked up in `rows`, never in `visible`, and NEVER auto-selected.
     Opening a thread marks it read, which drops it out of the Needs-reply
     filter — auto-selecting the top of that list would then promote the
     next one, mark it read too, and walk the whole queue to empty without
     the admin reading a word. */
  const active = activeId ? (rows.find((r) => r.id === activeId) ?? null) : null;

  async function setStatus(id: string, status: InquiryRow["status"]) {
    const previous = rows;
    setRows((rs) => rs.map((r) => (r.id === id ? { ...r, status } : r)));
    const { error: err } = await sb.from("inquiries").update({ status }).eq("id", id);
    if (err) {
      setRows(previous);
      setError(`Could not update that thread: ${err.message}`);
      return;
    }
    onChanged?.();
  }

  return (
    <section className="mb-14">
      <div className="mb-5 flex flex-wrap items-end justify-between gap-4">
        <div>
          <h2 className="headline text-3xl">Inquiry inbox.</h2>
          <p className="mt-1 font-mono text-[11px] uppercase tracking-[0.18em] text-ink-soft">
            {rows.length} threads · {needsReply} waiting on you
          </p>
        </div>
        <div className="flex flex-wrap gap-2">
          {FILTERS.map((f) => (
            <button
              key={f.id}
              type="button"
              onClick={() => setFilter(f.id)}
              className={`${btnSm} ${
                filter === f.id
                  ? "bg-ink text-chalk"
                  : "border border-line text-ink-soft hover:border-ink hover:text-ink"
              }`}
            >
              {f.label}
              {f.id === "needs-reply" && needsReply > 0 ? ` (${needsReply})` : ""}
            </button>
          ))}
          <button
            type="button"
            onClick={load}
            className={`${btnSm} border border-ink hover:bg-ink hover:text-chalk`}
          >
            Refresh
          </button>
        </div>
      </div>

      {error && (
        <p
          role="alert"
          className="mb-5 border border-accent-deep bg-chalk px-4 py-3 font-mono text-[11px] uppercase tracking-[0.12em] text-accent-deep"
        >
          {error}
        </p>
      )}

      {loading ? (
        <p className="py-20 text-center font-mono text-[11px] uppercase tracking-[0.2em] text-ink-soft">
          Loading the inbox…
        </p>
      ) : visible.length === 0 ? (
        <p className="border border-line bg-chalk px-6 py-16 text-center font-mono text-[11px] uppercase tracking-[0.16em] text-ink-soft">
          {filter === "needs-reply"
            ? "Nothing waiting on you — every rider has been answered"
            : "No inquiries yet"}
        </p>
      ) : (
        <div className="grid gap-6 lg:grid-cols-[340px_minmax(0,1fr)]">
          <ul className="max-h-[40rem] overflow-y-auto border-t border-line" aria-label="Inquiry threads">
            {visible.map((r) => {
              const unread = hasUnread(r, "admin");
              const thumb = productImageUrl(r.product_image);
              return (
                <li key={r.id}>
                  <button
                    type="button"
                    onClick={() => setActiveId(r.id)}
                    className={`flex w-full items-center gap-3 border-b border-line px-2 py-3 text-left transition-colors duration-200 ease-out hover:bg-chalk ${
                      r.id === activeId ? "bg-chalk" : ""
                    }`}
                  >
                    {thumb ? (
                      // eslint-disable-next-line @next/next/no-img-element
                      <img
                        src={thumb}
                        alt=""
                        className="size-11 shrink-0 border border-line object-cover"
                      />
                    ) : (
                      <span
                        aria-hidden
                        className="hatch-light size-11 shrink-0 border border-line"
                      />
                    )}
                    <span className="min-w-0 flex-1">
                      <span className="block truncate font-display text-base font-bold uppercase leading-tight tracking-wide">
                        {r.product_name}
                      </span>
                      <span className="block truncate font-mono text-[10px] uppercase tracking-[0.14em] text-ink-soft">
                        {r.member_name || r.member_email} ·{" "}
                        {formatThreadTime(r.last_message_at)}
                        {r.status === "closed" ? " · closed" : ""}
                      </span>
                    </span>
                    {unread && (
                      <span
                        aria-label="Waiting on a reply"
                        className="size-2.5 shrink-0 rounded-full bg-accent"
                      />
                    )}
                  </button>
                </li>
              );
            })}
          </ul>

          {!active && (
            <div className="grid min-h-[20rem] place-items-center border border-line bg-chalk px-6 text-center">
              <p className="font-mono text-[11px] uppercase tracking-[0.16em] text-ink-soft">
                Pick a thread to read it — opening one marks it answered
              </p>
            </div>
          )}

          {active && (
            <div className="flex min-h-[36rem] flex-col">
              <div className="mb-4 flex flex-wrap items-start justify-between gap-3 border-b border-line pb-4">
                <div className="min-w-0">
                  <p className="font-mono text-[10px] uppercase tracking-[0.2em] text-ink-soft">
                    {brandName(active.product_brand)}
                    {active.product_subcategory
                      ? ` · ${subcategoryName(active.product_subcategory)}`
                      : ""}
                  </p>
                  <p className="truncate font-display text-2xl font-bold uppercase leading-tight tracking-wide">
                    {active.product_name}
                  </p>
                  <p className="mt-1 font-mono text-[10px] uppercase tracking-[0.14em] text-ink-soft">
                    {active.member_name || "Rider"} ·{" "}
                    <a
                      href={`mailto:${active.member_email}`}
                      className="underline underline-offset-4 hover:text-accent-deep"
                    >
                      {active.member_email}
                    </a>{" "}
                    · asked {formatThreadTime(active.created_at)}
                  </p>
                </div>
                <button
                  type="button"
                  onClick={() =>
                    setStatus(active.id, active.status === "open" ? "closed" : "open")
                  }
                  className={`${btnSm} border ${
                    active.status === "open"
                      ? "border-line text-ink-soft hover:border-ink hover:text-ink"
                      : "border-ink hover:bg-ink hover:text-chalk"
                  }`}
                >
                  {active.status === "open" ? "Close thread" : "Reopen"}
                </button>
              </div>
              <InquiryThread
                key={active.id}
                sb={sb}
                inquiry={active}
                role="admin"
                senderId={session.user.id}
                accessToken={session.access_token}
                onActivity={load}
              />
            </div>
          )}
        </div>
      )}
    </section>
  );
}
