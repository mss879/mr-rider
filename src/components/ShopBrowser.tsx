"use client";

import { useMemo, useState } from "react";
import ProductCard from "@/components/ProductCard";
import { type Product, categories } from "@/lib/data";

type PriceBand = "all" | "u50" | "50-200" | "200-1000" | "1000p";
type Condition = "all" | "new" | "pre-owned";
type Sort = "featured" | "new" | "asc" | "desc";

const PRICE_BANDS: { value: PriceBand; label: string }[] = [
  { value: "all", label: "Any price" },
  { value: "u50", label: "Under $50" },
  { value: "50-200", label: "$50 – $200" },
  { value: "200-1000", label: "$200 – $1,000" },
  { value: "1000p", label: "$1,000 +" },
];

const CONDITIONS: { value: Condition; label: string }[] = [
  { value: "all", label: "All" },
  { value: "new", label: "New" },
  { value: "pre-owned", label: "Pre-owned" },
];

function inBand(price: number, band: PriceBand): boolean {
  if (band === "u50") return price < 50;
  if (band === "50-200") return price >= 50 && price <= 200;
  if (band === "200-1000") return price > 200 && price <= 1000;
  if (band === "1000p") return price > 1000;
  return true;
}

export default function ShopBrowser({
  products,
  initialCategory,
  locked = false,
}: {
  products: Product[];
  initialCategory?: string;
  locked?: boolean;
}) {
  const [q, setQ] = useState("");
  const [cats, setCats] = useState<Set<string>>(
    () => new Set(initialCategory ? [initialCategory] : []),
  );
  const [brandSet, setBrandSet] = useState<Set<string>>(new Set());
  const [band, setBand] = useState<PriceBand>("all");
  const [cond, setCond] = useState<Condition>("all");
  const [sort, setSort] = useState<Sort>("featured");
  const [panelOpen, setPanelOpen] = useState(false);

  const brands = useMemo(
    () => [...new Set(products.map((p) => p.brand))].sort(),
    [products],
  );

  const activeCount =
    cats.size +
    brandSet.size +
    (band !== "all" ? 1 : 0) +
    (cond !== "all" ? 1 : 0) +
    (q.trim() ? 1 : 0);

  const filtered = useMemo(() => {
    const query = q.trim().toLowerCase();
    const list = products.filter((p) => {
      if (query && !`${p.name} ${p.brand}`.toLowerCase().includes(query))
        return false;
      if (cats.size > 0 && !cats.has(p.category)) return false;
      if (brandSet.size > 0 && !brandSet.has(p.brand)) return false;
      if (!inBand(p.price, band)) return false;
      if (cond !== "all" && p.condition !== cond) return false;
      return true;
    });
    if (sort === "asc") list.sort((a, b) => a.price - b.price);
    else if (sort === "desc") list.sort((a, b) => b.price - a.price);
    else if (sort === "new") list.sort((a, b) => a.addedDaysAgo - b.addedDaysAgo);
    else
      list.sort(
        (a, b) =>
          Number(b.featured ?? false) - Number(a.featured ?? false) ||
          a.addedDaysAgo - b.addedDaysAgo,
      );
    return list;
  }, [products, q, cats, brandSet, band, cond, sort]);

  const toggle = (set: Set<string>, value: string) => {
    const next = new Set(set);
    if (next.has(value)) next.delete(value);
    else next.add(value);
    return next;
  };

  const clearAll = () => {
    setQ("");
    setCats(new Set());
    setBrandSet(new Set());
    setBand("all");
    setCond("all");
  };

  const catCounts = useMemo(() => {
    const m = new Map<string, number>();
    for (const p of products) m.set(p.category, (m.get(p.category) ?? 0) + 1);
    return m;
  }, [products]);

  return (
    <div className="mx-auto max-w-7xl px-6 py-10 lg:grid lg:grid-cols-[260px_minmax(0,1fr)] lg:gap-10">
      {/* toolbar (mobile filters toggle + search + sort) */}
      <div className="mb-6 flex flex-wrap items-center gap-3 lg:col-start-2 lg:row-start-1">
        <label className="flex min-w-0 flex-1 items-center gap-2 border-b-2 border-ink">
          <span className="sr-only">Search the shop</span>
          <input
            value={q}
            onChange={(e) => setQ(e.target.value)}
            placeholder="SEARCH THE FLOOR…"
            className="w-full min-w-0 bg-transparent py-2 font-mono text-xs uppercase tracking-[0.14em] placeholder:text-ink-soft/70 focus:outline-none"
          />
          {q && (
            <button
              type="button"
              onClick={() => setQ("")}
              aria-label="Clear search"
              className="font-mono text-xs text-ink-soft hover:text-accent-deep"
            >
              ✕
            </button>
          )}
        </label>
        <button
          type="button"
          onClick={() => setPanelOpen((v) => !v)}
          aria-expanded={panelOpen}
          className="whitespace-nowrap border border-ink px-4 py-2 font-mono text-[11px] font-semibold uppercase tracking-[0.16em] lg:hidden"
        >
          Filters {activeCount > 0 ? `(${activeCount})` : ""}
        </button>
        <label className="flex items-center gap-2">
          <span className="font-mono text-[10px] uppercase tracking-[0.18em] text-ink-soft">
            Sort
          </span>
          <select
            value={sort}
            onChange={(e) => setSort(e.target.value as Sort)}
            className="border border-line bg-chalk px-2 py-2 font-mono text-[11px] uppercase tracking-[0.1em]"
          >
            <option value="featured">Featured</option>
            <option value="new">Newest</option>
            <option value="asc">Price ↑</option>
            <option value="desc">Price ↓</option>
          </select>
        </label>
      </div>

      {/* filter rail */}
      <aside
        className={`${panelOpen ? "block" : "hidden"} mb-8 border border-line bg-chalk p-5 lg:mb-0 lg:block lg:self-start lg:border-0 lg:bg-transparent lg:p-0 lg:sticky lg:top-24 lg:row-span-2 lg:row-start-1`}
        aria-label="Filters"
      >
        <div className="mb-6 flex items-center justify-between">
          <span className="font-mono text-[11px] font-semibold uppercase tracking-[0.22em]">
            Filter
          </span>
          {activeCount > 0 && (
            <button
              type="button"
              onClick={clearAll}
              className="font-mono text-[10px] uppercase tracking-[0.16em] text-accent-deep underline underline-offset-4"
            >
              Clear all ({activeCount})
            </button>
          )}
        </div>

        <fieldset className="mb-7">
          <legend className="mb-3 font-mono text-[10px] uppercase tracking-[0.22em] text-ink-soft">
            Category
          </legend>
          <div className="flex flex-col gap-2">
            {categories.map((c) => (
              <label
                key={c.slug}
                className="flex cursor-pointer items-center gap-2.5 text-sm"
              >
                <input
                  type="checkbox"
                  checked={cats.has(c.slug)}
                  onChange={() => setCats(toggle(cats, c.slug))}
                  className="size-4 accent-accent"
                />
                <span className="flex-1">{c.name}</span>
                <span className="font-mono text-[10px] text-ink-soft">
                  {catCounts.get(c.slug) ?? 0}
                </span>
              </label>
            ))}
          </div>
        </fieldset>

        <fieldset className="mb-7">
          <legend className="mb-3 font-mono text-[10px] uppercase tracking-[0.22em] text-ink-soft">
            Brand
          </legend>
          <div className="flex flex-col gap-2">
            {brands.map((b) => (
              <label
                key={b}
                className="flex cursor-pointer items-center gap-2.5 text-sm"
              >
                <input
                  type="checkbox"
                  checked={brandSet.has(b)}
                  onChange={() => setBrandSet(toggle(brandSet, b))}
                  className="size-4 accent-accent"
                />
                <span className="font-mono text-xs tracking-[0.08em]">{b}</span>
              </label>
            ))}
          </div>
        </fieldset>

        <fieldset className="mb-7">
          <legend className="mb-3 font-mono text-[10px] uppercase tracking-[0.22em] text-ink-soft">
            Price
          </legend>
          <div className="flex flex-col gap-2">
            {PRICE_BANDS.map((pb) => (
              <label
                key={pb.value}
                className="flex cursor-pointer items-center gap-2.5 text-sm"
              >
                <input
                  type="radio"
                  name="price"
                  checked={band === pb.value}
                  onChange={() => setBand(pb.value)}
                  className="size-4 accent-accent"
                />
                {pb.label}
              </label>
            ))}
          </div>
        </fieldset>

        <fieldset>
          <legend className="mb-3 font-mono text-[10px] uppercase tracking-[0.22em] text-ink-soft">
            Condition
          </legend>
          <div className="flex flex-col gap-2">
            {CONDITIONS.map((c) => (
              <label
                key={c.value}
                className="flex cursor-pointer items-center gap-2.5 text-sm"
              >
                <input
                  type="radio"
                  name="condition"
                  checked={cond === c.value}
                  onChange={() => setCond(c.value)}
                  className="size-4 accent-accent"
                />
                {c.label}
              </label>
            ))}
          </div>
        </fieldset>
      </aside>

      {/* results */}
      <div className="lg:col-start-2">
        <p
          className="mb-5 font-mono text-[11px] uppercase tracking-[0.18em] text-ink-soft"
          aria-live="polite"
        >
          {filtered.length} / {products.length} items
        </p>
        {filtered.length > 0 ? (
          <div className="grid grid-cols-1 gap-5 sm:grid-cols-2 xl:grid-cols-3">
            {filtered.map((p) => (
              <ProductCard key={p.id} p={p} locked={locked} />
            ))}
          </div>
        ) : (
          <div className="border border-line bg-chalk px-6 py-20 text-center">
            <p className="headline mb-3 text-3xl">Nothing matches.</p>
            <p className="mb-6 font-mono text-xs uppercase tracking-[0.16em] text-ink-soft">
              Loosen a filter and try again
            </p>
            <button
              type="button"
              onClick={clearAll}
              className="bg-ink px-5 py-3 font-mono text-[11px] font-semibold uppercase tracking-[0.18em] text-chalk transition-colors duration-200 ease-out hover:bg-accent-deep"
            >
              Clear all filters
            </button>
          </div>
        )}
      </div>
    </div>
  );
}
