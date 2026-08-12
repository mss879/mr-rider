/* Transactional email through the Resend REST API — a bare fetch, no SDK and
   no extra dependency. Server-only: RESEND_API_KEY must never be exposed to
   the browser, so it is deliberately NOT a NEXT_PUBLIC_ variable. */

const RESEND_ENDPOINT = "https://api.resend.com/emails";

export type MailResult =
  | { sent: true; id: string | null }
  | { sent: false; reason: string };

/** Configured only when both the key and a verified sender exist. */
export function resendConfigured(): boolean {
  return Boolean(process.env.RESEND_API_KEY && process.env.RESEND_FROM);
}

export function escapeHtml(value: string): string {
  return value
    .replace(/&/g, "&amp;")
    .replace(/</g, "&lt;")
    .replace(/>/g, "&gt;")
    .replace(/"/g, "&quot;")
    .replace(/'/g, "&#39;");
}

export async function sendEmail(opts: {
  to: string;
  subject: string;
  html: string;
  text: string;
  replyTo?: string;
}): Promise<MailResult> {
  const apiKey = process.env.RESEND_API_KEY;
  const from = process.env.RESEND_FROM;
  if (!apiKey || !from) return { sent: false, reason: "resend-not-configured" };

  let res: Response;
  try {
    res = await fetch(RESEND_ENDPOINT, {
      method: "POST",
      headers: {
        authorization: `Bearer ${apiKey}`,
        "content-type": "application/json",
      },
      // The REST API takes snake_case reply_to — replyTo is an SDK-ism.
      body: JSON.stringify({
        from,
        to: [opts.to],
        subject: opts.subject,
        html: opts.html,
        text: opts.text,
        ...(opts.replyTo ? { reply_to: [opts.replyTo] } : {}),
      }),
    });
  } catch (reason) {
    const message = reason instanceof Error ? reason.message : "network error";
    console.warn(`[resend] request failed: ${message}`);
    return { sent: false, reason: "request-failed" };
  }

  if (!res.ok) {
    // Logged for the operator, never returned to the caller.
    console.warn(`[resend] ${res.status}: ${await res.text().catch(() => "")}`);
    return { sent: false, reason: `status-${res.status}` };
  }

  const body = (await res.json().catch(() => null)) as { id?: string } | null;
  return { sent: true, id: body?.id ?? null };
}
