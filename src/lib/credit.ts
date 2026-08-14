/* Who built this site.

   Kept in one place because the credit surfaces in three: the footer link, the
   `author` metadata in the root layout, and the `creator` edge of the JSON-LD
   graph. They have to agree — a mismatch between the visible credit and the
   structured data is exactly the kind of thing that gets a signal discounted.

   The URL is canonical and absolute (https, www, no trailing slash) so every
   reference resolves to the same target rather than to a redirect chain. */
export const CREDIT = {
  name: "ARC AI",
  /** Canonical destination. Keep in sync with the agency's own canonical. */
  url: "https://www.arcai.agency",
  /** Shown under the mark, and what the anchor text says the link goes to. */
  domain: "arcai.agency",
  logo: "/arclogo.webp",
  /* Display size, not the 350×180 of the source file. next/image builds a 1x/2x
     srcset from these, so quoting the intrinsic size here would have it ship a
     3840px-wide candidate for a mark that renders about 110px across. The ratio
     matches the source (1.944), which is what keeps the box from shifting. */
  logoWidth: 140,
  logoHeight: 72,
} as const;
