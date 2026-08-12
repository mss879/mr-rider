/* Product inquiries — the floor carries no prices, so every product carries a
   REQUEST INQUIRY button instead. One thread per request, answered by the club
   admin from /admin → Inquiry Inbox. Schema lives in
   supabase/migrations/14_product_inquiries.sql. */

import type { SupabaseClient } from "@supabase/supabase-js";

export const INQUIRY_BUCKET = "inquiry-files";
export const MAX_ATTACHMENTS = 5;
export const MAX_ATTACHMENT_BYTES = 10 * 1024 * 1024; // keep in step with the bucket limit
export const ATTACHMENT_URL_TTL = 60 * 60; // signed-URL lifetime, seconds

export const ALLOWED_ATTACHMENT_TYPES = [
  "image/jpeg",
  "image/png",
  "image/webp",
  "image/avif",
  "image/gif",
  "application/pdf",
];

export type InquiryRole = "member" | "admin";
export type InquiryStatus = "open" | "closed";

/** One stored file on a message — a bucket object path plus what it was. */
export type InquiryAttachment = {
  path: string;
  name: string;
  mime: string;
  size: number;
};

/* Rows exactly as the tables return them — the chat reads them straight, with
   no mapping layer to drift out of step with the migration. */

export type InquiryRow = {
  id: string;
  user_id: string;
  member_name: string;
  member_email: string;
  product_id: string;
  product_name: string;
  product_brand: string;
  product_category: string;
  product_subcategory: string;
  product_image: string;
  status: InquiryStatus;
  created_at: string;
  last_message_at: string;
  last_sender_role: InquiryRole;
  message_count: number;
  admin_read_at: string | null;
  member_read_at: string | null;
};

export type InquiryMessageRow = {
  id: number;
  inquiry_id: string;
  sender_id: string | null;
  sender_role: InquiryRole;
  body: string;
  attachments: InquiryAttachment[];
  created_at: string;
};

/* ---------- attachments ---------- */

export const isImageAttachment = (mime: string) => mime.startsWith("image/");

/** Human-readable reason a file cannot be attached, or null when it is fine. */
export function attachmentRejectReason(file: File): string | null {
  if (!ALLOWED_ATTACHMENT_TYPES.includes(file.type)) {
    return `${file.name}: images and PDFs only`;
  }
  if (file.size > MAX_ATTACHMENT_BYTES) {
    return `${file.name}: over the ${Math.round(MAX_ATTACHMENT_BYTES / 1024 / 1024)}MB limit`;
  }
  return null;
}

/** Bucket object path for an upload. The first folder IS the inquiry id —
    the storage policies read it back out to decide who may open the file. */
export function newAttachmentPath(inquiryId: string, file: File): string {
  const ext = (file.name.split(".").pop() ?? "bin").toLowerCase().replace(/[^a-z0-9]/g, "");
  const id =
    typeof crypto !== "undefined" && "randomUUID" in crypto
      ? crypto.randomUUID()
      : `${Date.now()}-${Math.random().toString(36).slice(2)}`;
  return `${inquiryId}/${id}.${ext || "bin"}`;
}

export function formatBytes(bytes: number): string {
  if (bytes < 1024) return `${bytes} B`;
  if (bytes < 1024 * 1024) return `${Math.round(bytes / 1024)} KB`;
  return `${(bytes / 1024 / 1024).toFixed(1)} MB`;
}

/** The bucket is private, so every attachment needs a short-lived signed URL.
    Returns path → URL; anything that fails to sign is simply left out. */
export async function signAttachments(
  sb: SupabaseClient,
  paths: string[],
): Promise<Map<string, string>> {
  const urls = new Map<string, string>();
  if (paths.length === 0) return urls;
  const { data, error } = await sb.storage
    .from(INQUIRY_BUCKET)
    .createSignedUrls(paths, ATTACHMENT_URL_TTL);
  if (error || !data) return urls;
  // createSignedUrls reports failures per item, not on the response.
  for (const row of data) {
    if (row.path && row.signedUrl && !row.error) urls.set(row.path, row.signedUrl);
  }
  return urls;
}

/* ---------- writing to a thread ---------- */

/** Files land in Storage first so the message row carries real paths. Anything
    that will not upload is reported back rather than silently dropped. */
export async function uploadAttachments(
  sb: SupabaseClient,
  inquiryId: string,
  files: File[],
): Promise<{ attachments: InquiryAttachment[]; errors: string[] }> {
  const attachments: InquiryAttachment[] = [];
  const errors: string[] = [];

  for (const file of files.slice(0, MAX_ATTACHMENTS)) {
    const reason = attachmentRejectReason(file);
    if (reason) {
      errors.push(reason);
      continue;
    }
    const path = newAttachmentPath(inquiryId, file);
    const { error } = await sb.storage
      .from(INQUIRY_BUCKET)
      .upload(path, file, { contentType: file.type, upsert: false });
    if (error) {
      errors.push(`${file.name}: ${error.message}`);
      continue;
    }
    attachments.push({
      path,
      name: file.name.slice(0, 200),
      mime: file.type,
      size: file.size,
    });
  }
  return { attachments, errors };
}

/** Post to a thread: upload the files, write the message, then ask the notify
    route to email the other side. Returns the new message id on success. */
export async function sendInquiryMessage(
  sb: SupabaseClient,
  opts: {
    inquiryId: string;
    senderId: string;
    role: InquiryRole;
    body: string;
    files?: File[];
    accessToken?: string;
  },
): Promise<{ messageId: number | null; error: string | null; warnings: string[] }> {
  const body = opts.body.trim().slice(0, 5000);
  const { attachments, errors } = opts.files?.length
    ? await uploadAttachments(sb, opts.inquiryId, opts.files)
    : { attachments: [], errors: [] };

  if (!body && attachments.length === 0) {
    return {
      messageId: null,
      error: errors[0] ?? "Write a message or attach a file",
      warnings: errors,
    };
  }

  const { data, error } = await sb
    .from("inquiry_messages")
    .insert({
      inquiry_id: opts.inquiryId,
      sender_id: opts.senderId,
      sender_role: opts.role,
      body,
      attachments,
    })
    .select("id")
    .single();

  if (error || !data) {
    // The files are already in the bucket but no row will ever point at
    // them. Take them back out, so a retry does not leave a copy behind
    // every time it fails.
    if (attachments.length > 0) {
      await sb.storage
        .from(INQUIRY_BUCKET)
        .remove(attachments.map((a) => a.path))
        .catch(() => undefined);
    }
    return {
      messageId: null,
      error: error?.message ?? "Could not send that message",
      warnings: errors,
    };
  }

  const messageId = (data as { id: number }).id;
  if (opts.accessToken) {
    void notifyInquiry(opts.accessToken, opts.inquiryId, messageId);
  }
  return { messageId, error: null, warnings: errors };
}

/* ---------- unread bookkeeping ---------- */

/** The columns unread status is decided from — a list view can select just these. */
export type InquiryReadState = Pick<
  InquiryRow,
  "last_message_at" | "last_sender_role" | "admin_read_at" | "member_read_at"
>;

/** True when the other side has spoken since this side last looked. */
export function hasUnread(row: InquiryReadState, role: InquiryRole): boolean {
  if (row.last_sender_role === role) return false;
  const seen = role === "admin" ? row.admin_read_at : row.member_read_at;
  return !seen || new Date(row.last_message_at) > new Date(seen);
}

/* ---------- email alerts ---------- */

/** Ping the notify route so the other side gets an email. Best-effort: the
    thread is already saved, so a failure here is never surfaced as an error. */
export async function notifyInquiry(
  accessToken: string,
  inquiryId: string,
  messageId: number,
): Promise<void> {
  try {
    await fetch("/api/inquiries/notify", {
      method: "POST",
      headers: {
        "content-type": "application/json",
        authorization: `Bearer ${accessToken}`,
      },
      body: JSON.stringify({ inquiryId, messageId }),
    });
  } catch {
    // Offline or blocked — the message itself is safely in the thread.
  }
}

/* ---------- formatting ---------- */

export function formatThreadTime(iso: string): string {
  const d = new Date(iso);
  const today = new Date();
  const sameDay =
    d.getDate() === today.getDate() &&
    d.getMonth() === today.getMonth() &&
    d.getFullYear() === today.getFullYear();
  const time = d.toLocaleTimeString("en-GB", { hour: "2-digit", minute: "2-digit" });
  if (sameDay) return time;
  return `${d.toLocaleDateString("en-GB", { day: "2-digit", month: "short" }).toUpperCase()} ${time}`;
}
