"use client";

import Link from "next/link";
import { useCallback, useEffect, useState } from "react";
import InquiryThread from "@/components/inquiry/InquiryThread";
import { formatThreadTime, hasUnread, type InquiryRow } from "@/lib/inquiries";
import { productImageUrl } from "@/lib/images";
import { getSupabaseBrowser } from "@/lib/supabaseBrowser";
import { useSession } from "@/lib/useSession";
import { brandName } from "@/lib/taxonomy";

/* The rider's side of the inbox. Same thread component the admin uses — only
   the side of the conversation differs. */

export default function MemberInbox() {
  const sb = getSupabaseBrowser();
  const { session, ready } = useSession();
  const [rows, setRows] = useState<InquiryRow[]>([]);
  const [activeId, setActiveId] = useState<string | null>(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  const userId = session?.user.id;

  const load = useCallback(async () => {
    if (!sb || !userId) return;
    const { data, error: err } = await sb
      .from("inquiries")
      .select("*")
      .order("last_message_at", { ascending: false });
    setLoading(false);
    if (err) {
      setError(
        `Could not read your inquiries (${err.message}). Run migration 14 first.`,
      );
      return;
    }
    setError(null);
    // A thread whose opening message never made it is not a conversation.
    setRows(((data as InquiryRow[]) ?? []).filter((r) => r.message_count > 0));
  }, [sb, userId]);

  useEffect(() => {
    // eslint-disable-next-line react-hooks/set-state-in-effect -- loads its own data; state lands in the async callback
    load();
  }, [load]);

  if (!ready) {
    return (
      <p className="px-6 py-24 text-center font-mono text-[11px] uppercase tracking-[0.2em] text-ink-soft">
        Checking session…
      </p>
    );
  }

  if (!sb || !session) {
    return (
      <div className="mx-auto max-w-md px-6 py-20 text-center">
        <p className="headline mb-3 text-4xl">Sign in first.</p>
        <p className="mb-8 font-mono text-xs uppercase tracking-[0.16em] text-ink-soft">
          Your inquiries live with your rider account
        </p>
        <Link
          href="/account?next=%2Finquiries"
          className="bg-accent px-5 py-3 font-mono text-[11px] font-semibold uppercase tracking-[0.18em] text-chalk transition-colors duration-200 ease-out hover:bg-accent-deep"
        >
          Sign in / create an account
        </Link>
      </div>
    );
  }

  /* Derived, not stored: the newest thread is open until one is picked, and
     a thread that disappears from the list cannot leave a dangling id. */
  const active = (activeId ? rows.find((r) => r.id === activeId) : null) ?? rows[0] ?? null;

  return (
    <div className="mx-auto max-w-7xl px-6 py-10">
      {error && (
        <p
          role="alert"
          className="mb-6 border border-accent-deep bg-chalk px-4 py-3 font-mono text-[11px] uppercase tracking-[0.12em] text-accent-deep"
        >
          {error}
        </p>
      )}

      {loading ? (
        <p className="py-20 text-center font-mono text-[11px] uppercase tracking-[0.2em] text-ink-soft">
          Loading your inquiries…
        </p>
      ) : rows.length === 0 ? (
        <div className="border border-line bg-chalk px-6 py-20 text-center">
          <p className="headline mb-3 text-4xl">Nothing asked yet.</p>
          <p className="mb-8 font-mono text-xs uppercase tracking-[0.16em] text-ink-soft">
            Find something on the floor and hit request inquiry
          </p>
          <Link
            href="/shop"
            className="bg-ink px-5 py-3 font-mono text-[11px] font-semibold uppercase tracking-[0.18em] text-chalk transition-colors duration-200 ease-out hover:bg-accent-deep"
          >
            Shop the floor
          </Link>
        </div>
      ) : (
        <div className="grid gap-6 lg:grid-cols-[320px_minmax(0,1fr)]">
          <ul
            className="max-h-[22rem] overflow-y-auto border-t border-line lg:max-h-[40rem]"
            aria-label="Your inquiries"
          >
            {rows.map((r) => {
              const unread = hasUnread(r, "member");
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
                        {brandName(r.product_brand)} ·{" "}
                        {formatThreadTime(r.last_message_at)}
                        {r.status === "closed" ? " · closed" : ""}
                      </span>
                    </span>
                    {unread && (
                      <span
                        aria-label="Unread reply"
                        className="size-2.5 shrink-0 rounded-full bg-accent"
                      />
                    )}
                  </button>
                </li>
              );
            })}
          </ul>

          {active && (
            <div className="flex min-h-[32rem] flex-col">
              <div className="mb-4 flex flex-wrap items-center justify-between gap-3 border-b border-line pb-4">
                <div className="min-w-0">
                  <p className="font-mono text-[10px] uppercase tracking-[0.2em] text-ink-soft">
                    {brandName(active.product_brand)}
                  </p>
                  <p className="truncate font-display text-2xl font-bold uppercase leading-tight tracking-wide">
                    {active.product_name}
                  </p>
                </div>
                <span className="font-mono text-[10px] uppercase tracking-[0.16em] text-ink-soft">
                  {active.status === "closed" ? "Closed" : "Open"}
                </span>
              </div>
              <InquiryThread
                key={active.id}
                sb={sb}
                inquiry={active}
                role="member"
                senderId={session.user.id}
                accessToken={session.access_token}
                onActivity={load}
              />
            </div>
          )}
        </div>
      )}
    </div>
  );
}
