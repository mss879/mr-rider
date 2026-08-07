/* ============================================================
   MR.RIDER · Product navigation taxonomy
   Source of truth: "Mr Rider — Recommended Product Category
   Breakdown (Client Approved)" — sheets Hierarchy, Brand
   Placement, Naming Corrections and Developer Notes.

   10 product categories + 2 utility links, 83 product types and
   28 brand menu links (111 hierarchy entries total).

   Navigation rule: product categories in the main menu; brands
   live in filters, brand landing pages or a "Shop by Brand"
   column. Client-approved exception — Road Bikes & Framesets
   shows Road Bikes and Framesets first, then direct brand links.
   ============================================================ */

export type SectionKind = "product" | "brand" | "future";

/** A section inside a category's menu, e.g. "Drivetrain" or "Shop by Brand". */
export type MenuSection = {
  title: string;
  kind: SectionKind;
  /** Subcategory slugs when kind is product/future, brand slugs when kind is brand. */
  items: string[];
  note?: string;
};

export type Category = {
  slug: string;
  name: string;
  blurb: string;
  sections: MenuSection[];
};

export type Subcategory = {
  slug: string;
  name: string;
  category: string;
  section: string;
  /** Future Expansion rows — only shown once the category carries stock. */
  future?: boolean;
  note?: string;
};

export type Brand = {
  slug: string;
  name: string;
  /** "direct" = client-approved direct menu link, "filter" = filter/collection link. */
  treatment: "direct" | "filter";
  /** Categories the brand is relevant to, per the Brand Placement sheet. */
  categories: string[];
  /** Optional subcategory the brand is tied to (e.g. 100% → Cycling Glasses). */
  subcategory?: string;
  /** MR.RIDER's own label — kept out of the client brand directory listing. */
  house?: boolean;
  note?: string;
};

/* ---------------------------------------------------------------
   CATEGORIES — main navigation, in client-approved order
   --------------------------------------------------------------- */

export const categories: Category[] = [
  {
    slug: "road-bikes-framesets",
    name: "Road Bikes & Framesets",
    blurb: "Complete race builds and bare framesets",
    sections: [
      {
        title: "Shop by Product",
        kind: "product",
        items: ["road-bikes", "framesets"],
        note: "Keep Road Bikes and Framesets as separate links inside this client-approved category.",
      },
      {
        title: "Shop by Brand",
        kind: "brand",
        items: [
          "cannondale",
          "cervelo",
          "s-works",
          "specialized",
          "pinarello",
          "cube",
          "trek",
          "canyon",
          "xlab",
          "bmc",
          "scott",
          "merida",
        ],
        note: "Client-approved direct brand placement.",
      },
    ],
  },
  {
    slug: "components",
    name: "Components",
    blurb: "Drivetrain, brakes, cockpit and pedals",
    sections: [
      {
        title: "Drivetrain",
        kind: "product",
        items: [
          "groupsets",
          "cranksets",
          "chainrings-spiders",
          "cassettes",
          "chains",
          "shifters",
          "derailleurs",
        ],
      },
      {
        title: "Brakes",
        kind: "product",
        items: ["brake-pads", "disc-brake-rotors", "brake-cables-hoses"],
      },
      {
        title: "Cockpit & Contact Points",
        kind: "product",
        items: [
          "handlebars",
          "stems",
          "headsets",
          "bar-tape",
          "saddles",
          "seatposts",
          "seat-collars",
        ],
      },
      {
        title: "Pedals",
        kind: "product",
        items: ["pedals", "cleats"],
      },
      {
        title: "Cables, Spares & Small Parts",
        kind: "product",
        items: ["cables", "derailleur-hangers", "replacement-parts", "other-components"],
        note: "Use Other Components only as a fallback; avoid a vague 'Misc and others' label.",
      },
    ],
  },
  {
    slug: "wheels-tyres-tubes",
    name: "Wheels, Tyres & Tubes",
    blurb: "The whole wheel system in one aisle",
    sections: [
      {
        title: "Shop by Product",
        kind: "product",
        items: [
          "road-wheels",
          "clincher-tyres",
          "tubeless-tyres",
          "tubular-tyres",
          "inner-tubes",
          "tubeless-sealant",
          "tubeless-valves",
          "tubeless-rim-tape",
          "wheel-accessories",
        ],
      },
    ],
  },
  {
    slug: "electronics",
    name: "Electronics",
    blurb: "Computers, sensors, power meters, lights and radar",
    sections: [
      {
        title: "Shop by Product",
        kind: "product",
        items: [
          "bike-computers",
          "heart-rate-monitors",
          "speed-cadence-sensors",
          "power-meters",
          "front-lights",
          "rear-lights",
          "radar-lights",
          "electronic-accessories",
        ],
      },
      {
        title: "Shop by Brand",
        kind: "brand",
        items: ["garmin"],
        note: "Garmin is a brand link/filter inside Electronics, not the category name.",
      },
    ],
  },
  {
    slug: "apparel",
    name: "Apparel",
    blurb: "Rider clothing — jerseys, bibs, gloves, socks",
    sections: [
      {
        title: "Shop by Product",
        kind: "product",
        items: [
          "jerseys",
          "bib-shorts",
          "waist-shorts",
          "gilets-vests",
          "gloves",
          "socks",
          "caps-hats",
        ],
      },
      {
        title: "Future Expansion",
        kind: "future",
        items: ["base-layers", "jackets", "arm-leg-warmers", "casual-wear"],
        note: "Add only when enough products are available.",
      },
    ],
  },
  {
    slug: "helmets",
    name: "Helmets",
    blurb: "Shop by helmet type and brand",
    sections: [
      {
        title: "Shop by Type",
        kind: "product",
        items: [
          "road-helmets",
          "aero-helmets",
          "tt-triathlon-helmets",
          "helmet-accessories",
        ],
      },
      {
        title: "Shop by Brand",
        kind: "brand",
        items: ["fizik", "giro", "met", "specialized", "sweet-protection"],
        note: "S-Works stays a Specialized collection/filter here.",
      },
    ],
  },
  {
    slug: "shoes",
    name: "Shoes",
    blurb: "Shop by shoe type and brand",
    sections: [
      {
        title: "Shop by Type",
        kind: "product",
        items: [
          "road-cycling-shoes",
          "triathlon-shoes",
          "shoe-accessories",
          "footbeds-insoles",
        ],
      },
      {
        title: "Shop by Brand",
        kind: "brand",
        items: ["bont", "dmt", "fizik", "shimano", "specialized"],
        note: "S-Works stays a Specialized collection/filter here.",
      },
    ],
  },
  {
    slug: "accessories",
    name: "Accessories",
    blurb: "Non-electronic add-ons and rider accessories",
    sections: [
      {
        title: "Shop by Product",
        kind: "product",
        items: [
          "cycling-glasses",
          "bags-storage",
          "bottle-cages",
          "hydration-systems",
          "chamois-cream-rider-care",
          "computer-mounts",
          "bike-accessories",
        ],
      },
      {
        title: "Eyewear Brands",
        kind: "brand",
        items: ["100-percent", "oakley", "scicon"],
      },
      {
        title: "Other Brands",
        kind: "brand",
        items: ["xlab"],
        note: "XLAB also sits under accessories/hydration, not only Bikes & Framesets.",
      },
    ],
  },
  {
    slug: "nutrition",
    name: "Nutrition",
    blurb: "Fuel, hydration and recovery",
    sections: [
      {
        title: "Shop by Product",
        kind: "product",
        items: [
          "energy-gels",
          "energy-bars",
          "energy-chews",
          "electrolytes-hydration",
          "protein-recovery",
          "supplements",
          "energy-shots",
        ],
      },
    ],
  },
  {
    slug: "bike-care-maintenance",
    name: "Bike Care & Maintenance",
    blurb: "Cleaning, lubrication, tools and repair",
    sections: [
      {
        title: "Shop by Product",
        kind: "product",
        items: [
          "chain-lubricants",
          "cleaners-degreasers",
          "cleaning-kits",
          "brushes",
          "grease-assembly-compounds",
          "workshop-tools",
          "puncture-repair-kits",
          "tyre-levers",
        ],
      },
      {
        title: "Shop by Brand",
        kind: "brand",
        items: ["dynamic-bike-care"],
        note: "Dynamic Bike Care is a brand, not a product category.",
      },
    ],
  },
];

/* ---------------------------------------------------------------
   PRODUCT TYPES — the 83 product-type rows of the Hierarchy sheet
   --------------------------------------------------------------- */

const SUBCATEGORY_NAMES: Record<string, string> = {
  // Road Bikes & Framesets
  "road-bikes": "Road Bikes",
  framesets: "Framesets",
  // Components · Drivetrain
  groupsets: "Groupsets",
  cranksets: "Cranksets",
  "chainrings-spiders": "Chainrings & Spiders",
  cassettes: "Cassettes",
  chains: "Chains",
  shifters: "Shifters",
  derailleurs: "Derailleurs",
  // Components · Brakes
  "brake-pads": "Brake Pads",
  "disc-brake-rotors": "Disc Brake Rotors",
  "brake-cables-hoses": "Brake Cables & Hoses",
  // Components · Cockpit & Contact Points
  handlebars: "Handlebars",
  stems: "Stems",
  headsets: "Headsets",
  "bar-tape": "Bar Tape",
  saddles: "Saddles",
  seatposts: "Seatposts",
  "seat-collars": "Seat Collars",
  // Components · Pedals
  pedals: "Pedals",
  cleats: "Cleats",
  // Components · Cables, Spares & Small Parts
  cables: "Cables",
  "derailleur-hangers": "Derailleur Hangers",
  "replacement-parts": "Replacement Parts",
  "other-components": "Other Components",
  // Wheels, Tyres & Tubes
  "road-wheels": "Road Wheels",
  "clincher-tyres": "Clincher Tyres",
  "tubeless-tyres": "Tubeless Tyres",
  "tubular-tyres": "Tubular Tyres",
  "inner-tubes": "Inner Tubes",
  "tubeless-sealant": "Tubeless Sealant",
  "tubeless-valves": "Tubeless Valves",
  "tubeless-rim-tape": "Tubeless Rim Tape",
  "wheel-accessories": "Wheel Accessories",
  // Electronics
  "bike-computers": "Bike Computers",
  "heart-rate-monitors": "Heart Rate Monitors",
  "speed-cadence-sensors": "Speed & Cadence Sensors",
  "power-meters": "Power Meters",
  "front-lights": "Front Lights",
  "rear-lights": "Rear Lights",
  "radar-lights": "Radar Lights",
  "electronic-accessories": "Electronic Accessories",
  // Apparel
  jerseys: "Jerseys",
  "bib-shorts": "Bib Shorts",
  "waist-shorts": "Waist Shorts",
  "gilets-vests": "Gilets & Vests",
  gloves: "Gloves",
  socks: "Socks",
  "caps-hats": "Caps & Hats",
  "base-layers": "Base Layers",
  jackets: "Jackets",
  "arm-leg-warmers": "Arm & Leg Warmers",
  "casual-wear": "Casual Wear",
  // Helmets
  "road-helmets": "Road Helmets",
  "aero-helmets": "Aero Helmets",
  "tt-triathlon-helmets": "Time Trial & Triathlon Helmets",
  "helmet-accessories": "Helmet Accessories",
  // Shoes
  "road-cycling-shoes": "Road Cycling Shoes",
  "triathlon-shoes": "Triathlon Shoes",
  "shoe-accessories": "Shoe Accessories",
  "footbeds-insoles": "Footbeds & Insoles",
  // Accessories
  "cycling-glasses": "Cycling Glasses",
  "bags-storage": "Bags & Storage",
  "bottle-cages": "Bottle Cages",
  "hydration-systems": "Hydration Systems",
  "chamois-cream-rider-care": "Chamois Cream & Rider Care",
  "computer-mounts": "Computer Mounts",
  "bike-accessories": "Bike Accessories",
  // Nutrition
  "energy-gels": "Energy Gels",
  "energy-bars": "Energy Bars",
  "energy-chews": "Energy Chews",
  "electrolytes-hydration": "Electrolytes & Hydration",
  "protein-recovery": "Protein & Recovery",
  supplements: "Supplements",
  "energy-shots": "Energy Shots",
  // Bike Care & Maintenance
  "chain-lubricants": "Chain Lubricants",
  "cleaners-degreasers": "Cleaners & Degreasers",
  "cleaning-kits": "Cleaning Kits",
  brushes: "Brushes",
  "grease-assembly-compounds": "Grease & Assembly Compounds",
  "workshop-tools": "Workshop Tools",
  "puncture-repair-kits": "Puncture Repair Kits",
  "tyre-levers": "Tyre Levers",
};

/** Flattened product types, in menu order. */
export const subcategories: Subcategory[] = categories.flatMap((c) =>
  c.sections
    .filter((s) => s.kind !== "brand")
    .flatMap((s) =>
      s.items.map((slug) => ({
        slug,
        name: SUBCATEGORY_NAMES[slug] ?? slug,
        category: c.slug,
        section: s.title,
        future: s.kind === "future" || undefined,
        note: s.note,
      })),
    ),
);

/* ---------------------------------------------------------------
   BRANDS — Brand Placement sheet
   --------------------------------------------------------------- */

export const brands: Brand[] = [
  {
    slug: "100-percent",
    name: "100%",
    treatment: "filter",
    categories: ["accessories"],
    subcategory: "cycling-glasses",
    note: "Keep the official numeric brand styling.",
  },
  { slug: "bmc", name: "BMC", treatment: "filter", categories: ["road-bikes-framesets"] },
  { slug: "bont", name: "Bont", treatment: "filter", categories: ["shoes"] },
  {
    slug: "cannondale",
    name: "Cannondale",
    treatment: "filter",
    categories: ["road-bikes-framesets"],
  },
  { slug: "canyon", name: "Canyon", treatment: "filter", categories: ["road-bikes-framesets"] },
  {
    slug: "cervelo",
    name: "Cervélo",
    treatment: "filter",
    categories: ["road-bikes-framesets"],
    note: "Use the accented spelling where supported.",
  },
  { slug: "cube", name: "Cube", treatment: "filter", categories: ["road-bikes-framesets"] },
  { slug: "dmt", name: "DMT", treatment: "filter", categories: ["shoes"] },
  {
    slug: "dynamic-bike-care",
    name: "Dynamic Bike Care",
    treatment: "filter",
    categories: ["bike-care-maintenance"],
    note: "Do not use 'Dynamic care' as a subcategory.",
  },
  { slug: "fizik", name: "Fizik", treatment: "filter", categories: ["helmets", "shoes"] },
  {
    slug: "garmin",
    name: "Garmin",
    treatment: "filter",
    categories: ["electronics"],
    note: "Do not label the category 'Computer Garmin'.",
  },
  { slug: "giro", name: "Giro", treatment: "filter", categories: ["helmets"] },
  { slug: "merida", name: "Merida", treatment: "filter", categories: ["road-bikes-framesets"] },
  {
    slug: "met",
    name: "MET",
    treatment: "filter",
    categories: ["helmets"],
    note: "Use uppercase brand styling.",
  },
  {
    slug: "oakley",
    name: "Oakley",
    treatment: "filter",
    categories: ["accessories"],
    subcategory: "cycling-glasses",
  },
  {
    slug: "pinarello",
    name: "Pinarello",
    treatment: "filter",
    categories: ["road-bikes-framesets"],
  },
  {
    slug: "scicon",
    name: "Scicon",
    treatment: "filter",
    categories: ["accessories"],
    subcategory: "cycling-glasses",
  },
  { slug: "scott", name: "Scott", treatment: "filter", categories: ["road-bikes-framesets"] },
  {
    slug: "shimano",
    name: "Shimano",
    treatment: "filter",
    categories: ["shoes", "components"],
    note: "Can appear across relevant product filters.",
  },
  {
    slug: "specialized",
    name: "Specialized",
    treatment: "direct",
    categories: ["road-bikes-framesets", "helmets", "shoes"],
    note: "Client-approved placement under Road Bikes & Framesets; also relevant to helmets and shoes.",
  },
  {
    slug: "s-works",
    name: "S-Works",
    treatment: "direct",
    categories: ["road-bikes-framesets"],
    note: "Client-approved standalone link alongside Specialized. Elsewhere it stays a Specialized collection.",
  },
  {
    slug: "sweet-protection",
    name: "Sweet Protection",
    treatment: "filter",
    categories: ["helmets"],
  },
  { slug: "trek", name: "Trek", treatment: "filter", categories: ["road-bikes-framesets"] },
  {
    slug: "xlab",
    name: "XLAB",
    treatment: "direct",
    categories: ["road-bikes-framesets", "accessories"],
    note: "Client-approved under Road Bikes & Framesets; also listed under accessories/hydration.",
  },
  {
    slug: "mr-rider",
    name: "MR.RIDER",
    treatment: "filter",
    categories: ["apparel", "nutrition"],
    house: true,
    note: "The club's own label.",
  },
];

/* ---------------------------------------------------------------
   UTILITY NAVIGATION — order 11 and 12
   --------------------------------------------------------------- */

export const utilityNav = [
  {
    href: "/brands",
    label: "Brands",
    note: "Dedicated brand directory; do not mix brands with product types.",
  },
  { href: "/sale", label: "Sale", note: "Promotional and clearance products." },
];

/* ---------------------------------------------------------------
   LOOKUPS
   --------------------------------------------------------------- */

const categoryBySlug = new Map(categories.map((c) => [c.slug, c]));
const subcategoryBySlug = new Map(subcategories.map((s) => [s.slug, s]));
const brandBySlug = new Map(brands.map((b) => [b.slug, b]));

export function getCategory(slug: string | undefined): Category | undefined {
  return slug ? categoryBySlug.get(slug) : undefined;
}

export function getSubcategory(slug: string | undefined): Subcategory | undefined {
  return slug ? subcategoryBySlug.get(slug) : undefined;
}

export function getBrand(slug: string | undefined): Brand | undefined {
  return slug ? brandBySlug.get(slug) : undefined;
}

export function categoryName(slug: string): string {
  return categoryBySlug.get(slug)?.name ?? slug;
}

export function subcategoryName(slug: string | undefined): string {
  if (!slug) return "";
  return subcategoryBySlug.get(slug)?.name ?? slug;
}

export function brandName(slug: string): string {
  return brandBySlug.get(slug)?.name ?? slug;
}

/** Product types belonging to a category, future-expansion rows excluded by default. */
export function subcategoriesOf(
  categorySlug: string,
  { includeFuture = false } = {},
): Subcategory[] {
  return subcategories.filter(
    (s) => s.category === categorySlug && (includeFuture || !s.future),
  );
}

/** The client brand directory — the club's own label is listed separately. */
export const directoryBrands = brands.filter((b) => !b.house);

/** Brands the sheet places inside a category, in menu order. */
export function brandsOf(categorySlug: string): Brand[] {
  const category = categoryBySlug.get(categorySlug);
  if (!category) return [];
  const ordered = category.sections
    .filter((s) => s.kind === "brand")
    .flatMap((s) => s.items);
  return ordered
    .map((slug) => brandBySlug.get(slug))
    .filter((b): b is Brand => Boolean(b));
}

/* ---------------------------------------------------------------
   BREADCRUMBS — Home > Components > Drivetrain > Chains
   --------------------------------------------------------------- */

export type Crumb = { label: string; href?: string };

export function breadcrumbs(
  categorySlug?: string,
  subcategorySlug?: string,
  brandSlug?: string,
): Crumb[] {
  const trail: Crumb[] = [{ label: "Home", href: "/" }, { label: "Shop", href: "/shop" }];
  const category = getCategory(categorySlug);
  if (category) {
    trail.push({ label: category.name, href: `/shop?cat=${category.slug}` });
  }
  const sub = getSubcategory(subcategorySlug);
  if (sub && (!category || sub.category === category.slug)) {
    const parent = getCategory(sub.category);
    if (!category && parent) {
      trail.splice(2, 0, { label: parent.name, href: `/shop?cat=${parent.slug}` });
    }
    // The section itself is a menu grouping, not a filterable page.
    if (sub.section !== "Shop by Product" && sub.section !== "Shop by Type") {
      trail.push({ label: sub.section });
    }
    trail.push({ label: sub.name });
  }
  const brand = getBrand(brandSlug);
  if (brand) trail.push({ label: brand.name });
  return trail;
}

/* ---------------------------------------------------------------
   LEGACY SLUGS — keep pre-restructure links and bookmarks working
   --------------------------------------------------------------- */

export const legacyCategorySlugs: Record<string, { cat: string; sub?: string }> = {
  accessories: { cat: "accessories" },
  apparel: { cat: "apparel" },
  helmets: { cat: "helmets" },
  shoes: { cat: "shoes" },
  nutrition: { cat: "nutrition" },
  components: { cat: "components" },
  drivetrain: { cat: "components" },
  parts: { cat: "components" },
  tyres: { cat: "wheels-tyres-tubes" },
  "road-bikes": { cat: "road-bikes-framesets", sub: "road-bikes" },
  "frame-sets": { cat: "road-bikes-framesets", sub: "framesets" },
  "bike-maintenance": { cat: "bike-care-maintenance" },
};

/** Resolve a ?cat= value, accepting both current and pre-restructure slugs. */
export function resolveCategoryParam(
  cat?: string,
  sub?: string,
): { cat?: string; sub?: string } {
  if (!cat) return { cat: undefined, sub: getSubcategory(sub)?.slug };
  if (categoryBySlug.has(cat)) return { cat, sub: getSubcategory(sub)?.slug };
  const legacy = legacyCategorySlugs[cat];
  if (legacy) return { cat: legacy.cat, sub: getSubcategory(sub)?.slug ?? legacy.sub };
  return { cat: undefined, sub: getSubcategory(sub)?.slug };
}

/* ---------------------------------------------------------------
   SEARCH SYNONYMS — Developer Notes: map common terms and
   misspellings so tyre/tire, HR strap, bar and tube all land.
   --------------------------------------------------------------- */

export const synonymGroups: string[][] = [
  ["tyre", "tyres", "tire", "tires"],
  ["tube", "tubes", "inner tube", "inner tubes"],
  ["bar", "bars", "handlebar", "handlebars"],
  ["heart rate", "heart-rate", "hr strap", "heart rate strap", "hrm"],
  ["computer", "gps", "head unit", "bike computer"],
  ["power meter", "powermeter", "power"],
  ["bib", "bibs", "bib short", "bib shorts"],
  ["gilet", "gilets", "vest", "vests"],
  ["cap", "caps", "hat", "hats"],
  ["crankset", "cranksets", "crank", "chainset"],
  ["groupset", "groupsets", "group set"],
  ["seatpost", "seatposts", "seat post"],
  ["headset", "headsets", "head set"],
  ["brake pad", "brake pads", "break pads", "pads"],
  ["puncture", "puncher", "repair kit", "repair kits"],
];

/** Expand a search term into itself plus any mapped synonyms. */
export function expandQuery(query: string): string[] {
  const term = query.trim().toLowerCase();
  if (!term) return [];
  const matches = new Set<string>([term]);
  for (const group of synonymGroups) {
    if (group.some((word) => word === term || word.includes(term) || term.includes(word))) {
      for (const word of group) matches.add(word);
    }
  }
  return [...matches];
}
