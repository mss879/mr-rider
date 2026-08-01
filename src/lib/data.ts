/* Frontend mock data — replaced by Supabase tables in the backend phase. */

export type Category = {
  slug: string;
  name: string;
  blurb: string;
};

export const categories: Category[] = [
  { slug: "accessories", name: "Accessories", blurb: "Lights, cages, tape, bags" },
  { slug: "apparel", name: "Apparel", blurb: "Jerseys, bibs, layers" },
  { slug: "helmets", name: "Helmets", blurb: "Aero, road, commute" },
  { slug: "drivetrain", name: "Drivetrain", blurb: "Chains, cassettes, cranks" },
  { slug: "nutrition", name: "Nutrition", blurb: "Gels, mixes, bars" },
  { slug: "parts", name: "Parts", blurb: "Small parts, hard to find" },
  { slug: "tyres", name: "Tyres", blurb: "Race, training, gravel" },
  { slug: "shoes", name: "Shoes", blurb: "Road, track, winter" },
  { slug: "road-bikes", name: "Road Bikes", blurb: "Complete race builds" },
  { slug: "frame-sets", name: "Frame Sets", blurb: "Carbon, steel, track" },
  { slug: "components", name: "Components", blurb: "Wheels, meters, bars" },
  { slug: "bike-maintenance", name: "Bike Maintenance", blurb: "Tools, lube, stands" },
];

export function categoryName(slug: string): string {
  return categories.find((c) => c.slug === slug)?.name ?? slug;
}

export type Product = {
  id: string;
  name: string;
  brand: string;
  category: string;
  price: number;
  compareAt?: number;
  condition: "new" | "pre-owned";
  stock: number;
  addedDaysAgo: number;
  featured?: boolean;
  clearance?: boolean;
};

export const products: Product[] = [
  // ACCESSORIES
  { id: "acc-1", name: "Grip Tape 3.2 Bar Wrap", brand: "VELOCORE", category: "accessories", price: 32, condition: "new", stock: 24, addedDaysAgo: 3 },
  { id: "acc-2", name: "Ti Bottle Cage", brand: "KROM", category: "accessories", price: 58, condition: "new", stock: 11, addedDaysAgo: 0 },
  { id: "acc-3", name: "Beacon 900 Front Light", brand: "PACELINE", category: "accessories", price: 89, condition: "new", stock: 7, addedDaysAgo: 12 },
  { id: "acc-4", name: "Roll-Top Saddle Bag", brand: "RIDGELINE", category: "accessories", price: 44, compareAt: 60, condition: "new", stock: 15, addedDaysAgo: 6, clearance: true },
  // APPAREL
  { id: "app-1", name: "Club Aero Jersey", brand: "MR.RIDER", category: "apparel", price: 120, condition: "new", stock: 30, addedDaysAgo: 0, featured: true },
  { id: "app-2", name: "Race Bib Shorts", brand: "VELOCORE", category: "apparel", price: 165, condition: "new", stock: 18, addedDaysAgo: 9 },
  { id: "app-3", name: "Windbreak Gilet", brand: "RIDGELINE", category: "apparel", price: 98, compareAt: 130, condition: "new", stock: 9, addedDaysAgo: 22, clearance: true },
  { id: "app-4", name: "Team Skinsuit", brand: "MR.RIDER", category: "apparel", price: 240, condition: "new", stock: 6, addedDaysAgo: 1 },
  // HELMETS
  { id: "hel-1", name: "Vortex Aero Helmet", brand: "PACELINE", category: "helmets", price: 289, condition: "new", stock: 5, addedDaysAgo: 5, featured: true },
  { id: "hel-2", name: "Ventis Road Helmet", brand: "PACELINE", category: "helmets", price: 179, condition: "new", stock: 21, addedDaysAgo: 18 },
  { id: "hel-3", name: "Grimpeur SL Helmet", brand: "VELOCORE", category: "helmets", price: 219, condition: "new", stock: 13, addedDaysAgo: 1 },
  { id: "hel-4", name: "Metro Commute Helmet", brand: "KROM", category: "helmets", price: 95, compareAt: 129, condition: "new", stock: 40, addedDaysAgo: 34, clearance: true },
  // DRIVETRAIN
  { id: "drv-1", name: "12-Speed Race Chain", brand: "FERRUM WORKS", category: "drivetrain", price: 62, condition: "new", stock: 33, addedDaysAgo: 2 },
  { id: "drv-2", name: "11-30 Alloy Cassette", brand: "FERRUM WORKS", category: "drivetrain", price: 148, condition: "new", stock: 14, addedDaysAgo: 27 },
  { id: "drv-3", name: "Hollow Crankset 172.5", brand: "VELOCORE", category: "drivetrain", price: 385, condition: "new", stock: 8, addedDaysAgo: 8 },
  { id: "drv-4", name: "Rear Mech Cage Kit", brand: "ALTO LAB", category: "drivetrain", price: 76, compareAt: 98, condition: "new", stock: 19, addedDaysAgo: 33, clearance: true },
  // NUTRITION
  { id: "nut-1", name: "Race Gel — Box of 24", brand: "FUELHAUS", category: "nutrition", price: 49, condition: "new", stock: 50, addedDaysAgo: 0 },
  { id: "nut-2", name: "Electrolyte Mix 1kg", brand: "FUELHAUS", category: "nutrition", price: 34, condition: "new", stock: 42, addedDaysAgo: 5 },
  { id: "nut-3", name: "Recovery Protein 2kg", brand: "FUELHAUS", category: "nutrition", price: 58, condition: "new", stock: 28, addedDaysAgo: 16 },
  { id: "nut-4", name: "Oat Ride Bars ×12", brand: "FUELHAUS", category: "nutrition", price: 27, condition: "new", stock: 60, addedDaysAgo: 1 },
  // PARTS
  { id: "prt-1", name: "Ceramic Bottom Bracket", brand: "ALTO LAB", category: "parts", price: 189, condition: "new", stock: 10, addedDaysAgo: 10 },
  { id: "prt-2", name: "Carbon Brake Pads", brand: "FERRUM WORKS", category: "parts", price: 42, condition: "new", stock: 36, addedDaysAgo: 4 },
  { id: "prt-3", name: "Zero-Offset Seatpost", brand: "VELOCORE", category: "parts", price: 210, compareAt: 260, condition: "new", stock: 7, addedDaysAgo: 30, clearance: true },
  { id: "prt-4", name: "CNC Stem 100mm", brand: "KROM", category: "parts", price: 129, condition: "new", stock: 16, addedDaysAgo: 0 },
  // TYRES
  { id: "tyr-1", name: "28c Tubeless Race Tyre", brand: "TREADLINE", category: "tyres", price: 74, condition: "new", stock: 44, addedDaysAgo: 2 },
  { id: "tyr-2", name: "25c Clincher Tyre", brand: "TREADLINE", category: "tyres", price: 54, condition: "new", stock: 51, addedDaysAgo: 19 },
  { id: "tyr-3", name: "40c Gravel Tyre", brand: "TREADLINE", category: "tyres", price: 68, condition: "new", stock: 25, addedDaysAgo: 7 },
  { id: "tyr-4", name: "TT Tubular 23c", brand: "TREADLINE", category: "tyres", price: 96, compareAt: 120, condition: "new", stock: 12, addedDaysAgo: 45, clearance: true },
  // SHOES
  { id: "sho-1", name: "Podium Carbon Shoes", brand: "VELOCORE", category: "shoes", price: 320, condition: "new", stock: 3, addedDaysAgo: 3, featured: true },
  { id: "sho-2", name: "Lace-Up Road Shoes", brand: "RIDGELINE", category: "shoes", price: 145, condition: "new", stock: 20, addedDaysAgo: 11 },
  { id: "sho-3", name: "Winter Road Boots", brand: "RIDGELINE", category: "shoes", price: 189, compareAt: 240, condition: "new", stock: 8, addedDaysAgo: 60, clearance: true },
  { id: "sho-4", name: "Track Sprint Shoes", brand: "VELOCORE", category: "shoes", price: 275, condition: "new", stock: 5, addedDaysAgo: 1 },
  // ROAD BIKES
  { id: "bik-1", name: "SL9 Disc Race Bike", brand: "VELOCORE", category: "road-bikes", price: 6800, condition: "new", stock: 2, addedDaysAgo: 0, featured: true },
  { id: "bik-2", name: "RC Pro Ultra Build", brand: "RIDGELINE", category: "road-bikes", price: 4200, condition: "new", stock: 3, addedDaysAgo: 14 },
  { id: "bik-3", name: "Alloy Crit Racer", brand: "FERRUM WORKS", category: "road-bikes", price: 1950, condition: "new", stock: 4, addedDaysAgo: 8 },
  { id: "bik-4", name: "Endurance GT Disc", brand: "PACELINE", category: "road-bikes", price: 2850, compareAt: 3400, condition: "pre-owned", stock: 1, addedDaysAgo: 21, clearance: true },
  // FRAME SETS
  { id: "frm-1", name: "SL9 Frameset", brand: "VELOCORE", category: "frame-sets", price: 2900, condition: "new", stock: 4, addedDaysAgo: 4 },
  { id: "frm-2", name: "Track Frameset", brand: "FERRUM WORKS", category: "frame-sets", price: 1450, condition: "new", stock: 2, addedDaysAgo: 1 },
  { id: "frm-3", name: "Steel Classic Frameset", brand: "FERRUM WORKS", category: "frame-sets", price: 1150, condition: "new", stock: 5, addedDaysAgo: 26 },
  { id: "frm-4", name: "TT Frameset", brand: "VELOCORE", category: "frame-sets", price: 3200, compareAt: 3900, condition: "pre-owned", stock: 1, addedDaysAgo: 39, clearance: true },
  // COMPONENTS
  { id: "cmp-1", name: "50mm Carbon Wheelset", brand: "ALTO LAB", category: "components", price: 1390, condition: "new", stock: 6, addedDaysAgo: 6 },
  { id: "cmp-2", name: "Dual-Side Power Meter", brand: "ALTO LAB", category: "components", price: 649, condition: "new", stock: 9, addedDaysAgo: 2 },
  { id: "cmp-3", name: "Integrated Aero Bar", brand: "VELOCORE", category: "components", price: 420, condition: "new", stock: 12, addedDaysAgo: 17 },
  { id: "cmp-4", name: "Ceramic Pulley Cage", brand: "ALTO LAB", category: "components", price: 165, condition: "new", stock: 14, addedDaysAgo: 0 },
  // BIKE MAINTENANCE
  { id: "mnt-1", name: "Dry Lube 120ml", brand: "KROM", category: "bike-maintenance", price: 14, condition: "new", stock: 80, addedDaysAgo: 3 },
  { id: "mnt-2", name: "Torque Wrench Set", brand: "KROM", category: "bike-maintenance", price: 119, condition: "new", stock: 22, addedDaysAgo: 9 },
  { id: "mnt-3", name: "Pro Repair Stand", brand: "KROM", category: "bike-maintenance", price: 240, compareAt: 310, condition: "new", stock: 10, addedDaysAgo: 28, clearance: true },
  { id: "mnt-4", name: "Tubeless Sealant 1L", brand: "TREADLINE", category: "bike-maintenance", price: 26, condition: "new", stock: 47, addedDaysAgo: 1 },
];

export const brands = [...new Set(products.map((p) => p.brand))].sort();

export const todaysListings = products.filter((p) => p.addedDaysAgo === 0);
export const yesterdaysListings = products.filter((p) => p.addedDaysAgo === 1);
export const clearanceItems = products
  .filter((p) => p.clearance && p.compareAt)
  .sort((a, b) => discountPct(b) - discountPct(a));
export const featuredItems = products.filter((p) => p.featured);

export function discountPct(p: Product): number {
  return p.compareAt ? Math.round((1 - p.price / p.compareAt) * 100) : 0;
}

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
