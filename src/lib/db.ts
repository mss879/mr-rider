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
  type Variant,
  DEFAULT_AUCTION_CURRENCY,
} from "@/lib/data";
import { MODELS_PER_BRAND, isModelNavCategory } from "@/lib/taxonomy";

/* ---------- row shapes (snake_case, as created by the migrations) ---------- */

type ProductRow = {
  id: string;
  name: string;
  brand: string;
  category: string;
  subcategory: string | null;
  collections: string[] | null;
  description: string | null;
  images: string[] | null;
  /** Migration 25. Absent until it runs — see withoutMissingColumn. */
  variants?: Variant[] | null;
  condition: "new" | "pre-owned";
  stock: number;
  listed_at: string;
  sort_position: number | null;
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
  /** Migration 25 — absent on a database that has not run it. */
  currency?: string | null;
  images?: string[] | null;
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
  description: r.description ?? undefined,
  // A card renders the first shot and a hover shot; the other three would
  // cross the wire for all 1,400-odd products and never be looked at.
  images: r.images?.slice(0, 2) ?? undefined,
  variants: r.variants?.length ? r.variants : undefined,
  condition: r.condition,
  stock: r.stock,
  addedDaysAgo: daysAgo(r.listed_at),
  sortPosition: r.sort_position ?? undefined,
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
  currency: r.currency || DEFAULT_AUCTION_CURRENCY,
  bids: r.bids_count,
  endsIn: endsIn(r.ends_at),
  images: r.images?.length ? r.images : undefined,
});

/* ---------- generic fetch with fallback ---------- */

/** One ORDER BY clause. `nullsFirst: false` is what puts unpinned rows
    behind pinned ones — PostgREST defaults to nulls first on ascending. */
type OrderClause = {
  column: string;
  ascending?: boolean;
  nullsFirst?: boolean;
};

async function fromTable<Row, T>(
  table: string,
  map: (r: Row) => T,
  fallback: T[],
  orderBy: string | OrderClause[],
  columns = "*",
): Promise<T[]> {
  const sb = getSupabase();
  if (!sb) return fallback;

  // PostgREST caps a response at 1000 rows and says nothing about it, so a
  // single select silently truncates the catalog. Page until a short read.
  const PAGE = 1000;
  const clauses: OrderClause[] =
    typeof orderBy === "string" ? [{ column: orderBy }] : orderBy;
  const data: Row[] = [];
  let cols = columns;
  for (let offset = 0; ; offset += PAGE) {
    // Paging only holds together if the sort is total and stable, so every
    // clause is applied on every page — including the tie-breaker.
    let query = sb.from(table).select(cols);
    for (const c of clauses) {
      query = query.order(c.column, {
        ascending: c.ascending ?? true,
        nullsFirst: c.nullsFirst ?? false,
      });
    }
    const { data: page, error } = await query.range(offset, offset + PAGE - 1);
    const retry = error ? withoutMissingColumn(cols, error.message) : null;
    if (retry) {
      console.warn(`[db] ${table}: ${error!.message} — reading without it (run the latest migration)`);
      cols = retry;
      offset -= PAGE;
      continue;
    }
    // Only an unreachable table means "not migrated yet". A live table that
    // happens to be empty is answered honestly — a quiet drop day or an empty
    // clearance rail must not resurrect the demo catalog.
    if (error) {
      console.warn(
        `[db] ${table}: ${error.message} — serving local mock data (run supabase/migrations to go live)`,
      );
      return fallback;
    }
    if (!page?.length) break;
    data.push(...(page as Row[]));
    if (page.length < PAGE) break;
  }

  if (data.length === 0) {
    // Not an error, but worth saying out loud: a members-only read policy
    // also returns zero rows with no error, and looks exactly like this.
    console.warn(`[db] ${table}: reachable but empty — nothing to render`);
    return [];
  }
  return (data as Row[]).map(map);
}

/* ---------- public API, one entry per menu item ---------- */

/* Every catalog listing is a grid of cards, and a card needs none of the
   supplier copy. Naming the columns keeps products.description — 1.4KB a row,
   2MB across the catalog, ~74% of the payload — out of a response that would
   otherwise carry it to the browser and never render it. Ask for it per
   product with getProductDescription when a detail page needs it. */
const CARD_COLUMNS =
  "id,name,brand,category,subcategory,collections,images,variants,condition,stock,listed_at,sort_position,featured,clearance";

/* A column the code asks for but the database does not have yet — the gap
   between a deploy and the migration that goes with it. PostgREST names it
   ("column products.variants does not exist"); the read is retried without
   it rather than throwing the whole catalogue back to mock data. Only for a
   named column list: "*" cannot be missing anything. */
function withoutMissingColumn(columns: string, message: string): string | null {
  if (columns === "*") return null;
  const m = /column [\w.]*?\.?(\w+) does not exist/i.exec(message);
  if (!m) return null;
  const list = columns.split(",");
  const next = list.filter((c) => c.trim() !== m[1]);
  return next.length < list.length ? next.join(",") : null;
}

/* The club's running order, chosen over "newest first" so the admin can pin
   a hero product without having to number the whole catalogue: anything with
   a sort_position leads, in that order, and everything else falls in behind
   it newest first. `id` last so paging cannot interleave rows that tie on
   both — PostgREST pages a non-total sort inconsistently. */
const SHELF_ORDER: OrderClause[] = [
  { column: "sort_position", ascending: true, nullsFirst: false },
  { column: "listed_at", ascending: false },
  { column: "id", ascending: true },
];

/** SHOP — /shop, homepage grids */
export const getProducts = () =>
  fromTable<ProductRow, Product>("products", toProduct, mockProducts, SHELF_ORDER, CARD_COLUMNS);

/** DAILY LISTINGS — /daily-listings (view from migration 02) */
export const getDailyProducts = () =>
  fromTable<ProductRow, Product>(
    "daily_listings",
    toProduct,
    mockProducts.filter((p) => p.addedDaysAgo <= 1),
    SHELF_ORDER,
    CARD_COLUMNS,
  );

/** CLEARANCE MARKET — /clearance (view from migration 05) */
export const getClearanceProducts = () =>
  fromTable<ProductRow, Product>(
    "clearance_items",
    toProduct,
    mockClearance,
    SHELF_ORDER,
    CARD_COLUMNS,
  );

/** Supplier copy for one product — the column the grids deliberately skip. */
export async function getProductDescription(id: string): Promise<string> {
  const sb = getSupabase();
  if (!sb) return "";
  const { data, error } = await sb
    .from("products")
    .select("description")
    .eq("id", id)
    .maybeSingle();
  if (error) {
    console.warn(`[db] products.description for ${id}: ${error.message}`);
    return "";
  }
  return (data as { description?: string } | null)?.description ?? "";
}

/** PRODUCT PAGE — /shop/[id]. The one place a product is shown whole: every
    photo (the grids take two) and the description. Null when there is no such
    product, so the page can 404. */
export async function getProduct(id: string): Promise<Product | null> {
  const sb = getSupabase();
  const mock = () => mockProducts.find((p) => p.id === id) ?? null;
  if (!sb) return mock();
  let cols = `${CARD_COLUMNS},description`;
  let { data, error } = await sb.from("products").select(cols).eq("id", id).maybeSingle();
  for (let next = error && withoutMissingColumn(cols, error.message); next; ) {
    console.warn(`[db] product ${id}: ${error!.message} — reading without it`);
    cols = next;
    ({ data, error } = await sb.from("products").select(cols).eq("id", id).maybeSingle());
    next = error && withoutMissingColumn(cols, error.message);
  }
  if (error) {
    console.warn(`[db] product ${id}: ${error.message} — falling back to mock data`);
    return mock();
  }
  if (!data) return null;
  const row = data as unknown as ProductRow;
  return { ...toProduct(row), images: row.images ?? undefined };
}

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
  /** In-stock brand slugs PER CATEGORY. Road Bikes and Framesets share one
      client-approved brand list, so a global set would advertise Merida
      under Framesets on the strength of a road bike. */
  brands: Record<string, string[]>;
  /** Model names per brand, for the aisles that navigate category → brand →
      model (MODEL_NAV_CATEGORIES). Capped at MODELS_PER_BRAND per brand: this
      rides along in the root layout on every page, so it has to stay small.
      `total` is the uncapped count, so the menu can say what it is not showing
      rather than quietly truncating. */
  models: Record<string, Record<string, { names: string[]; total: number }>>;
};

export async function getNavAvailability(): Promise<NavAvailability> {
  const products = await getProducts();
  const categories = new Set<string>();
  const subcategories = new Set<string>();
  const brands = new Map<string, Set<string>>();
  // category -> brand -> model names, in the order getProducts returned them,
  // which is the club's own running order (SHELF_ORDER).
  const models = new Map<string, Map<string, string[]>>();

  for (const p of products) {
    if (p.stock <= 0) continue;
    categories.add(p.category);
    if (p.subcategory) subcategories.add(p.subcategory);
    let inCategory = brands.get(p.category);
    if (!inCategory) {
      inCategory = new Set<string>();
      brands.set(p.category, inCategory);
    }
    inCategory.add(p.brand);
    for (const c of p.collections ?? []) inCategory.add(c);

    if (isModelNavCategory(p.category)) {
      let byBrand = models.get(p.category);
      if (!byBrand) {
        byBrand = new Map<string, string[]>();
        models.set(p.category, byBrand);
      }
      // Only the product's own brand, not its collections: a bike shown under
      // a brand collection is not that brand's model.
      const list = byBrand.get(p.brand) ?? [];
      list.push(p.name);
      byBrand.set(p.brand, list);
    }
  }

  return {
    categories: [...categories],
    subcategories: [...subcategories],
    brands: Object.fromEntries([...brands].map(([cat, set]) => [cat, [...set]])),
    models: Object.fromEntries(
      [...models].map(([cat, byBrand]) => [
        cat,
        Object.fromEntries(
          [...byBrand].map(([brand, names]) => [
            brand,
            { names: names.slice(0, MODELS_PER_BRAND), total: names.length },
          ]),
        ),
      ]),
    ),
  };
}
