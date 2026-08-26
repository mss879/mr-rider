import { createClient } from "@supabase/supabase-js";
import { escapeHtml, resendConfigured, sendEmail } from "@/lib/resend";
import { adminEmailFor, copyFor } from "@/lib/languages";
import type { InquiryMessageRow, InquiryRow } from "@/lib/inquiries";

/* Email alerts for the inquiry inbox.
 *
 * The admin will not be watching /admin all day and a rider will not be
 * sitting on /inquiries, so each new message pings the other side by email.
 *
 * This is a public HTTP endpoint — the bearer token IS the security boundary.
 * The caller's own Supabase JWT is used to re-read the message under row-level
 * security, so nobody can trigger a mail about a thread they cannot see, and
 * the email is built from what the database says rather than from the request
 * body. Sending is then claimed atomically in the database, so replaying the
 * same message id cannot turn this route into a mail cannon. The thread is
 * already saved by the time we get here: if anything below fails, the
 * notification is skipped, never the message.
 */

const FRESH_WINDOW_MS = 5 * 60 * 1000;

function bearer(request: Request): string | null {
  const header = request.headers.get("authorization") ?? "";
  const [scheme, token] = header.split(" ");
  return scheme?.toLowerCase() === "bearer" && token ? token : null;
}

/** Configured origin only. request.url resolves to the server's own bind
    address when self-hosting, and to a caller-supplied Host header behind
    some adapters — neither belongs in a link the club emails out. */
function siteUrl(): string {
  return (process.env.NEXT_PUBLIC_SITE_URL ?? "").replace(/\/$/, "");
}

export async function POST(request: Request) {
  const token = bearer(request);
  if (!token) return Response.json({ ok: false }, { status: 401 });

  const payload = (await request.json().catch(() => null)) as {
    inquiryId?: unknown;
    messageId?: unknown;
  } | null;

  const inquiryId = typeof payload?.inquiryId === "string" ? payload.inquiryId : null;
  const messageId =
    typeof payload?.messageId === "number" ? payload.messageId : null;
  if (!inquiryId || messageId == null) {
    return Response.json({ ok: false }, { status: 400 });
  }

  const url = process.env.NEXT_PUBLIC_SUPABASE_URL;
  const key = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY;
  if (!url || !key) return Response.json({ ok: false }, { status: 503 });

  // Bound to the caller's token, so every read below is their read.
  const sb = createClient(url, key, {
    auth: { persistSession: false, autoRefreshToken: false },
    global: { headers: { Authorization: `Bearer ${token}` } },
  });

  const { data: auth, error: authError } = await sb.auth.getUser(token);
  if (authError || !auth.user) return Response.json({ ok: false }, { status: 401 });

  const { data: messageRow } = await sb
    .from("inquiry_messages")
    .select("*")
    .eq("id", messageId)
    .eq("inquiry_id", inquiryId)
    .maybeSingle();
  const message = messageRow as InquiryMessageRow | null;
  if (!message) return Response.json({ ok: false }, { status: 404 });

  // You may only announce your own message, and only while it is fresh —
  // otherwise this endpoint becomes a way to re-send old mail on demand.
  if (message.sender_id !== auth.user.id) {
    return Response.json({ ok: false }, { status: 403 });
  }
  if (Date.now() - new Date(message.created_at).getTime() > FRESH_WINDOW_MS) {
    return Response.json({ ok: true, skipped: "stale" });
  }

  const { data: inquiryRow } = await sb
    .from("inquiries")
    .select("*")
    .eq("id", inquiryId)
    .maybeSingle();
  const inquiry = inquiryRow as InquiryRow | null;
  if (!inquiry) return Response.json({ ok: false }, { status: 404 });

  if (!resendConfigured()) {
    return Response.json({ ok: true, skipped: "resend-not-configured" });
  }

  const fromMember = message.sender_role === "member";
  /* Sinhala threads and English threads can go to different people — the club
     asked for Sinhala to reach Don. Which mailbox that is comes from the
     environment (see lib/languages.ts), so the split can be set without a
     deploy, and falls back to the single INQUIRY_ADMIN_EMAIL until it is. */
  const language = inquiry.language ?? "en";
  const to = fromMember ? adminEmailFor(language) : inquiry.member_email;
  if (!to) return Response.json({ ok: true, skipped: "no-recipient" });

  // Claim the send. Exactly one caller wins per message, so a replayed
  // request costs a database round-trip and nothing else.
  const { data: claimed, error: claimError } = await sb.rpc(
    "claim_message_notification",
    { p_message: messageId },
  );
  if (claimError) return Response.json({ ok: true, skipped: "claim-failed" });
  if (claimed !== true) return Response.json({ ok: true, skipped: "already-notified" });

  const base = siteUrl();
  const link = base ? `${base}${fromMember ? "/admin" : "/inquiries"}` : "";
  const who = fromMember ? inquiry.member_name || inquiry.member_email : "MR.RIDER";
  const files = (message.attachments ?? []).length;
  const attachmentLine =
    files > 0 ? `${files} attachment${files === 1 ? "" : "s"} in the thread.` : "";

  const languageTag = language === "si" ? "[SINHALA] " : "";
  const subject = fromMember
    ? `${languageTag}New inquiry — ${inquiry.product_name}`
    : `MR.RIDER replied about ${inquiry.product_name}`;

  const intro = fromMember
    ? `${who} asked about ${inquiry.product_name}.`
    : `The club replied to your inquiry about ${inquiry.product_name}.`;

  const text = [
    intro,
    "",
    message.body || "(no message — see the attachments)",
    attachmentLine,
    "",
    link ? `Open the thread: ${link}` : "Open the thread on the MR.RIDER site.",
  ]
    .filter(Boolean)
    .join("\n");

  const html = `
    <div style="font-family:ui-monospace,Menlo,monospace;line-height:1.6;color:#16181d">
      <p style="letter-spacing:.18em;text-transform:uppercase;font-size:11px;color:#5a5f6b;margin:0 0 12px">
        MR.RIDER · inquiry
      </p>
      <p style="margin:0 0 16px"><strong>${escapeHtml(intro)}</strong></p>
      <blockquote style="margin:0 0 16px;padding:12px 16px;border-left:3px solid #16181d;background:#f6f5f2;white-space:pre-wrap">${escapeHtml(
        message.body || "(no message — see the attachments)",
      )}</blockquote>
      ${attachmentLine ? `<p style="margin:0 0 16px;color:#5a5f6b">${escapeHtml(attachmentLine)}</p>` : ""}
      ${
        link
          ? `<p style="margin:0">
        <a href="${escapeHtml(link)}" style="background:#16181d;color:#fbfaf8;padding:12px 20px;text-decoration:none;letter-spacing:.16em;text-transform:uppercase;font-size:11px">
          Open the thread
        </a>
      </p>`
          : `<p style="margin:0;color:#5a5f6b">Open the thread on the MR.RIDER site.</p>`
      }
    </div>
  `.trim();

  const result = await sendEmail({
    to,
    subject,
    html,
    text,
    // The club can hit reply and reach the rider directly.
    replyTo: fromMember ? inquiry.member_email : undefined,
  });

  /* The automatic acknowledgement.

     Sent only on the message that OPENED the thread (message_count of 1) and
     only to the rider, so a long back-and-forth does not acknowledge itself
     over and over. It is written in the language the rider picked and asks
     for the details the club needs to quote properly — size, timing and a
     number to reach them on.

     Deliberately after the club's alert and deliberately not awaited into the
     response contract: the acknowledgement is a courtesy, and failing to send
     it must never look like the inquiry itself failed. */
  if (fromMember && inquiry.message_count <= 1) {
    const c = copyFor(language);
    const riderLink = base ? `${base}/inquiries` : "";
    const ackText = [
      c.ackGreeting(inquiry.member_name || "there"),
      "",
      c.ackBody,
      "",
      c.ackAsk,
      "",
      riderLink ? `${c.ackThread}: ${riderLink}` : "",
      c.ackSignoff,
    ]
      .filter(Boolean)
      .join("\n");

    const ackHtml = `
      <div style="font-family:ui-monospace,Menlo,monospace;line-height:1.7;color:#16181d">
        <p style="letter-spacing:.18em;text-transform:uppercase;font-size:11px;color:#5a5f6b;margin:0 0 12px">
          MR.RIDER
        </p>
        <p style="margin:0 0 16px">${escapeHtml(c.ackGreeting(inquiry.member_name || "there"))}</p>
        <p style="margin:0 0 16px">${escapeHtml(c.ackBody)}</p>
        <p style="margin:0 0 20px;padding:12px 16px;border-left:3px solid #16181d;background:#f6f5f2">${escapeHtml(c.ackAsk)}</p>
        ${
          riderLink
            ? `<p style="margin:0 0 16px">
          <a href="${escapeHtml(riderLink)}" style="background:#16181d;color:#fbfaf8;padding:12px 20px;text-decoration:none;letter-spacing:.16em;text-transform:uppercase;font-size:11px">
            ${escapeHtml(c.ackThread)}
          </a>
        </p>`
            : ""
        }
        <p style="margin:0;color:#5a5f6b">${escapeHtml(c.ackSignoff)}</p>
      </div>
    `.trim();

    await sendEmail({
      to: inquiry.member_email,
      subject: c.ackSubject(inquiry.product_name),
      html: ackHtml,
      text: ackText,
    });
  }

  // A failed send is logged server-side; the caller only learns whether the
  // alert went out, never why not.
  return Response.json({ ok: true, notified: result.sent });
}
