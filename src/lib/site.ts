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

/** Absolute URL for a site-relative path. */
export const absolute = (path = "/") =>
  new URL(path.startsWith("/") ? path : `/${path}`, SITE_URL).toString();
