import type { Metadata } from "next";
import Link from "next/link";
import PageHero from "@/components/PageHero";
import SectionHead from "@/components/SectionHead";
import { getNavAvailability, getProducts } from "@/lib/db";
import { matchesBrand } from "@/lib/data";
import {
  brands,
  categories,
  categoryName,
  directoryBrands,
  subcategoryName,
} from "@/lib/taxonomy";

export const revalidate = 60;

export const metadata: Metadata = {
  title: "Brands",
  description:
    "The MR.RIDER brand directory: every brand on the floor, grouped by the category it belongs to.",
};

export default async function BrandsPage() {
  const [products, availability] = await Promise.all([
    getProducts(),
    getNavAvailability(),
  ]);

  const countFor = (slug: string) =>
    products.filter((p) => matchesBrand(p, slug)).length;

  const houseBrands = brands.filter((b) => b.house);

  return (
    <>
      <PageHero
        eyebrow={`${directoryBrands.length} brands · one directory`}
        title="Shop by brand."
        blurb="Brands live here and inside category filters — never mixed in with product types. Pick a brand to drop straight onto the shop floor with the filter already applied."
      />

      {/* A–Z */}
      <section className="border-b border-line bg-chalk">
        <div className="mx-auto flex max-w-7xl flex-wrap gap-2 px-6 py-6">
          {directoryBrands
            .slice()
            .sort((a, b) => a.name.localeCompare(b.name))
            .map((b) => (
              <Link
                key={b.slug}
                href={`/shop?brand=${b.slug}`}
                className="border border-line bg-paper px-3 py-1.5 font-mono text-[11px] uppercase tracking-[0.12em] transition-colors duration-200 ease-out hover:border-ink hover:text-ink"
              >
                {b.name}
                <span className="ml-2 text-ink-soft">{countFor(b.slug)}</span>
              </Link>
            ))}
        </div>
      </section>

      {/* By category */}
      <section className="mx-auto max-w-7xl px-6 py-14 md:py-16">
        <SectionHead
          eyebrow="Where each brand sits"
          title="Brands by category."
          link={{ href: "/shop", label: "Shop everything" }}
        />
        <div className="grid gap-px border border-line bg-line md:grid-cols-2 xl:grid-cols-3">
          {categories
            .map((c) => {
              /* Every link here lands on /shop with both filters applied, so
                 a brand with no stock in this aisle would land on "Nothing
                 matches." Road Bikes and Framesets share one brand list, so
                 without the stock check most of Framesets would be dead. */
              const inStock = new Set(availability.brands[c.slug] ?? []);
              const listed = directoryBrands.filter((b) =>
                b.categories.includes(c.slug),
              );
              return {
                category: c,
                list:
                  inStock.size > 0
                    ? listed.filter((b) => inStock.has(b.slug))
                    : listed,
              };
            })
            .filter(({ list }) => list.length > 0)
            .map(({ category, list }) => (
              <div key={category.slug} className="flex flex-col gap-4 bg-paper p-6">
                <div>
                  <Link
                    href={`/shop?cat=${category.slug}`}
                    className="font-display text-xl font-bold uppercase leading-tight tracking-wide hover:text-ink-soft"
                  >
                    {category.name}
                  </Link>
                  <p className="mt-1 text-xs text-ink-soft">{category.blurb}</p>
                </div>
                <ul className="flex flex-col gap-2">
                  {list.map((b) => (
                    <li key={b.slug}>
                      <Link
                        href={`/shop?cat=${category.slug}&brand=${b.slug}`}
                        className="group flex items-baseline justify-between gap-3"
                      >
                        <span className="font-mono text-xs uppercase tracking-[0.1em] transition-colors duration-200 ease-out group-hover:text-ink">
                          {b.name}
                          {b.treatment === "direct" && (
                            <span className="ml-2 text-[9px] tracking-[0.16em] text-ink-soft">
                              DIRECT
                            </span>
                          )}
                        </span>
                        <span className="font-mono text-[10px] text-ink-soft">
                          {b.subcategory ? subcategoryName(b.subcategory) : ""}
                        </span>
                      </Link>
                    </li>
                  ))}
                </ul>
              </div>
            ))}
        </div>
      </section>

      {/* House label */}
      {houseBrands.length > 0 && (
        <section className="border-t border-line bg-carbon text-chalk">
          <div className="mx-auto max-w-7xl px-6 py-14 md:py-16">
            <SectionHead dark eyebrow="House label" title="Club kit and fuel." />
            <ul className="flex flex-wrap gap-3">
              {houseBrands.map((b) => (
                <li key={b.slug}>
                  <Link
                    href={`/shop?brand=${b.slug}`}
                    className="inline-block border border-line-dark px-4 py-2 font-mono text-[11px] uppercase tracking-[0.16em] transition-colors duration-200 ease-out hover:border-chalk hover:text-chalk"
                  >
                    {b.name}
                    <span className="ml-2 text-chalk/40">{countFor(b.slug)}</span>
                  </Link>
                </li>
              ))}
            </ul>
            <p className="mt-6 font-mono text-[11px] uppercase tracking-[0.18em] text-chalk/50">
              Made for the club · {houseBrands
                .flatMap((b) => b.categories)
                .map(categoryName)
                .join(" · ")}
            </p>
          </div>
        </section>
      )}
    </>
  );
}
