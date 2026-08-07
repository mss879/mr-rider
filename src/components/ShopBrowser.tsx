"use client";

import Link from "next/link";
import { Fragment, useMemo, useState } from "react";
import ProductCard from "@/components/ProductCard";
import { matchesBrand, type Product } from "@/lib/data";
import {
  breadcrumbs,
  brandName,
  categories,
  expandQuery,
  getCategory,
  subcategoriesOf,
  subcategoryName,
} from "@/lib/taxonomy";

type PriceBand = "all" | "u50" | "50-200" | "200-1000" | "1000p";
type Condition = "all" | "new" | "pre-owned";
type Sort = "featured" | "new" | "asc" | "desc" | "availability";

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
  initialSubcategory,
  initialBrand,
  locked = false,
}: {
  products: Product[];
  initialCategory?: string;
  initialSubcategory?: string;
  initialBrand?: string;
  locked?: boolean;
}) {
  const [q, setQ] = useState("");
  const [cats, setCats] = useState<Set<string>>(
    () => new Set(initialCategory ? [initialCategory] : []),
  );
  const [subs, setSubs] = useState<Set<string>>(
    () => new Set(initialSubcategory ? [initialSubcategory] : []),
  );
  const [brandSet, setBrandSet] = useState<Set<string>>(
    () => new Set(initialBrand ? [initialBrand] : []),
  );
  const [band, setBand] = useState<PriceBand>("all");
  const [cond, setCond] = useState<Condition>("all");
  const [inStockOnly, setInStockOnly] = useState(false);
  const [saleOnly, setSaleOnly] = useState(false);
  const [sort, setSort] = useState<Sort>("featured");
  const [panelOpen, setPanelOpen] = useState(false);

  /* Brands present in the catalog, listed by display name. */
  const brandOptions = useMemo(() => {
    const slugs = new Set<string>();
    for (const p of products) {
      slugs.add(p.brand);
      for (const c of p.collections ?? []) slugs.add(c);
    }
    return [...slugs]
      .map((slug) => ({ slug, name: brandName(slug) }))
      .sort((a, b) => a.name.localeCompare(b.name));
  }, [products]);

  /* Categories present in the catalog — empty ones stay off the rail. */
  const catOptions = useMemo(() => {
    const present = new Set(products.map((p) => p.category));
    return categories.filter((c) => present.has(c.slug));
  }, [products]);

  /* Product types for whichever categories are selected (all if none are). */
  const subOptions = useMemo(() => {
    const present = new Set(products.map((p) => p.subcategory));
    const scope = cats.size > 0 ? [...cats] : catOptions.map((c) => c.slug);
    return scope.flatMap((slug) =>
      subcategoriesOf(slug).filter((s) => present.has(s.slug)),
    );
  }, [products, cats, catOptions]);

  const activeCount =
    cats.size +
    subs.size +
    brandSet.size +
    (band !== "all" ? 1 : 0) +
    (cond !== "all" ? 1 : 0) +
    (inStockOnly ? 1 : 0) +
    (saleOnly ? 1 : 0) +
    (q.trim() ? 1 : 0);

  const filtered = useMemo(() => {
    // Search synonyms: tyre/tire, HR strap, bar/handlebar, tube/inner tube…
    const terms = expandQuery(q);
    const list = products.filter((p) => {
      if (terms.length > 0) {
        const haystack =
          `${p.name} ${brandName(p.brand)} ${subcategoryName(p.subcategory)}`.toLowerCase();
        if (!terms.some((t) => haystack.includes(t))) return false;
      }
      if (cats.size > 0 && !cats.has(p.category)) return false;
      if (subs.size > 0 && !subs.has(p.subcategory)) return false;
      if (brandSet.size > 0 && ![...brandSet].some((b) => matchesBrand(p, b)))
        return false;
      if (!inBand(p.price, band)) return false;
      if (cond !== "all" && p.condition !== cond) return false;
      if (inStockOnly && p.stock <= 0) return false;
      if (saleOnly && !(p.clearance && p.compareAt)) return false;
      return true;
    });
    if (sort === "asc") list.sort((a, b) => a.price - b.price);
    else if (sort === "desc") list.sort((a, b) => b.price - a.price);
    else if (sort === "new") list.sort((a, b) => a.addedDaysAgo - b.addedDaysAgo);
    else if (sort === "availability") list.sort((a, b) => b.stock - a.stock);
    else
      list.sort(
        (a, b) =>
          Number(b.featured ?? false) - Number(a.featured ?? false) ||
          a.addedDaysAgo - b.addedDaysAgo,
      );
    return list;
  }, [products, q, cats, subs, brandSet, band, cond, inStockOnly, saleOnly, sort]);

  const toggle = (set: Set<string>, value: string) => {
    const next = new Set(set);
    if (next.has(value)) next.delete(value);
    else next.add(value);
    return next;
  };

  const toggleCategory = (slug: string) => {
    const next = toggle(cats, slug);
    setCats(next);
    // Drop product-type filters that no longer belong to a selected category.
    if (next.size > 0) {
      setSubs(
        new Set(
          [...subs].filter((s) =>
            [...next].some((c) => subcategoriesOf(c).some((x) => x.slug === s)),
          ),
        ),
      );
    }
  };

  const clearAll = () => {
    setQ("");
    setCats(new Set());
    setSubs(new Set());
    setBrandSet(new Set());
    setBand("all");
    setCond("all");
    setInStockOnly(false);
    setSaleOnly(false);
  };

  const catCounts = useMemo(() => {
    const m = new Map<string, number>();
    for (const p of products) m.set(p.category, (m.get(p.category) ?? 0) + 1);
    return m;
  }, [products]);

  /* Breadcrumbs — Home > Components > Drivetrain > Chains. */
  const crumbs = useMemo(() => {
    const cat = cats.size === 1 ? [...cats][0] : undefined;
    const sub = subs.size === 1 ? [...subs][0] : undefined;
    const brand = brandSet.size === 1 ? [...brandSet][0] : undefined;
    return breadcrumbs(cat, sub, brand);
  }, [cats, subs, brandSet]);

  const headingCategory = cats.size === 1 ? getCategory([...cats][0]) : undefined;

  return (
    <div className="mx-auto max-w-7xl px-6 py-10 lg:grid lg:grid-cols-[260px_minmax(0,1fr)] lg:gap-10">
      {/* breadcrumbs */}
      <nav
        aria-label="Breadcrumb"
        className="mb-4 flex flex-wrap items-center gap-x-2 gap-y-1 font-mono text-[10px] uppercase tracking-[0.16em] text-ink-soft lg:col-span-2"
      >
        {crumbs.map((c, i) => (
          <Fragment key={`${c.label}-${i}`}>
            {i > 0 && (
              <span aria-hidden className="text-line">
                ›
              </span>
            )}
            {c.href && i < crumbs.length - 1 ? (
              <Link href={c.href} className="hover:text-accent-deep">
                {c.label}
              </Link>
            ) : (
              <span className={i === crumbs.length - 1 ? "text-ink" : undefined}>
                {c.label}
              </span>
            )}
          </Fragment>
        ))}
      </nav>

      {/* toolbar (mobile filters toggle + search + sort) */}
      <div className="mb-6 flex flex-wrap items-center gap-3 lg:col-start-2 lg:row-start-2">
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
            <option value="availability">Availability</option>
          </select>
        </label>
      </div>

      {/* filter rail */}
      <aside
        className={`${panelOpen ? "block" : "hidden"} mb-8 border border-line bg-chalk p-5 lg:mb-0 lg:block lg:self-start lg:border-0 lg:bg-transparent lg:p-0 lg:sticky lg:top-24 lg:row-span-2 lg:row-start-2`}
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
            {catOptions.map((c) => (
              <label
                key={c.slug}
                className="flex cursor-pointer items-center gap-2.5 text-sm"
              >
                <input
                  type="checkbox"
                  checked={cats.has(c.slug)}
                  onChange={() => toggleCategory(c.slug)}
                  className="size-4 shrink-0 accent-accent"
                />
                <span className="flex-1">{c.name}</span>
                <span className="font-mono text-[10px] text-ink-soft">
                  {catCounts.get(c.slug) ?? 0}
                </span>
              </label>
            ))}
          </div>
        </fieldset>

        {subOptions.length > 0 && (
          <fieldset className="mb-7">
            <legend className="mb-3 font-mono text-[10px] uppercase tracking-[0.22em] text-ink-soft">
              Product type
            </legend>
            <div className="flex max-h-72 flex-col gap-2 overflow-y-auto pr-1">
              {subOptions.map((s) => (
                <label
                  key={s.slug}
                  className="flex cursor-pointer items-center gap-2.5 text-sm"
                >
                  <input
                    type="checkbox"
                    checked={subs.has(s.slug)}
                    onChange={() => setSubs(toggle(subs, s.slug))}
                    className="size-4 shrink-0 accent-accent"
                  />
                  <span className="flex-1">{s.name}</span>
                </label>
              ))}
            </div>
          </fieldset>
        )}

        <fieldset className="mb-7">
          <legend className="mb-3 font-mono text-[10px] uppercase tracking-[0.22em] text-ink-soft">
            Brand
          </legend>
          <div className="flex max-h-72 flex-col gap-2 overflow-y-auto pr-1">
            {brandOptions.map((b) => (
              <label
                key={b.slug}
                className="flex cursor-pointer items-center gap-2.5 text-sm"
              >
                <input
                  type="checkbox"
                  checked={brandSet.has(b.slug)}
                  onChange={() => setBrandSet(toggle(brandSet, b.slug))}
                  className="size-4 shrink-0 accent-accent"
                />
                <span className="font-mono text-xs tracking-[0.06em]">{b.name}</span>
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
                  className="size-4 shrink-0 accent-accent"
                />
                {pb.label}
              </label>
            ))}
          </div>
        </fieldset>

        <fieldset className="mb-7">
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
                  className="size-4 shrink-0 accent-accent"
                />
                {c.label}
              </label>
            ))}
          </div>
        </fieldset>

        <fieldset>
          <legend className="mb-3 font-mono text-[10px] uppercase tracking-[0.22em] text-ink-soft">
            Availability
          </legend>
          <div className="flex flex-col gap-2">
            <label className="flex cursor-pointer items-center gap-2.5 text-sm">
              <input
                type="checkbox"
                checked={inStockOnly}
                onChange={() => setInStockOnly((v) => !v)}
                className="size-4 shrink-0 accent-accent"
              />
              In stock only
            </label>
            <label className="flex cursor-pointer items-center gap-2.5 text-sm">
              <input
                type="checkbox"
                checked={saleOnly}
                onChange={() => setSaleOnly((v) => !v)}
                className="size-4 shrink-0 accent-accent"
              />
              On sale
            </label>
          </div>
        </fieldset>
      </aside>

      {/* results */}
      <div className="lg:col-start-2">
        {headingCategory && (
          <div className="mb-5">
            <h2 className="font-display text-2xl font-bold uppercase tracking-wide">
              {headingCategory.name}
            </h2>
            <p className="text-xs text-ink-soft">{headingCategory.blurb}</p>
          </div>
        )}
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
