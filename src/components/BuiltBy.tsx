import Image from "next/image";
import { CREDIT } from "@/lib/credit";

/* The build credit, centred in the footer and therefore on every page.

   SEO notes, because each of these is deliberate and easy to undo by accident:

   · It is a plain <a>, not next/link — the target is off-site, so there is no
     client-side route to prefetch.
   · There is **no** `rel="nofollow"` / `sponsored` / `ugc`. Those attributes are
     what tell a crawler not to pass link equity, and this is an editorial
     credit on a site the agency actually built, so a followed link is the
     honest markup as well as the useful one.
   · `rel="noopener"` only. It closes the reverse-tabnabbing hole that comes
     with target="_blank" and costs nothing in ranking terms. `noreferrer` is
     left off on purpose: it would strip the Referer header and make this site
     invisible in the agency's referral analytics.
   · The caption sits inside the anchor rather than beside it, so the whole row
     is one link and the anchor text reads "Built and designed by ARC AI".
     Visually it is still just the mark being clicked; the difference is that a
     crawler gets a descriptive phrase instead of a bare image link.
   · The logo carries a real `alt`. For an image link that alt *is* the anchor
     text, so an empty one would throw the brand signal away entirely.
   · `title` shows the destination on hover, since a logo on its own does not
     tell anyone where they are about to be sent. */

export default function BuiltBy() {
  return (
    <div className="border-t border-line-dark">
      <div className="mx-auto flex max-w-7xl items-center justify-center px-6 py-8">
        <a
          href={CREDIT.url}
          target="_blank"
          rel="noopener"
          title={`${CREDIT.name} — ${CREDIT.domain}`}
          // Wraps on a narrow phone rather than pushing the mark off the row.
          className="group inline-flex flex-wrap items-center justify-center gap-x-4 gap-y-2"
        >
          <span className="font-mono text-[10px] uppercase tracking-[0.22em] text-chalk/35 transition-colors duration-200 ease-out group-hover:text-chalk/60">
            Built and designed by
          </span>
          <Image
            src={CREDIT.logo}
            alt={CREDIT.name}
            width={CREDIT.logoWidth}
            height={CREDIT.logoHeight}
            className="h-12 w-auto opacity-80 transition-opacity duration-200 ease-out group-hover:opacity-100"
          />
        </a>
      </div>
    </div>
  );
}
