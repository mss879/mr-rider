/* Editorial photography for the site.

   PROVENANCE: these six frames are AI-generated (Higgsfield, Nano Banana Pro),
   commissioned for this build. They are ATMOSPHERE, not catalogue — none of
   them is presented as a product the club holds, and none should ever be used
   as a product shot. Product photography stays real: `products.images` from
   Storage, with the hatched placeholder standing in until the club supplies a
   photo. That line matters — a generated photo standing in for stock would
   misrepresent what a rider is buying.

   All six are greyscale by design, matching the monochrome theme in tokens.css.
   Sources are 1600–2560px WebP; next/image resizes and re-encodes per viewport,
   so these are the masters rather than what anyone downloads. */

export type SiteImage = {
  src: string;
  /** Intrinsic size of the file in public/img, for next/image. */
  width: number;
  height: number;
  /** Written for a reader who cannot see it, not stuffed with keywords. */
  alt: string;
};

export const IMAGERY = {
  /** Hero band. Dark storm across the top half — the headline sits in it. */
  peloton: {
    src: "/img/hero.webp",
    width: 2560,
    height: 1086,
    alt: "A tight group of road cyclists riding hard on an open road under a heavy sky",
  },
  /** Bikes racked along a workshop wall. */
  floor: {
    src: "/img/floor.webp",
    width: 1600,
    height: 893,
    alt: "Road bikes racked in a row along a bare concrete workshop wall",
  },
  /** Lone rider on a wet mountain hairpin. */
  climb: {
    src: "/img/coach.webp",
    width: 1600,
    height: 893,
    alt: "A lone cyclist climbing a wet mountain hairpin in the rain",
  },
  /** Hands truing a wheel — the workshop behind the inquiry desk. */
  bench: {
    src: "/img/bench.webp",
    width: 1600,
    height: 893,
    alt: "A mechanic's hands truing a wheel in a workshop stand",
  },
  /** Drivetrain parts laid out on a workbench. */
  parts: {
    src: "/img/parts.webp",
    width: 1600,
    height: 893,
    alt: "Chainrings, a cassette, a chain, a brake rotor and pedals laid out on a workbench",
  },
  /** Empty road at dawn — the closing band. */
  road: {
    src: "/img/road.webp",
    width: 2560,
    height: 1086,
    alt: "A single cyclist far down an empty road under a vast clouded sky",
  },
} as const satisfies Record<string, SiteImage>;
