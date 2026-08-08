/* Data-access layer. Reads from Supabase; falls back to the local mock data
   in data.ts until the migrations in supabase/migrations have been run, so
   the site keeps working at every stage of the rollout. */

import { getSupabase } from "@/lib/supabase";
import {
  auctionLots as mockLots,
  clearanceItems as mockClearance,
  coaches as mockCoaches,
  products as mockProducts,
  programs as mockPrograms,
  type Coach,
  type Lot,
  type Product,
  type Program,
} from "@/lib/data";

/* ---------- row shapes (snake_case, as created by the migrations) ---------- */

type ProductRow = {
  id: string;
  name: string;
  brand: string;
  category: string;
  subcategory: string | null;
  collections: string[] | null;
  images: string[] | null;
  price: number;
  compare_at: number | null;
  condition: "new" | "pre-owned";
  stock: number;
  listed_at: string;
  featured: boolean;
  clearance: boolean;
};

type CoachRow = {
  id: string;
  name: string;
  country: string;
  code: string;
  discipline: string;
  languages: string;
  slots: number;
};

type ProgramRow = {
  id: string;
  name: string;
  weeks: number;
  level: string;
  focus: string;
  price: number;
};

type LotRow = {
  id: string;
  lot_no: string;
  name: string;
  spec: string;
  condition: string;
  current_bid: number;
  bids_count: number;
  ends_at: string;
};

/* ---------- mappers ---------- */

function daysAgo(dateStr: string): number {
  const listed = new Date(`${dateStr}T00:00:00Z`).getTime();
  const now = new Date();
  const todayUtc = Date.UTC(now.getUTCFullYear(), now.getUTCMonth(), now.getUTCDate());
  return Math.max(0, Math.round((todayUtc - listed) / 86_400_000));
}

function endsIn(endsAt: string): string {
  const ms = new Date(endsAt).getTime() - Date.now();
  if (ms <= 0) return "ENDED";
  const mins = Math.floor(ms / 60_000);
  const d = Math.floor(mins / 1440);
  const h = Math.floor((mins % 1440) / 60);
  const m = mins % 60;
  return d > 0 ? `${d}D ${h}H` : `${h}H ${String(m).padStart(2, "0")}M`;
}

const toProduct = (r: ProductRow): Product => ({
  id: r.id,
  name: r.name,
  brand: r.brand,
  category: r.category,
  subcategory: r.subcategory ?? "",
  collections: r.collections ?? undefined,
  images: r.images ?? undefined,
  price: Number(r.price),
  compareAt: r.compare_at == null ? undefined : Number(r.compare_at),
  condition: r.condition,
  stock: r.stock,
  addedDaysAgo: daysAgo(r.listed_at),
  featured: r.featured,
  clearance: r.clearance,
});

const toCoach = (r: CoachRow): Coach => ({
  id: r.id,
  name: r.name,
  country: r.country,
  code: r.code,
  discipline: r.discipline,
  languages: r.languages,
  slots: r.slots,
});

const toProgram = (r: ProgramRow): Program => ({
  id: r.id,
  name: r.name,
  weeks: r.weeks,
  level: r.level,
  focus: r.focus,
  price: Number(r.price),
});

const toLot = (r: LotRow): Lot => ({
  id: r.id,
  lot: r.lot_no,
  name: r.name,
  spec: r.spec,
  condition: r.condition,
  currentBid: Number(r.current_bid),
  bids: r.bids_count,
  endsIn: endsIn(r.ends_at),
});

/* ---------- generic fetch with fallback ---------- */

async function fromTable<Row, T>(
  table: string,
  map: (r: Row) => T,
  fallback: T[],
  orderBy: string,
): Promise<T[]> {
  const sb = getSupabase();
  if (!sb) return fallback;
  const { data, error } = await sb.from(table).select("*").order(orderBy);
  if (error || !data || data.length === 0) {
    console.warn(
      `[db] ${table}: ${error ? error.message : "no rows"} — serving local mock data (run supabase/migrations to go live)`,
    );
    return fallback;
  }
  return (data as Row[]).map(map);
}

/* ---------- public API, one entry per menu item ---------- */

/** SHOP — /shop, homepage grids */
export const getProducts = () =>
  fromTable<ProductRow, Product>("products", toProduct, mockProducts, "id");

/** DAILY LISTINGS — /daily-listings (view from migration 02) */
export const getDailyProducts = () =>
  fromTable<ProductRow, Product>(
    "daily_listings",
    toProduct,
    mockProducts.filter((p) => p.addedDaysAgo <= 1),
    "id",
  );

/** CLEARANCE MARKET — /clearance (view from migration 05) */
export const getClearanceProducts = () =>
  fromTable<ProductRow, Product>("clearance_items", toProduct, mockClearance, "id");

/** COACHING — /coaching (migration 03) */
export const getCoaches = () =>
  fromTable<CoachRow, Coach>("coaches", toCoach, mockCoaches, "id");

export const getPrograms = () =>
  fromTable<ProgramRow, Program>("programs", toProgram, mockPrograms, "id");

/** AUCTION — /auction (migration 04) */
export const getLots = () =>
  fromTable<LotRow, Lot>("auction_lots", toLot, mockLots, "lot_no");

/** NAVIGATION — which menu entries actually carry stock.
    Developer note from the client sheet: hide categories with no stock and
    never render empty future-expansion sections. */
export type NavAvailability = {
  categories: string[];
  subcategories: string[];
  brands: string[];
};

export async function getNavAvailability(): Promise<NavAvailability> {
  const products = await getProducts();
  const categories = new Set<string>();
  const subcategories = new Set<string>();
  const brands = new Set<string>();
  for (const p of products) {
    if (p.stock <= 0) continue;
    categories.add(p.category);
    if (p.subcategory) subcategories.add(p.subcategory);
    brands.add(p.brand);
    for (const c of p.collections ?? []) brands.add(c);
  }
  return {
    categories: [...categories],
    subcategories: [...subcategories],
    brands: [...brands],
  };
}
