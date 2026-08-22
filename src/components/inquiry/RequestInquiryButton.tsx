"use client";

import Link from "next/link";
import { usePathname } from "next/navigation";
import { useEffect, useState } from "react";
import { createPortal } from "react-dom";
import InquiryComposer from "@/components/inquiry/InquiryComposer";
import { sendInquiryMessage, type InquiryRow } from "@/lib/inquiries";
import { productImageUrl } from "@/lib/images";
import { getSupabaseBrowser } from "@/lib/supabaseBrowser";
import { useSession } from "@/lib/useSession";
import { brandName, subcategoryName } from "@/lib/taxonomy";
import {
  DEFAULT_LANGUAGE,
  LANGUAGES,
  copyFor,
  whatsappLink,
  type LanguageCode,
} from "@/lib/languages";

/* Every product carries this instead of a price. The label is CLUB PRICE: the
   floor has no tags, and "club price" says what the rider actually gets out of
   pressing it, where "request inquiry" only described the paperwork.

   Signed-out riders are sent to /account first — the club only takes inquiries
   from people with an account. */

export type InquiryProduct = {
  id: string;
  name: string;
  brand: string;
  category: string;
  subcategory: string;
  image?: string;
};

type Phase = "closed" | "signin" | "compose" | "sent";

export default function RequestInquiryButton({
  product,
  variant = "block",
}: {
  product: InquiryProduct;
  /** "block" fills the product card; "inline" suits a list row. */
  variant?: "block" | "inline";
}) {
  const sb = getSupabaseBrowser();
  const { session, ready } = useSession();
  const pathname = usePathname();
  const [phase, setPhase] = useState<Phase>("closed");
  const [busy, setBusy] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [warnings, setWarnings] = useState<string[]>([]);
  /* Stamped on the thread so the club knows which mailbox to route it to
     and which language to answer in. Chosen before sending, not after —
     the very first alert has to go to the right person. */
  const [language, setLanguage] = useState<LanguageCode>(DEFAULT_LANGUAGE);

  const open = phase !== "closed";

  useEffect(() => {
    if (!open) return;
    const onKey = (e: KeyboardEvent) => {
      if (e.key === "Escape") setPhase("closed");
    };
    window.addEventListener("keydown", onKey);
    document.body.style.overflow = "hidden";
    return () => {
      window.removeEventListener("keydown", onKey);
      document.body.style.overflow = "";
    };
  }, [open]);

  /** Reuse the rider's open thread on this product rather than stacking up
      a new one every time they ask another question. */
  async function threadId(): Promise<{ id: string | null; error: string | null }> {
    if (!sb || !session) return { id: null, error: "Sign in to send an inquiry" };

    const { data: existing } = await sb
      .from("inquiries")
      .select("id")
      .eq("user_id", session.user.id)
      .eq("product_id", product.id)
      .eq("status", "open")
      .order("last_message_at", { ascending: false })
      .limit(1)
      .maybeSingle();

    // An already-open thread keeps the language it was opened in; changing
    // it here would re-route a conversation someone is already handling.
    if (existing) return { id: (existing as Pick<InquiryRow, "id">).id, error: null };

    const { data, error: err } = await sb
      .from("inquiries")
      .insert({
        user_id: session.user.id,
        product_id: product.id,
        product_name: product.name,
        product_brand: product.brand,
        product_category: product.category,
        product_subcategory: product.subcategory,
        product_image: product.image ?? "",
        language,
      })
      .select("id")
      .single();

    if (err || !data) return { id: null, error: err?.message ?? "Could not open the thread" };
    return { id: (data as Pick<InquiryRow, "id">).id, error: null };
  }

  async function send(body: string, files: File[]): Promise<boolean> {
    if (!sb || !session) return false;
    setBusy(true);
    setError(null);

    const { id, error: threadError } = await threadId();
    if (!id) {
      setBusy(false);
      setError(threadError);
      return false;
    }

    const res = await sendInquiryMessage(sb, {
      inquiryId: id,
      senderId: session.user.id,
      role: "member",
      body,
      files,
      accessToken: session.access_token,
    });
    setBusy(false);

    if (res.error) {
      setError(res.error);
      return false;
    }
    // A file that would not upload must not vanish behind a success screen.
    setWarnings(res.warnings);
    setPhase("sent");
    return true;
  }

  const trigger =
    variant === "block"
      ? "mt-auto w-full bg-accent px-4 py-3 font-mono text-[10px] font-semibold uppercase tracking-[0.16em] text-chalk transition-colors duration-200 ease-out hover:bg-accent-deep disabled:opacity-50"
      : "whitespace-nowrap border border-ink px-3 py-2 font-mono text-[10px] font-semibold uppercase tracking-[0.14em] transition-colors duration-200 ease-out hover:bg-ink hover:text-chalk disabled:opacity-50";

  const thumb = productImageUrl(product.image);
  const typeLabel = subcategoryName(product.subcategory);

  return (
    <>
      <button
        type="button"
        disabled={!ready}
        onClick={() => setPhase(session ? "compose" : "signin")}
        className={trigger}
      >
        Club price
      </button>

      {/* Portalled to <body>. The product card animates with a hover
          translate, and a transformed ancestor becomes the containing block
          for position:fixed — inline, the modal would be squeezed into the
          card it was opened from. */}
      {open &&
        createPortal(
        <div
          className="fixed inset-0 z-50 flex items-end justify-center bg-carbon/70 p-0 backdrop-blur-sm sm:items-center sm:p-6"
          role="dialog"
          aria-modal="true"
          aria-label={`Request an inquiry — ${product.name}`}
          onClick={(e) => {
            if (e.target === e.currentTarget) setPhase("closed");
          }}
        >
          <div className="max-h-[92svh] w-full max-w-lg overflow-y-auto border border-ink bg-paper p-6">
            <div className="mb-5 flex items-start justify-between gap-4 border-b border-line pb-4">
              <div className="flex min-w-0 items-center gap-3">
                {thumb ? (
                  // eslint-disable-next-line @next/next/no-img-element
                  <img
                    src={thumb}
                    alt=""
                    className="size-14 shrink-0 border border-line object-cover"
                  />
                ) : (
                  <span
                    aria-hidden
                    className="hatch-light size-14 shrink-0 border border-line"
                  />
                )}
                <div className="min-w-0">
                  <p className="font-mono text-[10px] uppercase tracking-[0.2em] text-ink-soft">
                    {brandName(product.brand)}
                    {typeLabel ? ` · ${typeLabel}` : ""}
                  </p>
                  <p className="truncate font-display text-xl font-bold uppercase leading-tight tracking-wide">
                    {product.name}
                  </p>
                </div>
              </div>
              <button
                type="button"
                onClick={() => setPhase("closed")}
                aria-label="Close"
                className="shrink-0 p-1 font-mono text-sm text-ink-soft transition-colors duration-200 ease-out hover:text-ink"
              >
                ✕
              </button>
            </div>

            {phase === "signin" && (
              <div>
                <p className="headline mb-3 text-3xl">Riders only.</p>
                <p className="mb-6 text-sm leading-relaxed text-ink-soft">
                  Inquiries come from riders with an account, so the club knows
                  who it is talking to and your thread is waiting for you next
                  time you sign in.
                </p>
                <div className="flex flex-wrap gap-3">
                  <Link
                    href={`/account?next=${encodeURIComponent(pathname)}`}
                    className="bg-accent px-5 py-3 font-mono text-[11px] font-semibold uppercase tracking-[0.18em] text-chalk transition-colors duration-200 ease-out hover:bg-accent-deep"
                  >
                    Create an account
                  </Link>
                  <Link
                    href={`/account?next=${encodeURIComponent(pathname)}`}
                    className="border border-ink px-5 py-3 font-mono text-[11px] font-semibold uppercase tracking-[0.18em] transition-colors duration-200 ease-out hover:bg-ink hover:text-chalk"
                  >
                    Sign in
                  </Link>
                </div>
              </div>
            )}

            {phase === "compose" && (
              <div>
                <p className="mb-4 text-sm leading-relaxed text-ink-soft">
                  Ask about size, spec, condition or availability. The club
                  answers in the thread — you will get an email when it does.
                </p>
                {!sb && (
                  <p className="mb-4 border border-accent-deep bg-chalk px-4 py-3 font-mono text-[11px] uppercase tracking-[0.12em] text-accent-deep">
                    Backend is not configured yet
                  </p>
                )}
                {error && (
                  <p
                    role="alert"
                    className="mb-4 border border-accent-deep bg-chalk px-4 py-3 font-mono text-[11px] uppercase tracking-[0.12em] text-accent-deep"
                  >
                    {error}
                  </p>
                )}
                <fieldset className="mb-4">
                  <legend className="mb-2 font-mono text-[10px] uppercase tracking-[0.22em] text-ink-soft">
                    {copyFor(language).languageLabel}
                  </legend>
                  <div className="flex flex-wrap gap-2">
                    {LANGUAGES.map((l) => (
                      <label
                        key={l.code}
                        className={`cursor-pointer border px-4 py-2 font-mono text-[10px] font-semibold uppercase tracking-[0.16em] transition-colors duration-200 ease-out ${
                          language === l.code
                            ? "border-ink bg-ink text-chalk"
                            : "border-line text-ink-soft hover:border-ink hover:text-ink"
                        }`}
                      >
                        <input
                          type="radio"
                          name="inquiry-language"
                          value={l.code}
                          checked={language === l.code}
                          onChange={() => setLanguage(l.code)}
                          className="sr-only"
                        />
                        {/* Native name alongside the English one, so a Sinhala
                            speaker can find their language without reading
                            English first. */}
                        {l.label}
                        {l.native !== l.label ? ` · ${l.native}` : ""}
                      </label>
                    ))}
                  </div>
                </fieldset>
                <InquiryComposer
                  onSend={send}
                  busy={busy}
                  autoFocus
                  submitLabel="Send inquiry"
                  placeholder="What size do you need, and when do you need it?"
                />
              </div>
            )}

            {phase === "sent" && (
              <div className="py-6 text-center">
                <p className="headline mb-3 text-4xl">In the queue.</p>
                <p className="mb-8 font-mono text-xs uppercase tracking-[0.16em] text-ink-soft">
                  The club replies in your inbox — you will get an email too
                </p>
                {warnings.length > 0 && (
                  <p className="mb-6 border border-accent-deep bg-chalk px-4 py-3 text-left font-mono text-[11px] uppercase tracking-[0.12em] text-accent-deep">
                    Sent without: {warnings.join(" · ")}
                  </p>
                )}
                {/* The rider can carry on in the thread or on WhatsApp,
                    whichever they prefer — the club asked for both. The button
                    only appears once a number is configured for this language
                    (NEXT_PUBLIC_WHATSAPP_SI / _EN); with none set, the thread
                    is simply the only route offered. */}
                {whatsappLink(
                  language,
                  copyFor(language).whatsappPrefill(product.name),
                ) && (
                  <div className="mb-6">
                    <p className="mb-3 font-mono text-[10px] uppercase tracking-[0.16em] text-ink-soft">
                      {copyFor(language).whatsappHint}
                    </p>
                    <a
                      href={whatsappLink(
                        language,
                        copyFor(language).whatsappPrefill(product.name),
                      )}
                      target="_blank"
                      rel="noopener"
                      className="inline-block border border-ink px-5 py-3 font-mono text-[11px] font-semibold uppercase tracking-[0.18em] transition-colors duration-200 ease-out hover:bg-ink hover:text-chalk"
                    >
                      {copyFor(language).whatsappCta}
                    </a>
                  </div>
                )}
                <div className="flex flex-wrap justify-center gap-3">
                  <Link
                    href="/inquiries"
                    className="bg-ink px-5 py-3 font-mono text-[11px] font-semibold uppercase tracking-[0.18em] text-chalk transition-colors duration-200 ease-out hover:bg-accent-deep"
                  >
                    Open my inquiries
                  </Link>
                  <button
                    type="button"
                    onClick={() => setPhase("closed")}
                    className="border border-line px-5 py-3 font-mono text-[11px] font-semibold uppercase tracking-[0.18em] text-ink-soft transition-colors duration-200 ease-out hover:border-ink hover:text-ink"
                  >
                    Keep browsing
                  </button>
                </div>
              </div>
            )}
          </div>
        </div>,
          document.body,
        )}
    </>
  );
}
