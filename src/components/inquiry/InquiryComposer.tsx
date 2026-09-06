"use client";

import { useId, useRef, useState } from "react";
import {
  ALLOWED_ATTACHMENT_TYPES,
  MAX_ATTACHMENTS,
  attachmentRejectReason,
  formatBytes,
  isImageAttachment,
} from "@/lib/inquiries";
import type { QuickChip } from "@/lib/languages";

/* The one composer both sides type into — the rider's first request, the
   rider's replies and the club's answers. Files are held locally until send:
   attachments are keyed by inquiry id, and the very first message does not
   have one yet. */

const label = "mb-1.5 block font-mono text-[10px] uppercase tracking-[0.22em] text-ink-soft";
const field =
  "w-full border border-line bg-chalk px-3 py-3 text-sm transition-colors duration-200 ease-out placeholder:text-ink-soft/60";

export default function InquiryComposer({
  onSend,
  busy = false,
  placeholder = "Type your message…",
  submitLabel = "Send",
  rows = 4,
  autoFocus = false,
  chips,
  chipsLabel = "Quick questions",
}: {
  /** Resolve true to clear the composer, false to keep what was typed. */
  onSend: (body: string, files: File[]) => Promise<boolean>;
  busy?: boolean;
  placeholder?: string;
  submitLabel?: string;
  rows?: number;
  autoFocus?: boolean;
  /** UI-02 — one-tap questions written into the box. Readonly because the
      copy they come from is declared `as const` in lib/languages. */
  chips?: readonly QuickChip[];
  chipsLabel?: string;
}) {
  const [body, setBody] = useState("");
  const [files, setFiles] = useState<File[]>([]);
  const [rejected, setRejected] = useState<string[]>([]);
  const fileInput = useRef<HTMLInputElement>(null);
  const bodyBox = useRef<HTMLTextAreaElement>(null);
  // A page can hold a thread composer and a request dialog at once.
  const bodyId = useId();

  /* A chip APPENDS rather than replaces, so a rider can stack "what sizes"
     and "how soon" into one message instead of choosing between them. Tapping
     a chip that is already in the box takes it back out again, which is what
     anyone who taps a pressed button expects. */
  function toggleChip(chip: QuickChip) {
    setBody((current) => {
      if (current.includes(chip.text)) {
        return current
          .split("\n")
          .filter((line) => line.trim() !== chip.text)
          .join("\n")
          .replace(/\n{3,}/g, "\n\n")
          .trim();
      }
      return current.trim() ? `${current.trim()}\n${chip.text}` : chip.text;
    });
    bodyBox.current?.focus();
  }

  function addFiles(list: FileList | null) {
    if (!list || list.length === 0) return;
    const room = MAX_ATTACHMENTS - files.length;
    const problems: string[] = [];
    const accepted: File[] = [];

    for (const file of Array.from(list)) {
      if (accepted.length >= room) {
        problems.push(`only ${MAX_ATTACHMENTS} files per message — extras skipped`);
        break;
      }
      const reason = attachmentRejectReason(file);
      if (reason) problems.push(reason);
      else accepted.push(file);
    }
    if (accepted.length > 0) setFiles((prev) => [...prev, ...accepted]);
    setRejected(problems);
  }

  async function submit(e: React.FormEvent) {
    e.preventDefault();
    if (busy) return;
    if (!body.trim() && files.length === 0) return;
    const cleared = await onSend(body, files);
    if (cleared) {
      setBody("");
      setFiles([]);
      setRejected([]);
    }
  }

  const nothingToSend = !body.trim() && files.length === 0;

  return (
    <form onSubmit={submit} className="flex flex-col gap-3">
      {chips && chips.length > 0 && (
        <div>
          <p className={label}>{chipsLabel}</p>
          <div className="flex flex-wrap gap-2">
            {chips.map((chip) => {
              const on = body.includes(chip.text);
              return (
                <button
                  key={chip.id}
                  type="button"
                  aria-pressed={on}
                  onClick={() => toggleChip(chip)}
                  className={`border px-3 py-2 text-left font-mono text-[10px] font-semibold uppercase tracking-[0.12em] transition-colors duration-200 ease-out ${
                    on
                      ? "border-ink bg-ink text-chalk"
                      : "border-line text-ink-soft hover:border-ink hover:text-ink"
                  }`}
                >
                  {on ? "✓ " : "+ "}
                  {chip.label}
                </button>
              );
            })}
          </div>
        </div>
      )}

      <div>
        <label htmlFor={bodyId} className={label}>
          Message
        </label>
        <textarea
          id={bodyId}
          ref={bodyBox}
          rows={rows}
          value={body}
          autoFocus={autoFocus}
          maxLength={5000}
          onChange={(e) => setBody(e.target.value)}
          placeholder={placeholder}
          className={`${field} resize-y`}
        />
      </div>

      {files.length > 0 && (
        <ul className="flex flex-wrap gap-2">
          {files.map((file, i) => (
            <li
              key={`${file.name}-${i}`}
              className="flex items-center gap-2 border border-line bg-chalk px-2.5 py-1.5"
            >
              <span className="font-mono text-[9px] font-semibold uppercase tracking-[0.14em] text-ink">
                {isImageAttachment(file.type) ? "IMG" : "PDF"}
              </span>
              <span className="max-w-[12rem] truncate text-xs">{file.name}</span>
              <span className="font-mono text-[10px] text-ink-soft">
                {formatBytes(file.size)}
              </span>
              <button
                type="button"
                onClick={() => setFiles((prev) => prev.filter((_, j) => j !== i))}
                aria-label={`Remove ${file.name}`}
                className="font-mono text-[11px] text-ink-soft transition-colors duration-200 ease-out hover:text-ink"
              >
                ✕
              </button>
            </li>
          ))}
        </ul>
      )}

      {rejected.length > 0 && (
        <p className="font-mono text-[10px] uppercase tracking-[0.12em] text-ink font-semibold">
          {rejected.join(" · ")}
        </p>
      )}

      <div className="flex flex-wrap items-center gap-3">
        <input
          ref={fileInput}
          type="file"
          multiple
          accept={ALLOWED_ATTACHMENT_TYPES.join(",")}
          onChange={(e) => {
            addFiles(e.target.files);
            e.target.value = "";
          }}
          className="hidden"
        />
        <button
          type="button"
          onClick={() => fileInput.current?.click()}
          disabled={busy || files.length >= MAX_ATTACHMENTS}
          className="border border-line px-4 py-2.5 font-mono text-[10px] font-semibold uppercase tracking-[0.16em] text-ink-soft transition-colors duration-200 ease-out hover:border-ink hover:text-ink disabled:opacity-40"
        >
          + Attach image / PDF
        </button>
        <button
          type="submit"
          disabled={busy || nothingToSend}
          className="bg-ink px-5 py-2.5 font-mono text-[10px] font-semibold uppercase tracking-[0.16em] text-chalk transition-colors duration-200 ease-out hover:bg-ink-soft disabled:opacity-50"
        >
          {busy ? "Sending…" : submitLabel}
        </button>
        <span className="font-mono text-[10px] uppercase tracking-[0.12em] text-ink-soft">
          {files.length}/{MAX_ATTACHMENTS} files · 10MB each
        </span>
      </div>
    </form>
  );
}
