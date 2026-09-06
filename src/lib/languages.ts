/* Sinhala or English, chosen by the rider when they open an inquiry.

   The choice does three things: it routes the club's alert to whoever handles
   that language, it picks the language the acknowledgement is written in, and
   it decides which WhatsApp number the rider is offered.

   WHO GETS WHAT is deliberately configuration rather than code. The club told
   us Sinhala goes to Don and left English open, so hard-coding either would
   have meant a redeploy to answer a question that is still outstanding. Set
   the variables and the routing starts working; leave them unset and
   everything falls back to INQUIRY_ADMIN_EMAIL exactly as before. */

export const LANGUAGES = [
  { code: "en", label: "English", native: "English" },
  { code: "si", label: "Sinhala", native: "සිංහල" },
] as const;

export type LanguageCode = (typeof LANGUAGES)[number]["code"];

export const DEFAULT_LANGUAGE: LanguageCode = "en";

export function isLanguage(value: unknown): value is LanguageCode {
  return value === "en" || value === "si";
}

export function languageLabel(code: string): string {
  return LANGUAGES.find((l) => l.code === code)?.label ?? code;
}

/* ---------- routing ---------- */

/** Server-only. The mailbox that should be told about a thread in `language`,
    falling back to the single club address when the split is not configured. */
export function adminEmailFor(language: string): string | null {
  const shared = process.env.INQUIRY_ADMIN_EMAIL ?? "";
  const specific =
    language === "si"
      ? (process.env.INQUIRY_ADMIN_EMAIL_SI ?? "")
      : (process.env.INQUIRY_ADMIN_EMAIL_EN ?? "");
  return specific.trim() || shared.trim() || null;
}

/* ---------- WhatsApp ---------- */

/** Digits only, no + and no spaces — the format wa.me expects in its path. */
function normaliseNumber(raw: string): string {
  return raw.replace(/[^0-9]/g, "");
}

/** The club's WhatsApp number for a language, or "" when none is configured.
    An unset number is not an error: the WhatsApp option simply does not
    render, and the rider carries on in the thread. */
export function whatsappNumber(language: string): string {
  const shared = process.env.NEXT_PUBLIC_WHATSAPP ?? "";
  const specific =
    language === "si"
      ? (process.env.NEXT_PUBLIC_WHATSAPP_SI ?? "")
      : (process.env.NEXT_PUBLIC_WHATSAPP_EN ?? "");
  return normaliseNumber(specific || shared);
}

/** Deep link that opens WhatsApp with the first message already typed. */
export function whatsappLink(language: string, message: string): string {
  const number = whatsappNumber(language);
  if (!number) return "";
  return `https://wa.me/${number}?text=${encodeURIComponent(message.slice(0, 900))}`;
}

/* ---------- rider-facing copy ---------- */

/* ⚠ The Sinhala below is a first pass and SHOULD BE CHECKED by a native
   speaker before launch. It is kept deliberately short and literal so it is
   easy to correct, and every Sinhala string on the site lives in this one
   object — fixing the wording is one edit here, not a hunt through
   components and email templates. */
export const COPY = {
  en: {
    languageLabel: "Answer me in",
    /* UI-02 — the modal opened on an empty box with a greyed-out example
       sentence in it, and the club's note was that riders read the example
       and then typed nothing. These are the four questions the inbox actually
       receives, as buttons: one tap writes the sentence, and the rider edits
       it or sends it as it stands.

       `label` is what fits on the chip. `text` is the whole question, written
       the way the club would rather receive it — an inquiry that already says
       which size and how soon is one the club can answer in a single reply
       instead of three. */
    chipsLabel: "Quick questions",
    chips: [
      {
        id: "size",
        label: "Size availability",
        text: "What sizes do you have in stock for this one?",
      },
      {
        id: "quote",
        label: "Club price",
        text: "Could you send me a club price for this?",
      },
      {
        id: "condition",
        label: "Condition & photos",
        text: "How is the condition, and could I see a few more photos?",
      },
      {
        id: "delivery",
        label: "Delivery",
        text: "How soon could this be delivered, and what does delivery cost?",
      },
    ],
    composerPlaceholder: "What size do you need, and when do you need it?",
    composerHint:
      "Ask about size, spec, condition or availability. The club answers in the thread — you will get an email when it does.",
    whatsappCta: "Continue on WhatsApp",
    whatsappHint: "Prefer chat? Carry on with the club there instead.",
    whatsappPrefill: (product: string) =>
      `Hi MR.RIDER — I've just asked about "${product}" on the site.`,
    ackSubject: (product: string) => `We've got your inquiry — ${product}`,
    ackGreeting: (name: string) => `Hi ${name},`,
    ackBody:
      "Thanks for asking about this one. The club has your inquiry and will come back to you with a club price and availability.",
    ackAsk:
      "To answer you properly, it helps to know: your size or the fit you're after, how soon you need it, and the best number to reach you on. Reply here or in your thread on the site.",
    ackThread: "Open your inquiry",
    ackSignoff: "— MR.RIDER",
  },
  si: {
    languageLabel: "පිළිතුරු භාෂාව",
    chipsLabel: "ඉක්මන් ප්‍රශ්න",
    chips: [
      {
        id: "size",
        label: "සයිස් තිබේද",
        text: "මේකට මොන සයිස් තියෙනවද?",
      },
      {
        id: "quote",
        label: "ක්ලබ් මිල",
        text: "මේකේ ක්ලබ් මිල එවන්න පුළුවන්ද?",
      },
      {
        id: "condition",
        label: "තත්ත්වය සහ ඡායාරූප",
        text: "තත්ත්වය කොහොමද? තව ඡායාරූප කිහිපයක් බලන්න පුළුවන්ද?",
      },
      {
        id: "delivery",
        label: "බෙදාහැරීම",
        text: "කොපමණ ඉක්මනින් බෙදාහැරිය හැකිද? බෙදාහැරීමේ ගාස්තුව කීයද?",
      },
    ],
    composerPlaceholder: "ඔබට අවශ්‍ය සයිස් එක සහ කවදා අවශ්‍යද කියා ලියන්න.",
    composerHint:
      "සයිස්, විස්තර, තත්ත්වය හෝ තිබේද යන්න ගැන අසන්න. සමාජශාලාව මෙම සංවාදයේම පිළිතුරු දෙනු ඇත — ඊමේල් එකකුත් ලැබෙනවා.",
    whatsappCta: "WhatsApp හරහා දිගටම",
    whatsappHint: "චැට් කැමතිද? එතැනින් දිගටම කතා කරන්න.",
    whatsappPrefill: (product: string) =>
      `ආයුබෝවන් MR.RIDER — මම වෙබ් අඩවියෙන් "${product}" ගැන විමසුමක් කළා.`,
    ackSubject: (product: string) => `ඔබගේ විමසුම ලැබුණි — ${product}`,
    ackGreeting: (name: string) => `ආයුබෝවන් ${name},`,
    ackBody:
      "විමසීම ගැන ස්තූතියි. ඔබගේ විමසුම සමාජශාලාවට ලැබී ඇත. ක්ලබ් මිල සහ තිබේද යන්න ගැන ඉක්මනින් දැනුම් දෙන්නෙමු.",
    ackAsk:
      "නිවැරදිව පිළිතුරු දීමට, කරුණාකර ඔබට අවශ්‍ය සයිස් එක, කවදා අවශ්‍යද යන්න, සහ ඔබව සම්බන්ධ කරගත හැකි දුරකථන අංකය දන්වන්න.",
    ackThread: "ඔබගේ විමසුම බලන්න",
    ackSignoff: "— MR.RIDER",
  },
} as const;

/** One tappable question in the inquiry modal. See COPY.en.chips. */
export type QuickChip = { id: string; label: string; text: string };

/** Copy for a language code, falling back to English for anything unknown. */
export function copyFor(language: string) {
  return language === "si" ? COPY.si : COPY.en;
}
