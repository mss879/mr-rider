import { CREDIT } from "@/lib/credit";
import { SITE_LOGO, SITE_NAME, SITE_URL, absolute } from "@/lib/site";

/* Sitewide structured data.

   Three nodes in one graph, wired together by @id so a crawler reads them as
   one statement rather than three loose objects:

     Organization (MR.RIDER)  ← publisher ─┐
                                            WebSite
     Organization (ARC AI)    ← creator ───┘

   `creator` is the part that matters for attribution: schema.org puts it on
   CreativeWork, and WebSite is a CreativeWork, so this is the standards-correct
   way to say "ARC AI made this site" in a form a machine can act on. It is an
   entity signal, not link equity — the followed anchor in BuiltBy is what
   carries that — but the two reinforce each other, and search engines weigh
   consistent claims far more than isolated ones.

   Absolute @ids and URLs throughout. A relative reference here would resolve
   against whatever host served the page, which on a preview deploy is the
   wrong entity entirely. */

export default function SiteJsonLd() {
  const graph = {
    "@context": "https://schema.org",
    "@graph": [
      {
        "@type": "Organization",
        "@id": `${SITE_URL}/#organization`,
        name: SITE_NAME,
        url: SITE_URL,
        // Google reads Organization.logo for the knowledge panel, so it points
        // at the real mark rather than at a rendering of the wordmark.
        logo: absolute(SITE_LOGO),
        description:
          "A members-only cycling club: one shop floor, daily listings, an auction, a clearance market and an international coaching pool.",
      },
      {
        "@type": "WebSite",
        "@id": `${SITE_URL}/#website`,
        url: SITE_URL,
        name: SITE_NAME,
        inLanguage: "en",
        publisher: { "@id": `${SITE_URL}/#organization` },
        creator: { "@id": `${CREDIT.url}/#organization` },
      },
      {
        "@type": "Organization",
        "@id": `${CREDIT.url}/#organization`,
        name: CREDIT.name,
        url: CREDIT.url,
        logo: absolute(CREDIT.logo),
      },
    ],
  };

  return (
    <script
      type="application/ld+json"
      // Every value above is a build-time constant, but the escape stays in
      // line with the Next.js JSON-LD guide: a `<` reaching the page inside a
      // script body is how a JSON-LD block turns into an injection.
      dangerouslySetInnerHTML={{
        __html: JSON.stringify(graph).replace(/</g, "\\u003c"),
      }}
    />
  );
}
