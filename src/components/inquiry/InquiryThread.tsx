"use client";

import { useCallback, useEffect, useRef, useState } from "react";
import type { SupabaseClient } from "@supabase/supabase-js";
import InquiryComposer from "@/components/inquiry/InquiryComposer";
import {
  formatThreadTime,
  formatBytes,
  isImageAttachment,
  sendInquiryMessage,
  signAttachments,
  type InquiryMessageRow,
  type InquiryRole,
  type InquiryRow,
} from "@/lib/inquiries";

/* The conversation itself. Both sides render this component — only the side
   you are on changes which bubbles sit right. Messages arrive over Realtime
   when the publication is on, and a slow poll covers the case where it is not. */

const POLL_MS = 20_000;

export default function InquiryThread({
  sb,
  inquiry,
  role,
  senderId,
  accessToken,
  onActivity,
}: {
  sb: SupabaseClient;
  inquiry: InquiryRow;
  role: InquiryRole;
  senderId: string;
  accessToken?: string;
  /** Fires whenever the thread changes so a parent inbox can restack. */
  onActivity?: () => void;
}) {
  const [messages, setMessages] = useState<InquiryMessageRow[]>([]);
  const [fileUrls, setFileUrls] = useState<Map<string, string>>(new Map());
  const [loading, setLoading] = useState(true);
  const [sending, setSending] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const bottom = useRef<HTMLDivElement>(null);

  /* Held in a ref so a caller passing an inline arrow cannot make the
     Realtime subscription tear down and rebuild on every render. */
  const activity = useRef(onActivity);
  useEffect(() => {
    activity.current = onActivity;
  });

  const inquiryId = inquiry.id;

  /* The poll, the send and the mount effect all call load(). Responses can
     land out of order on a slow connection, and a stale one arriving last
     would wipe a message the rider just watched appear — so each request
     takes a ticket and only the newest one is allowed to paint. */
  const latestLoad = useRef(0);
  /** Attachment paths already signed into fileUrls. */
  const signedPaths = useRef<Set<string>>(new Set());

  /* ---------- loading ---------- */

  const load = useCallback(async () => {
    const ticket = ++latestLoad.current;
    const { data, error: err } = await sb
      .from("inquiry_messages")
      .select("*")
      .eq("inquiry_id", inquiryId)
      .order("created_at", { ascending: true });

    if (ticket !== latestLoad.current) return;

    if (err) {
      setError(err.message);
      setLoading(false);
      return;
    }
    const rows = (data as InquiryMessageRow[]) ?? [];
    setMessages(rows);
    setError(null);
    setLoading(false);

    /* Sign only what is not already signed. Re-signing the whole thread on
       every poll hands every <img> a new token in its src, which makes the
       browser re-download every photo in the thread. */
    const known = signedPaths.current;
    const fresh = rows
      .flatMap((m) => (m.attachments ?? []).map((a) => a.path))
      .filter((path) => !known.has(path));
    if (fresh.length === 0) return;

    for (const path of fresh) known.add(path);
    const signed = await signAttachments(sb, fresh);
    if (ticket !== latestLoad.current) return;
    setFileUrls((prev) => new Map([...prev, ...signed]));
  }, [sb, inquiryId]);

  // Both inboxes mount this with key={inquiry.id}, so switching threads gets
  // a fresh component rather than a stale one being reset here.
  useEffect(() => {
    // eslint-disable-next-line react-hooks/set-state-in-effect -- loads its own data; state lands in the async callback
    load();
  }, [load]);

  /* Everything up to now has been seen by this side. */
  useEffect(() => {
    sb.rpc("mark_inquiry_read", { p_inquiry: inquiryId }).then(() => {
      activity.current?.();
    });
  }, [sb, inquiryId, messages.length]);

  /* ---------- live updates ---------- */

  useEffect(() => {
    const channel = sb
      .channel(`inquiry:${inquiryId}`)
      .on(
        "postgres_changes",
        {
          event: "INSERT",
          schema: "public",
          table: "inquiry_messages",
          filter: `inquiry_id=eq.${inquiryId}`,
        },
        (payload) => {
          const row = payload.new as InquiryMessageRow;
          setMessages((prev) =>
            prev.some((m) => m.id === row.id) ? prev : [...prev, row],
          );
          const paths = (row.attachments ?? [])
            .map((a) => a.path)
            .filter((path) => !signedPaths.current.has(path));
          if (paths.length > 0) {
            for (const path of paths) signedPaths.current.add(path);
            signAttachments(sb, paths).then((signed) =>
              setFileUrls((prev) => new Map([...prev, ...signed])),
            );
          }
          activity.current?.();
        },
      )
      .subscribe();

    return () => {
      sb.removeChannel(channel);
    };
  }, [sb, inquiryId]);

  useEffect(() => {
    const timer = setInterval(load, POLL_MS);
    return () => clearInterval(timer);
  }, [load]);

  useEffect(() => {
    bottom.current?.scrollIntoView({ block: "end" });
  }, [messages.length]);

  /* ---------- sending ---------- */

  async function send(body: string, files: File[]): Promise<boolean> {
    setSending(true);
    setError(null);
    const res = await sendInquiryMessage(sb, {
      inquiryId,
      senderId,
      role,
      body,
      files,
      accessToken,
    });
    if (res.error) {
      setSending(false);
      setError(res.error);
      return false;
    }
    if (res.warnings.length > 0) setError(res.warnings.join(" · "));
    await load();
    // Held until the thread has actually repainted — otherwise the Send
    // button goes live again with the text still in the box, and an
    // impatient second click posts the message twice.
    setSending(false);
    activity.current?.();
    return true;
  }

  /* ---------- render ---------- */

  return (
    <div className="flex min-h-0 flex-1 flex-col">
      <div className="min-h-0 flex-1 overflow-y-auto border border-line bg-paper-2 p-4">
        {loading ? (
          <p className="py-10 text-center font-mono text-[11px] uppercase tracking-[0.2em] text-ink-soft">
            Loading the thread…
          </p>
        ) : messages.length === 0 ? (
          <p className="py-10 text-center font-mono text-[11px] uppercase tracking-[0.16em] text-ink-soft">
            No messages yet
          </p>
        ) : (
          <ul className="flex flex-col gap-3">
            {messages.map((m) => {
              const mine = m.sender_role === role;
              return (
                <li
                  key={m.id}
                  className={`flex flex-col ${mine ? "items-end" : "items-start"}`}
                >
                  <div
                    className={`max-w-[85%] border p-3 ${
                      mine
                        ? "border-ink bg-ink text-chalk"
                        : "border-line bg-chalk text-ink"
                    }`}
                  >
                    <p
                      className={`mb-1.5 font-mono text-[9px] uppercase tracking-[0.18em] ${
                        mine ? "text-chalk/60" : "text-ink-soft"
                      }`}
                    >
                      {m.sender_role === "admin" ? "MR.RIDER" : "Rider"} ·{" "}
                      {formatThreadTime(m.created_at)}
                    </p>
                    {m.body && (
                      <p className="whitespace-pre-wrap break-words text-sm leading-relaxed">
                        {m.body}
                      </p>
                    )}
                    {(m.attachments ?? []).length > 0 && (
                      <ul className="mt-2.5 flex flex-wrap gap-2">
                        {m.attachments.map((a) => {
                          const url = fileUrls.get(a.path);
                          const image = isImageAttachment(a.mime);
                          if (image && url) {
                            return (
                              <li key={a.path}>
                                <a
                                  href={url}
                                  target="_blank"
                                  rel="noreferrer"
                                  className="block border border-line bg-chalk p-1"
                                >
                                  {/* Signed Storage URLs are short-lived and
                                      carry a query string, so next/image is
                                      the wrong tool here. */}
                                  {/* eslint-disable-next-line @next/next/no-img-element */}
                                  <img
                                    src={url}
                                    alt={a.name}
                                    className="size-28 object-cover"
                                  />
                                </a>
                              </li>
                            );
                          }
                          return (
                            <li key={a.path}>
                              <a
                                href={url ?? "#"}
                                target="_blank"
                                rel="noreferrer"
                                aria-disabled={!url}
                                className={`flex items-center gap-2 border px-2.5 py-1.5 ${
                                  mine
                                    ? "border-chalk/30 hover:border-chalk"
                                    : "border-line hover:border-ink"
                                } ${url ? "" : "pointer-events-none opacity-50"}`}
                              >
                                <span className="font-mono text-[9px] font-semibold uppercase tracking-[0.14em] text-accent">
                                  {image ? "IMG" : "PDF"}
                                </span>
                                <span className="max-w-[12rem] truncate text-xs">
                                  {a.name}
                                </span>
                                <span
                                  className={`font-mono text-[10px] ${mine ? "text-chalk/50" : "text-ink-soft"}`}
                                >
                                  {formatBytes(a.size)}
                                </span>
                              </a>
                            </li>
                          );
                        })}
                      </ul>
                    )}
                  </div>
                </li>
              );
            })}
          </ul>
        )}
        <div ref={bottom} />
      </div>

      {error && (
        <p
          role="alert"
          className="mt-3 border border-accent-deep bg-chalk px-4 py-3 font-mono text-[11px] uppercase tracking-[0.12em] text-accent-deep"
        >
          {error}
        </p>
      )}

      <div className="mt-4">
        <InquiryComposer
          onSend={send}
          busy={sending}
          rows={3}
          submitLabel="Send reply"
          placeholder={
            role === "admin"
              ? "Answer the rider — attach a quote, spec sheet or photos…"
              : "Add to your inquiry…"
          }
        />
      </div>
    </div>
  );
}
