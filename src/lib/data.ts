/* Frontend mock data — replaced by Supabase tables in the backend phase.
   Categories, product types and brands come from the client-approved
   navigation taxonomy in taxonomy.ts. */

export {
  brandName,
  brands,
  categories,
  categoryName,
  subcategories,
  subcategoryName,
  type Brand,
  type Category,
  type Subcategory,
} from "@/lib/taxonomy";

export type Product = {
  id: string;
  name: string;
  /** Brand slug — see taxonomy.brands. */
  brand: string;
  /** Primary category slug. */
  category: string;
  /** Primary product-type slug. */
  subcategory: string;
  /** Extra brand/collection slugs the product also belongs to (no duplicate records). */
  collections?: string[];
  /** Supplier copy as a sanitised HTML subset — see migration 17. Undefined on demo rows. */
  description?: string;
  /** Up to five photos — storage paths or URLs. images[0] is the primary shot. */
  images?: string[];
  /* No price. The floor carries no pricing — riders open an inquiry on a
     product and the club answers in the thread (see lib/inquiries.ts). */
  condition: "new" | "pre-owned";
  stock: number;
  addedDaysAgo: number;
  featured?: boolean;
  clearance?: boolean;
};

export const products: Product[] = [
  // ROAD BIKES · FRAMESETS
  { id: "rbf-1",  name: "S-Works Tarmac SL8 Disc",        brand: "s-works",    category: "road-bikes", subcategory: "road-bikes", collections: ["specialized"], condition: "new", stock: 2, addedDaysAgo: 0, featured: true },
  { id: "rbf-2",  name: "Cervélo S5 Disc Ultegra Di2",    brand: "cervelo",    category: "road-bikes", subcategory: "road-bikes", condition: "new", stock: 3, addedDaysAgo: 4 },
  { id: "rbf-3",  name: "Pinarello Dogma F Frameset",     brand: "pinarello",  category: "framesets", subcategory: "framesets", condition: "new", stock: 2, addedDaysAgo: 2 },
  { id: "rbf-4",  name: "Trek Émonda SLR Frameset",       brand: "trek",       category: "framesets", subcategory: "framesets", condition: "new", stock: 4, addedDaysAgo: 11 },
  { id: "rbf-5",  name: "Canyon Ultimate CF SLX",         brand: "canyon",     category: "road-bikes", subcategory: "road-bikes", condition: "new", stock: 3, addedDaysAgo: 7 },
  { id: "rbf-6",  name: "BMC Teammachine SLR One",        brand: "bmc",        category: "road-bikes", subcategory: "road-bikes", condition: "new", stock: 1, addedDaysAgo: 15 },
  { id: "rbf-7",  name: "Cannondale SuperSix EVO 3",      brand: "cannondale", category: "road-bikes", subcategory: "road-bikes", condition: "new", stock: 2, addedDaysAgo: 21, clearance: true },
  { id: "rbf-8",  name: "Scott Addict RC 20",             brand: "scott",      category: "road-bikes", subcategory: "road-bikes", condition: "new", stock: 3, addedDaysAgo: 9 },
  { id: "rbf-9",  name: "Merida Reacto 6000",             brand: "merida",     category: "road-bikes", subcategory: "road-bikes", condition: "new", stock: 4, addedDaysAgo: 18 },
  { id: "rbf-10", name: "Cube Litening C:68X Frameset",   brand: "cube",       category: "framesets", subcategory: "framesets", condition: "new", stock: 3, addedDaysAgo: 5 },
  { id: "rbf-11", name: "Allez Sprint Frameset",          brand: "specialized",category: "framesets", subcategory: "framesets", condition: "new", stock: 2, addedDaysAgo: 33, clearance: true },
  { id: "rbf-12", name: "Trek Madone SLR 9",              brand: "trek",       category: "road-bikes", subcategory: "road-bikes", condition: "pre-owned", stock: 1, addedDaysAgo: 1 },

  // COMPONENTS · Drivetrain
  { id: "cmp-1",  name: "Dura-Ace R9200 Groupset",        brand: "shimano",    category: "components", subcategory: "groupsets", condition: "new", stock: 4, addedDaysAgo: 0, featured: true },
  { id: "cmp-2",  name: "Ultegra R8100 Crankset 172.5",   brand: "shimano",    category: "components", subcategory: "cranksets", condition: "new", stock: 9, addedDaysAgo: 6 },
  { id: "cmp-3",  name: "Chainring & Spider Set 52/36",   brand: "shimano",    category: "components", subcategory: "chainrings-spiders", condition: "new", stock: 12, addedDaysAgo: 12 },
  { id: "cmp-4",  name: "Ultegra 11-30 Cassette",         brand: "shimano",    category: "components", subcategory: "cassettes", condition: "new", stock: 18, addedDaysAgo: 3 },
  { id: "cmp-5",  name: "Dura-Ace 12-Speed Chain",        brand: "shimano",    category: "components", subcategory: "chains", condition: "new", stock: 40, addedDaysAgo: 1 },
  { id: "cmp-6",  name: "Di2 Shifter Pair",               brand: "shimano",    category: "components", subcategory: "shifters", condition: "new", stock: 6, addedDaysAgo: 14 },
  { id: "cmp-7",  name: "Ultegra Rear Derailleur",        brand: "shimano",    category: "components", subcategory: "derailleurs", condition: "new", stock: 8, addedDaysAgo: 8 },
  // COMPONENTS · Brakes
  { id: "cmp-8",  name: "Resin Disc Brake Pads",          brand: "shimano",    category: "components", subcategory: "brake-pads", condition: "new", stock: 55, addedDaysAgo: 2 },
  { id: "cmp-9",  name: "Centerlock Rotor 160mm",         brand: "shimano",    category: "components", subcategory: "disc-brake-rotors", condition: "new", stock: 30, addedDaysAgo: 9 },
  { id: "cmp-10", name: "Hydraulic Brake Hose Kit",       brand: "shimano",    category: "components", subcategory: "brake-cables-hoses", condition: "new", stock: 22, addedDaysAgo: 19 },
  // COMPONENTS · Cockpit & Contact Points
  { id: "cmp-11", name: "Aerofly II Handlebars",          brand: "specialized",category: "components", subcategory: "handlebars", condition: "new", stock: 10, addedDaysAgo: 4 },
  { id: "cmp-12", name: "Alloy Stem 100mm",               brand: "specialized",category: "components", subcategory: "stems", condition: "new", stock: 24, addedDaysAgo: 16 },
  { id: "cmp-13", name: "Integrated Headset Kit",         brand: "cannondale", category: "components", subcategory: "headsets", condition: "new", stock: 14, addedDaysAgo: 22 },
  { id: "cmp-14", name: "Fizik Vento Bar Tape",           brand: "fizik",      category: "components", subcategory: "bar-tape", condition: "new", stock: 48, addedDaysAgo: 0 },
  { id: "cmp-15", name: "Fizik Antares R3 Saddle",        brand: "fizik",      category: "components", subcategory: "saddles", condition: "new", stock: 11, addedDaysAgo: 5 },
  { id: "cmp-16", name: "Zero-Offset Carbon Seatpost",    brand: "trek",       category: "components", subcategory: "seatposts", condition: "new", stock: 6, addedDaysAgo: 30, clearance: true },
  { id: "cmp-17", name: "Alloy Seat Collar 34.9",         brand: "trek",       category: "components", subcategory: "seat-collars", condition: "new", stock: 35, addedDaysAgo: 25 },
  // COMPONENTS · Pedals
  { id: "cmp-18", name: "Dura-Ace SPD-SL Pedals",         brand: "shimano",    category: "components", subcategory: "pedals", condition: "new", stock: 13, addedDaysAgo: 1 },
  { id: "cmp-19", name: "SPD-SL Cleat Set",               brand: "shimano",    category: "components", subcategory: "cleats", condition: "new", stock: 60, addedDaysAgo: 7 },
  // COMPONENTS · Cables, Spares & Small Parts
  { id: "cmp-20", name: "Shift Cable & Housing Set",      brand: "shimano",    category: "components", subcategory: "cables", condition: "new", stock: 42, addedDaysAgo: 13 },
  { id: "cmp-21", name: "Universal UDH Derailleur Hanger",brand: "canyon",     category: "components", subcategory: "derailleur-hangers", condition: "new", stock: 50, addedDaysAgo: 10 },
  { id: "cmp-22", name: "Frame Bolt & Fixing Kit",        brand: "bmc",        category: "components", subcategory: "replacement-parts", condition: "new", stock: 44, addedDaysAgo: 27 },
  { id: "cmp-23", name: "Workshop Small Parts Bin",       brand: "bmc",        category: "components", subcategory: "other-components", condition: "new", stock: 16, addedDaysAgo: 35 },

  // WHEELS, TYRES & TUBES
  { id: "wtt-1",  name: "Roval Rapide CLX II Wheelset",   brand: "specialized",category: "wheels-tyres-tubes", subcategory: "road-wheels", condition: "new", stock: 4, addedDaysAgo: 0, featured: true },
  { id: "wtt-2",  name: "Turbo Cotton 26c Clincher",      brand: "specialized",category: "wheels-tyres-tubes", subcategory: "clincher-tyres", condition: "new", stock: 36, addedDaysAgo: 3 },
  { id: "wtt-3",  name: "S-Works Mondo 28c Tubeless",     brand: "s-works",    category: "wheels-tyres-tubes", subcategory: "tubeless-tyres", collections: ["specialized"], condition: "new", stock: 30, addedDaysAgo: 1 },
  { id: "wtt-4",  name: "Tubular Race Tyre 25c",          brand: "specialized",category: "wheels-tyres-tubes", subcategory: "tubular-tyres", condition: "new", stock: 12, addedDaysAgo: 40, clearance: true },
  { id: "wtt-5",  name: "Latex Inner Tube 700×25",        brand: "specialized",category: "wheels-tyres-tubes", subcategory: "inner-tubes", condition: "new", stock: 80, addedDaysAgo: 5 },
  { id: "wtt-6",  name: "Tubeless Sealant 1L",            brand: "specialized",category: "wheels-tyres-tubes", subcategory: "tubeless-sealant", condition: "new", stock: 45, addedDaysAgo: 2 },
  { id: "wtt-7",  name: "Alloy Tubeless Valves 60mm",     brand: "specialized",category: "wheels-tyres-tubes", subcategory: "tubeless-valves", condition: "new", stock: 52, addedDaysAgo: 11 },
  { id: "wtt-8",  name: "Tubeless Rim Tape 25mm ×10m",    brand: "specialized",category: "wheels-tyres-tubes", subcategory: "tubeless-rim-tape", condition: "new", stock: 48, addedDaysAgo: 17 },
  { id: "wtt-9",  name: "Wheel Bag Set (Pair)",           brand: "specialized",category: "wheels-tyres-tubes", subcategory: "wheel-accessories", condition: "new", stock: 9, addedDaysAgo: 8 },

  // ELECTRONICS
  { id: "ele-1",  name: "Garmin Edge 1050",               brand: "garmin",     category: "electronics", subcategory: "bike-computers", condition: "new", stock: 8, addedDaysAgo: 0, featured: true },
  { id: "ele-2",  name: "Garmin HRM-Pro Plus",            brand: "garmin",     category: "electronics", subcategory: "heart-rate-monitors", condition: "new", stock: 26, addedDaysAgo: 4 },
  { id: "ele-3",  name: "Garmin Speed & Cadence Sensor 2",brand: "garmin",     category: "electronics", subcategory: "speed-cadence-sensors", condition: "new", stock: 34, addedDaysAgo: 9 },
  { id: "ele-4",  name: "Garmin Rally RS200 Power Meter", brand: "garmin",     category: "electronics", subcategory: "power-meters", condition: "new", stock: 5, addedDaysAgo: 2 },
  { id: "ele-5",  name: "Front Light 1200 Lumen",         brand: "garmin",     category: "electronics", subcategory: "front-lights", condition: "new", stock: 20, addedDaysAgo: 6 },
  { id: "ele-6",  name: "Rear Light 100 Lumen",           brand: "garmin",     category: "electronics", subcategory: "rear-lights", condition: "new", stock: 28, addedDaysAgo: 12 },
  { id: "ele-7",  name: "Garmin Varia RCT715 Radar Light",brand: "garmin",     category: "electronics", subcategory: "radar-lights", condition: "new", stock: 7, addedDaysAgo: 1 },
  { id: "ele-8",  name: "Charging & Mount Cable Kit",     brand: "garmin",     category: "electronics", subcategory: "electronic-accessories", condition: "new", stock: 30, addedDaysAgo: 26, clearance: true },

  // APPAREL
  { id: "app-1",  name: "SL Air Jersey",                  brand: "specialized",category: "apparel", subcategory: "jerseys", condition: "new", stock: 26, addedDaysAgo: 0, featured: true },
  { id: "app-2",  name: "SL Race Bib Shorts",             brand: "specialized",category: "apparel", subcategory: "bib-shorts", condition: "new", stock: 20, addedDaysAgo: 3 },
  { id: "app-3",  name: "RBX Waist Shorts",               brand: "specialized",category: "apparel", subcategory: "waist-shorts", condition: "new", stock: 18, addedDaysAgo: 10 },
  { id: "app-4",  name: "Deflect Wind Gilet",             brand: "specialized",category: "apparel", subcategory: "gilets-vests", condition: "new", stock: 9, addedDaysAgo: 24, clearance: true },
  { id: "app-5",  name: "Grail Long Finger Gloves",       brand: "specialized",category: "apparel", subcategory: "gloves", condition: "new", stock: 30, addedDaysAgo: 5 },
  { id: "app-6",  name: "Club Tall Socks",                brand: "mr-rider",   category: "apparel", subcategory: "socks", condition: "new", stock: 60, addedDaysAgo: 1 },
  { id: "app-7",  name: "Club Cotton Cap",                brand: "mr-rider",   category: "apparel", subcategory: "caps-hats", condition: "new", stock: 44, addedDaysAgo: 7 },

  // HELMETS
  { id: "hel-1",  name: "S-Works Prevail 3",              brand: "specialized",category: "helmets", subcategory: "road-helmets", collections: ["s-works"], condition: "new", stock: 6, addedDaysAgo: 0, featured: true },
  { id: "hel-2",  name: "Giro Eclipse Spherical",         brand: "giro",       category: "helmets", subcategory: "aero-helmets", condition: "new", stock: 10, addedDaysAgo: 4 },
  { id: "hel-3",  name: "MET Trenta 3K Carbon",           brand: "met",        category: "helmets", subcategory: "road-helmets", condition: "new", stock: 7, addedDaysAgo: 8 },
  { id: "hel-4",  name: "Sweet Protection Falconer 2Vi",  brand: "sweet-protection", category: "helmets", subcategory: "road-helmets", condition: "new", stock: 9, addedDaysAgo: 13 },
  { id: "hel-5",  name: "Fizik Kudo Aero Helmet",         brand: "fizik",      category: "helmets", subcategory: "aero-helmets", condition: "new", stock: 8, addedDaysAgo: 2 },
  { id: "hel-6",  name: "S-Works TT 5 Helmet",            brand: "specialized",category: "helmets", subcategory: "tt-triathlon-helmets", collections: ["s-works"], condition: "new", stock: 4, addedDaysAgo: 6 },
  { id: "hel-7",  name: "Giro Aerohead II TT",            brand: "giro",       category: "helmets", subcategory: "tt-triathlon-helmets", condition: "new", stock: 5, addedDaysAgo: 16 },
  { id: "hel-8",  name: "Helmet Pad & Strap Kit",         brand: "met",        category: "helmets", subcategory: "helmet-accessories", condition: "new", stock: 26, addedDaysAgo: 29, clearance: true },

  // SHOES
  { id: "sho-1",  name: "S-Works Torch Road Shoes",       brand: "specialized",category: "shoes", subcategory: "road-cycling-shoes", collections: ["s-works"], condition: "new", stock: 5, addedDaysAgo: 0, featured: true },
  { id: "sho-2",  name: "Bont Vaypor S",                  brand: "bont",       category: "shoes", subcategory: "road-cycling-shoes", condition: "new", stock: 6, addedDaysAgo: 5 },
  { id: "sho-3",  name: "DMT KR1 Knit Road Shoes",        brand: "dmt",        category: "shoes", subcategory: "road-cycling-shoes", condition: "new", stock: 7, addedDaysAgo: 9 },
  { id: "sho-4",  name: "Fizik Vento Infinito Carbon 2",  brand: "fizik",      category: "shoes", subcategory: "road-cycling-shoes", condition: "new", stock: 8, addedDaysAgo: 3 },
  { id: "sho-5",  name: "Shimano RC903 S-Phyre",          brand: "shimano",    category: "shoes", subcategory: "road-cycling-shoes", condition: "new", stock: 4, addedDaysAgo: 12 },
  { id: "sho-6",  name: "Bont Riot TR+ Triathlon",        brand: "bont",       category: "shoes", subcategory: "triathlon-shoes", condition: "new", stock: 9, addedDaysAgo: 7 },
  { id: "sho-7",  name: "Shimano TR9 Tri Shoes",          brand: "shimano",    category: "shoes", subcategory: "triathlon-shoes", condition: "new", stock: 5, addedDaysAgo: 31, clearance: true },
  { id: "sho-8",  name: "Toe Cover & Cleat Bolt Kit",     brand: "shimano",    category: "shoes", subcategory: "shoe-accessories", condition: "new", stock: 40, addedDaysAgo: 15 },
  { id: "sho-9",  name: "Custom Carbon Footbeds",         brand: "bont",       category: "shoes", subcategory: "footbeds-insoles", condition: "new", stock: 22, addedDaysAgo: 2 },

  // ACCESSORIES
  { id: "acc-1",  name: "Oakley Sutro Lite Sweep",        brand: "oakley",     category: "accessories", subcategory: "cycling-glasses", condition: "new", stock: 14, addedDaysAgo: 0, featured: true },
  { id: "acc-2",  name: "100% Speedcraft SL",             brand: "100-percent",category: "accessories", subcategory: "cycling-glasses", condition: "new", stock: 18, addedDaysAgo: 4 },
  { id: "acc-3",  name: "Scicon Aerowing Lamon",          brand: "scicon",     category: "accessories", subcategory: "cycling-glasses", condition: "new", stock: 11, addedDaysAgo: 6 },
  { id: "acc-4",  name: "Scicon Aerocomfort Bike Bag",    brand: "scicon",     category: "accessories", subcategory: "bags-storage", condition: "new", stock: 6, addedDaysAgo: 10 },
  { id: "acc-5",  name: "S-Works Carbon Bottle Cage",     brand: "specialized",category: "accessories", subcategory: "bottle-cages", collections: ["s-works"], condition: "new", stock: 25, addedDaysAgo: 2 },
  { id: "acc-6",  name: "XLAB Torpedo Versa 500",         brand: "xlab",       category: "accessories", subcategory: "hydration-systems", condition: "new", stock: 16, addedDaysAgo: 8 },
  { id: "acc-7",  name: "XLAB Delta Wing 400 Rear Hydration", brand: "xlab",   category: "accessories", subcategory: "hydration-systems", condition: "new", stock: 7, addedDaysAgo: 28, clearance: true },
  { id: "acc-8",  name: "Chamois Cream 150ml",            brand: "specialized",category: "accessories", subcategory: "chamois-cream-rider-care", condition: "new", stock: 48, addedDaysAgo: 3 },
  { id: "acc-9",  name: "Garmin Out-Front Computer Mount",brand: "garmin",     category: "accessories", subcategory: "computer-mounts", condition: "new", stock: 32, addedDaysAgo: 1 },
  { id: "acc-10", name: "Frame Protection & Bell Kit",    brand: "specialized",category: "accessories", subcategory: "bike-accessories", condition: "new", stock: 38, addedDaysAgo: 20 },

  // NUTRITION
  { id: "nut-1",  name: "Race Energy Gel — Box of 24",    brand: "mr-rider",   category: "nutrition", subcategory: "energy-gels", condition: "new", stock: 60, addedDaysAgo: 0 },
  { id: "nut-2",  name: "Oat & Date Energy Bars ×12",     brand: "mr-rider",   category: "nutrition", subcategory: "energy-bars", condition: "new", stock: 55, addedDaysAgo: 2 },
  { id: "nut-3",  name: "Energy Chews ×20",               brand: "mr-rider",   category: "nutrition", subcategory: "energy-chews", condition: "new", stock: 48, addedDaysAgo: 6 },
  { id: "nut-4",  name: "Electrolyte Mix 1kg",            brand: "mr-rider",   category: "nutrition", subcategory: "electrolytes-hydration", condition: "new", stock: 42, addedDaysAgo: 4 },
  { id: "nut-5",  name: "Recovery Protein 2kg",           brand: "mr-rider",   category: "nutrition", subcategory: "protein-recovery", condition: "new", stock: 26, addedDaysAgo: 9 },
  { id: "nut-6",  name: "Daily Rider Supplement Pack",    brand: "mr-rider",   category: "nutrition", subcategory: "supplements", condition: "new", stock: 20, addedDaysAgo: 23, clearance: true },
  { id: "nut-7",  name: "Caffeine Energy Shots ×12",      brand: "mr-rider",   category: "nutrition", subcategory: "energy-shots", condition: "new", stock: 36, addedDaysAgo: 1 },

  // BIKE CARE & MAINTENANCE
  { id: "bcm-1",  name: "Dynamic Dry Chain Lube 100ml",   brand: "dynamic-bike-care", category: "bike-care-maintenance", subcategory: "chain-lubricants", condition: "new", stock: 80, addedDaysAgo: 0 },
  { id: "bcm-2",  name: "Dynamic Bike Cleaner 1L",        brand: "dynamic-bike-care", category: "bike-care-maintenance", subcategory: "cleaners-degreasers", condition: "new", stock: 65, addedDaysAgo: 3 },
  { id: "bcm-3",  name: "Dynamic Cleaning Kit Pro",       brand: "dynamic-bike-care", category: "bike-care-maintenance", subcategory: "cleaning-kits", condition: "new", stock: 18, addedDaysAgo: 7 },
  { id: "bcm-4",  name: "Drivetrain Brush Set",           brand: "dynamic-bike-care", category: "bike-care-maintenance", subcategory: "brushes", condition: "new", stock: 40, addedDaysAgo: 11 },
  { id: "bcm-5",  name: "Carbon Assembly Paste 100g",     brand: "dynamic-bike-care", category: "bike-care-maintenance", subcategory: "grease-assembly-compounds", condition: "new", stock: 44, addedDaysAgo: 5 },
  { id: "bcm-6",  name: "Workshop Torque Wrench Set",     brand: "shimano",           category: "bike-care-maintenance", subcategory: "workshop-tools", condition: "new", stock: 12, addedDaysAgo: 27, clearance: true },
  { id: "bcm-7",  name: "Puncture Repair Kit",            brand: "dynamic-bike-care", category: "bike-care-maintenance", subcategory: "puncture-repair-kits", condition: "new", stock: 70, addedDaysAgo: 1 },
  { id: "bcm-8",  name: "Carbon Tyre Levers ×3",          brand: "dynamic-bike-care", category: "bike-care-maintenance", subcategory: "tyre-levers", condition: "new", stock: 90, addedDaysAgo: 14 },
];

export const todaysListings = products.filter((p) => p.addedDaysAgo === 0);
export const yesterdaysListings = products.filter((p) => p.addedDaysAgo === 1);
/* Clearance is now the flag alone — there is no discount to sort by. */
export const clearanceItems = products.filter((p) => p.clearance);
export const featuredItems = products.filter((p) => p.featured);

/** True when a product carries the given brand directly or as a collection. */
export function matchesBrand(p: Product, brandSlug: string): boolean {
  return p.brand === brandSlug || (p.collections?.includes(brandSlug) ?? false);
}

/** Money formatter — coaching programs and auction bids only; stock has no price. */
export function usd(n: number): string {
  return "$" + n.toLocaleString("en-US");
}

export type Coach = {
  id: string;
  name: string;
  country: string;
  code: string;
  discipline: string;
  languages: string;
  slots: number; // 0 = waitlist
};

export const coaches: Coach[] = [
  { id: "c1", name: "Mateo Vidal", country: "Spain", code: "ESP", discipline: "Climbing", languages: "EN / ES", slots: 2 },
  { id: "c2", name: "Anouk de Vries", country: "Netherlands", code: "NED", discipline: "Time Trial", languages: "EN / NL", slots: 3 },
  { id: "c3", name: "Kenji Sato", country: "Japan", code: "JPN", discipline: "Track & Sprint", languages: "EN / JA", slots: 0 },
  { id: "c4", name: "Lena Fischer", country: "Germany", code: "GER", discipline: "Endurance", languages: "EN / DE", slots: 4 },
  { id: "c5", name: "Tumi Adebayo", country: "Nigeria", code: "NGA", discipline: "Sprint Power", languages: "EN", slots: 2 },
  { id: "c6", name: "Clara Moreau", country: "France", code: "FRA", discipline: "Road Race Craft", languages: "EN / FR", slots: 1 },
  { id: "c7", name: "Harriet Cole", country: "Australia", code: "AUS", discipline: "Nutrition & Fueling", languages: "EN", slots: 5 },
  { id: "c8", name: "Diego Fuentes", country: "Colombia", code: "COL", discipline: "Altitude Blocks", languages: "EN / ES", slots: 0 },
];

export type Program = {
  id: string;
  name: string;
  weeks: number;
  level: string;
  focus: string;
  price: number;
};

export const programs: Program[] = [
  { id: "p1", name: "First 1,000K", weeks: 8, level: "Beginner", focus: "Build the habit. Four structured rides a week, zero guesswork.", price: 149 },
  { id: "p2", name: "Climb Lab", weeks: 12, level: "Intermediate", focus: "Threshold work and low-cadence strength for long gradients.", price: 239 },
  { id: "p3", name: "Crit Engine", weeks: 10, level: "Advanced", focus: "Repeat-sprint capacity, cornering craft and race-day tactics.", price: 219 },
  { id: "p4", name: "Winter Block", weeks: 16, level: "All levels", focus: "Indoor base miles plus strength — arrive at spring already fit.", price: 299 },
];

export type Lot = {
  id: string;
  lot: string;
  name: string;
  spec: string;
  condition: string;
  currentBid: number;
  bids: number;
  endsIn: string;
};

export const auctionLots: Lot[] = [
  { id: "l1", lot: "01", name: "Team-Issue SL9 Frameset", spec: "54cm · race-used one season · workshop inspected", condition: "RACE-USED", currentBid: 1240, bids: 18, endsIn: "6H 24M" },
  { id: "l2", lot: "02", name: "1989 Steel Classic Racer", spec: "Columbus SLX tubing · original chrome fork · collector grade", condition: "PRE-OWNED", currentBid: 890, bids: 31, endsIn: "2H 08M" },
  { id: "l3", lot: "03", name: "50mm Carbon Wheelset", spec: "Rim brake · new bearings fitted · true and tensioned", condition: "RACE-USED", currentBid: 410, bids: 12, endsIn: "1D 04H" },
  { id: "l4", lot: "04", name: "Dual-Side Power Crank", spec: "172.5mm · fresh battery seals · calibration verified", condition: "PRE-OWNED", currentBid: 305, bids: 9, endsIn: "2D 12H" },
  { id: "l5", lot: "05", name: "Founders Club Jersey #001", spec: "Size M · first run · numbered 1 of 1", condition: "NEW", currentBid: 150, bids: 22, endsIn: "5H 40M" },
];
