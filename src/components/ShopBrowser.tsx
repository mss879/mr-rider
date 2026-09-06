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

type Condition = "all" | "new" | "pre-owned";
/* No price on the floor, so no price band and no price sort.

   "shelf" is the club's own running order and the default: the products
   arrive from the database already sorted by the admin's manual position,
   newest first behind it (SHELF_ORDER in lib/db.ts). Picking it means
   leaving that order alone — every other option re-sorts on top of it. */
type Sort = "shelf" | "featured" | "new" | "availability";

/* UI-01 (QA r2) — one brand checkbox in the rail. Named because the brand
   list is now built twice over: once grouped per category for the inline
   lists, once flattened into the union the pruning and the standalone rail
   read from. Both hands have to be holding the same shape. */
type BrandOption = { slug: string; name: string };

/* Cards mounted per batch — three full rows on the widest grid. */
const PAGE_SIZE = 48;

const CONDITIONS: { value: Condition; label: string }[] = [
  { value: "all", label: "All" },
  { value: "new", label: "New" },
  { value: "pre-owned", label: "Pre-owned" },
];

export default function ShopBrowser({
  products,
  initialCategory,
  initialSubcategory,
  initialBrand,
  initialQuery,
}: {
  products: Product[];
  initialCategory?: string;
  initialSubcategory?: string;
  initialBrand?: string;
  initialQuery?: string;
}) {
  const [q, setQ] = useState(initialQuery ?? "");
  const [cats, setCats] = useState<Set<string>>(
    () => new Set(initialCategory ? [initialCategory] : []),
  );
  const [subs, setSubs] = useState<Set<string>>(
    () => new Set(initialSubcategory ? [initialSubcategory] : []),
  );
  const [brandSet, setBrandSet] = useState<Set<string>>(
    () => new Set(initialBrand ? [initialBrand] : []),
  );
  const [cond, setCond] = useState<Condition>("all");
  const [inStockOnly, setInStockOnly] = useState(false);
  const [clearanceOnly, setClearanceOnly] = useState(false);
  const [sort, setSort] = useState<Sort>("shelf");
  const [panelOpen, setPanelOpen] = useState(false);

  /* Brands with stock, keyed by the aisle they have it in.

     UI-01 — the list used to be every brand in the catalogue, so choosing Road
     Bikes still offered a column of bar-tape and nutrition brands that could
     only ever return nothing. The scope is the category and product-type
     filters and deliberately NOT the brand filter itself: narrowing by the
     thing being listed would hide every brand but the ticked one and make the
     multi-select unusable after the first click.

     UI-01 (QA r2) — the same scoping rule, but grouped BY category instead of
     flattened, so the list can be drawn directly under the category row that
     produced it. Built for EVERY aisle on the floor, not just the ticked ones:
     the map then has no `cats` dependency, so ticking and unticking a category
     re-reads a cached map instead of re-walking 1,400 products. The
     product-type filter still narrows it — a rider who has picked "Chains"
     sees chain brands — and the brand filter still deliberately does not. */
  const brandsByCategory = useMemo(() => {
    const slugsByCat = new Map<string, Set<string>>();
    for (const p of products) {
      if (subs.size > 0 && !subs.has(p.subcategory)) continue;
      let slugs = slugsByCat.get(p.category);
      if (!slugs) {
        slugs = new Set<string>();
        slugsByCat.set(p.category, slugs);
      }
      slugs.add(p.brand);
      for (const c of p.collections ?? []) slugs.add(c);
    }
    const out = new Map<string, BrandOption[]>();
    for (const [cat, slugs] of slugsByCat) {
      out.set(
        cat,
        [...slugs]
          .map((slug) => ({ slug, name: brandName(slug) }))
          .sort((a, b) => a.name.localeCompare(b.name)),
      );
    }
    return out;
  }, [products, subs]);

  /* The flat union across the ticked categories — the whole floor when none
     are ticked. Everything downstream still reads this one list: the `inScope`
     pruning below, the filter predicate's brand test, and the standalone rail
     that shows while no category is picked.

     UI-01 (QA r2) — derived FROM the grouped map rather than a second walk of
     the catalogue, so the two can never drift apart. A brand the rider can see
     under a ticked category is a member of this union by construction, which
     is precisely what stops the pruning from silently un-ticking a brand whose
     checkbox is still on screen. */
  const brandOptions = useMemo(() => {
    const scope = cats.size > 0 ? [...cats] : [...brandsByCategory.keys()];
    const union = new Map<string, BrandOption>();
    for (const cat of scope)
      for (const b of brandsByCategory.get(cat) ?? []) union.set(b.slug, b);
    return [...union.values()].sort((a, b) => a.name.localeCompare(b.name));
  }, [brandsByCategory, cats]);

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

  /* A brand ticked under one category has to come OFF when the scope moves
     somewhere it has no stock — otherwise the rider is left filtering on
     something the rail no longer draws a checkbox for, and the floor goes
     empty with nothing on screen explaining why.

     Adjusted during render, the same way `visible` is below: an effect would
     paint the stale result set first and then immediately paint again. It
     cannot loop — `brandOptions` does not depend on `brandSet`, so one pass
     always settles it. */
  const inScope = useMemo(
    () => new Set(brandOptions.map((b) => b.slug)),
    [brandOptions],
  );
  if ([...brandSet].some((b) => !inScope.has(b))) {
    setBrandSet(new Set([...brandSet].filter((b) => inScope.has(b))));
  }

  const activeCount =
    cats.size +
    subs.size +
    brandSet.size +
    (cond !== "all" ? 1 : 0) +
    (inStockOnly ? 1 : 0) +
    (clearanceOnly ? 1 : 0) +
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
      if (cond !== "all" && p.condition !== cond) return false;
      if (inStockOnly && p.stock <= 0) return false;
      if (clearanceOnly && !p.clearance) return false;
      return true;
    });
    // `shelf` deliberately does nothing: the incoming order IS the answer.
    if (sort === "new") list.sort((a, b) => a.addedDaysAgo - b.addedDaysAgo);
    else if (sort === "availability") list.sort((a, b) => b.stock - a.stock);
    else if (sort === "featured")
      list.sort(
        (a, b) =>
          Number(b.featured ?? false) - Number(a.featured ?? false) ||
          a.addedDaysAgo - b.addedDaysAgo,
      );
    return list;
  }, [products, q, cats, subs, brandSet, cond, inStockOnly, clearanceOnly, sort]);

  /* The floor carries over 1,400 items. Mounting a card for every one of them
     puts ~1,400 images and their markup in the document before the rider has
     scrolled anywhere, which is what made /shop a 10MB page. Cards come in a
     batch at a time instead; filtering and counts still run across the whole
     catalog, so nothing is hidden from search — only from the DOM. */
  const [visible, setVisible] = useState(PAGE_SIZE);
  /* A new result set starts from the top again. `filtered` is memoised on
     every filter input, so a change of identity is exactly "the results are
     different now" — adjusted during render rather than in an effect, which
     would render the old count first and then immediately render again. */
  const [lastResults, setLastResults] = useState(filtered);
  if (lastResults !== filtered) {
    setLastResults(filtered);
    setVisible(PAGE_SIZE);
  }
  const shown = useMemo(() => filtered.slice(0, visible), [filtered, visible]);

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
    setCond("all");
    setInStockOnly(false);
    setClearanceOnly(false);
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
              <Link href={c.href} className="hover:text-ink">
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
              className="font-mono text-xs text-ink-soft hover:text-ink"
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
            <option value="shelf">Club order</option>
            <option value="featured">Featured</option>
            <option value="new">Newest</option>
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
              className="font-mono text-[10px] uppercase tracking-[0.16em] text-ink underline underline-offset-4 hover:text-ink-soft"
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
            {catOptions.map((c) => {
              /* UI-01 (QA r2) — the brands for THIS aisle, drawn only while the
                 aisle is ticked. Empty when a product-type filter belonging to
                 a sibling category has narrowed this one to nothing; the row
                 then stays a plain checkbox rather than opening an empty box
                 the rider cannot act on. */
              const catBrands = cats.has(c.slug)
                ? (brandsByCategory.get(c.slug) ?? [])
                : [];
              return (
                <div key={c.slug} className="flex flex-col gap-2">
                  {/* The <label> CLOSES before the nested list. A fieldset
                      inside a label is invalid markup, and it would hand the
                      entire brand column to the category checkbox as its
                      accessible name — every brand read aloud on focus. */}
                  <label className="flex cursor-pointer items-center gap-2.5 text-sm">
                    <input
                      type="checkbox"
                      checked={cats.has(c.slug)}
                      onChange={() => toggleCategory(c.slug)}
                      className="size-4 shrink-0 accent-ink"
                    />
                    <span className="flex-1">{c.name}</span>
                    <span className="font-mono text-[10px] text-ink-soft">
                      {catCounts.get(c.slug) ?? 0}
                    </span>
                  </label>
                  {catBrands.length > 0 && (
                    /* UI-01 (QA r2) — a nested fieldset rather than a bare div:
                       it names the group ("Road Bikes brands"), which is the
                       only thing telling a screen-reader user which aisle a
                       brand belongs to when two aisles are ticked and both
                       stock it. Hung off a rule and indented to the category
                       label's text edge so the nesting reads at a glance.
                       Keyboard order follows the DOM: category, its brands,
                       next category. */
                    <fieldset className="mb-1 ml-2 border-l border-line pl-4">
                      <legend className="mb-2 font-mono text-[10px] uppercase tracking-[0.18em] text-ink-soft">
                        {c.name} brands
                        <span className="ml-1.5 normal-case tracking-normal text-ink-soft/70">
                          ({catBrands.length} here)
                        </span>
                      </legend>
                      {/* Same max-h-72 scroller as the old standalone rail —
                          Components alone carries dozens of brands. */}
                      <div className="flex max-h-72 flex-col gap-2 overflow-y-auto pr-1">
                        {catBrands.map((b) => (
                          <label
                            key={`${c.slug}-${b.slug}`}
                            className="flex cursor-pointer items-center gap-2.5 text-sm"
                          >
                            <input
                              type="checkbox"
                              checked={brandSet.has(b.slug)}
                              onChange={() =>
                                setBrandSet(toggle(brandSet, b.slug))
                              }
                              className="size-4 shrink-0 accent-ink"
                            />
                            <span className="font-mono text-xs tracking-[0.06em]">
                              {b.name}
                            </span>
                          </label>
                        ))}
                      </div>
                    </fieldset>
                  )}
                </div>
              );
            })}
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
                    className="size-4 shrink-0 accent-ink"
                  />
                  <span className="flex-1">{s.name}</span>
                </label>
              ))}
            </div>
          </fieldset>
        )}

        {/* UI-01 (QA r2) — the standalone rail is now the NO-CATEGORY case
            only. Once an aisle is ticked its brands live inline underneath it
            (see the Category fieldset above); rendering both would put the
            same checkbox on screen twice with nothing to tell them apart. The
            `(N here)` hint therefore only has a product-type scope left to
            report — the category half of that condition moved upstairs. */}
        {cats.size === 0 && brandOptions.length > 0 && (
        <fieldset className="mb-7">
          <legend className="mb-3 font-mono text-[10px] uppercase tracking-[0.22em] text-ink-soft">
            Brand
            {subs.size > 0 ? (
              <span className="ml-1.5 normal-case tracking-normal text-ink-soft/70">
                ({brandOptions.length} here)
              </span>
            ) : null}
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
                  className="size-4 shrink-0 accent-ink"
                />
                <span className="font-mono text-xs tracking-[0.06em]">{b.name}</span>
              </label>
            ))}
          </div>
        </fieldset>
        )}

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
                  className="size-4 shrink-0 accent-ink"
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
                className="size-4 shrink-0 accent-ink"
              />
              In stock only
            </label>
            <label className="flex cursor-pointer items-center gap-2.5 text-sm">
              <input
                type="checkbox"
                checked={clearanceOnly}
                onChange={() => setClearanceOnly((v) => !v)}
                className="size-4 shrink-0 accent-ink"
              />
              Clearance stock
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
          <>
            <div className="grid grid-cols-1 gap-5 sm:grid-cols-2 xl:grid-cols-3">
              {shown.map((p) => (
                <ProductCard key={p.id} p={p} />
              ))}
            </div>
            {visible < filtered.length && (
              <div className="mt-10 flex flex-col items-center gap-3">
                <button
                  type="button"
                  onClick={() => setVisible((n) => n + PAGE_SIZE)}
                  className="bg-ink px-6 py-3 font-mono text-[11px] font-semibold uppercase tracking-[0.18em] text-chalk transition-colors duration-200 ease-out hover:bg-ink-soft"
                >
                  Load more
                </button>
                <p className="font-mono text-[11px] uppercase tracking-[0.18em] text-ink-soft">
                  Showing {shown.length} of {filtered.length}
                </p>
              </div>
            )}
          </>
        ) : (
          <div className="border border-line bg-chalk px-6 py-20 text-center">
            <p className="headline mb-3 text-3xl">No products found.</p>
            <p className="mb-2 text-sm leading-relaxed text-ink-soft">
              Nothing on the floor matches this combination. Loosen a filter and
              the stock comes back.
            </p>
            {/* Naming the combination is the difference between "try again"
                and knowing WHICH of six rails to reach for. */}
            {activeCount > 0 && (
              <p className="mb-6 font-mono text-[10px] uppercase tracking-[0.16em] text-ink-soft/80">
                Filtering on{" "}
                {[
                  q.trim() ? `“${q.trim()}”` : null,
                  cats.size > 0 ? `${cats.size} category${cats.size > 1 ? "s" : ""}` : null,
                  subs.size > 0 ? `${subs.size} product type${subs.size > 1 ? "s" : ""}` : null,
                  brandSet.size > 0 ? `${brandSet.size} brand${brandSet.size > 1 ? "s" : ""}` : null,
                  cond !== "all" ? cond : null,
                  inStockOnly ? "in stock" : null,
                  clearanceOnly ? "clearance" : null,
                ]
                  .filter(Boolean)
                  .join(" · ")}
              </p>
            )}
            <button
              type="button"
              onClick={clearAll}
              className="bg-ink px-5 py-3 font-mono text-[11px] font-semibold uppercase tracking-[0.18em] text-chalk transition-colors duration-200 ease-out hover:bg-ink-soft"
            >
              Clear filters
            </button>
          </div>
        )}
      </div>
    </div>
  );
}
