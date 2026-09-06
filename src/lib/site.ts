/* Where this deployment lives. Absolute URLs in metadata, Open Graph tags,
   the sitemap and the inquiry emails all resolve against it.

   Set NEXT_PUBLIC_SITE_URL per environment (preview deploys included) — the
   fallback is production, so an unset preview would otherwise advertise the
   live domain as its canonical and invite Google to index the wrong host. */
const FALLBACK = "https://mr-rider.lk";

function resolve(): string {
  const raw = process.env.NEXT_PUBLIC_SITE_URL?.trim();
  if (!raw) return FALLBACK;
  try {
    // Normalised: protocol guaranteed, no trailing slash.
    return new URL(raw.startsWith("http") ? raw : `https://${raw}`).origin;
  } catch {
    return FALLBACK;
  }
}

export const SITE_URL = resolve();
export const SITE_NAME = "MR.RIDER";

/* The club's mark — masthead, mobile drawer, footer and the Organization node
   in the JSON-LD graph all read from here.

   Square (1254×1254) with the wordmark built into the artwork, so it is never
   cropped and never paired with a separate text wordmark; `alt` carries the
   name for crawlers and screen readers instead. */
export const SITE_LOGO = "/logo.png";
export const SITE_LOGO_SIZE = 1254;

/* The card a link unfurls into on WhatsApp, Facebook, X, Slack and iMessage.
   1200×630 is the size every one of them crops from. Rendered once from the
   club's own hero frame and committed as a static file rather than generated
   per request — it never changes between deploys, so a build-time image is a
   round trip nobody has to pay for.

   JPEG rather than PNG because it is a photograph: the same card as a PNG was
   876KB against 114KB here. That gap is not academic — WhatsApp gives up on a
   heavy card and shows a bare link instead, and WhatsApp is how this club
   shares. Re-render it with scratch/og.html if the headline ever changes. */
export const SITE_OG_IMAGE = "/og.jpg";
export const SITE_OG_SIZE = { width: 1200, height: 630 };

/* ⚠ CONFIRM BEFORE LAUNCH — the mailbox printed on /contact and offered when
   a form fails to submit. It read `club@mrrider.cc` until the domain was
   settled, which is neither the site's domain nor the one the club sends
   from: `.env` already ships mail as `inquiries@mr-rider.lk`, so `.cc` was
   left over from before. Pointed at the live domain here so the site is
   internally consistent; if the club reads a different mailbox, this one
   line is the only place to change it. */
export const CLUB_EMAIL = "club@mr-rider.lk";

/** Absolute URL for a site-relative path. */
export const absolute = (path = "/") =>
  new URL(path.startsWith("/") ? path : `/${path}`, SITE_URL).toString();
