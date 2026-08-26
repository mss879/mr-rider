"use client";

import Image from "next/image";
import Link from "next/link";
import { usePathname } from "next/navigation";
import { useCallback, useEffect, useMemo, useRef, useState } from "react";
import {
  brandName,
  categories,
  isModelNavCategory,
  subcategoryName,
  utilityNav,
  type Category,
  type MenuSection,
} from "@/lib/taxonomy";
import type { NavAvailability } from "@/lib/db";
import { SITE_LOGO, SITE_LOGO_SIZE, SITE_NAME } from "@/lib/site";
import { useSession } from "@/lib/useSession";

/* Club navigation — the product categories live in the Shop mega-menu,
   Brands and Sale are the two utility links from the client sheet. */
const CLUB_NAV = [
  { href: "/daily-listings", label: "Daily Listings" },
  { href: "/auction", label: "Auction" },
  { href: "/coaching", label: "Coaching" },
  { href: "/about", label: "About" },
  { href: "/contact", label: "Contact" },
];

const EMPTY: NavAvailability = {
  categories: [],
  subcategories: [],
  brands: {},
  models: {},
};

/* A section headed by a BRAND, holding that brand's models.

   Road Bikes and Framesets have exactly one product type each, so their menu
   was a heading with a single link under it next to a tall column of brands.
   What a rider is choosing there is the brand and then the model, so those two
   aisles use this instead — the brand becomes the heading and its models are
   the items, which is the shape Components already had and the club asked for.

   `items` are model NAMES, not slugs: they come from the catalogue rather than
   the taxonomy, so there is no slug to look them up by. */
type ModelSection = {
  title: string;
  kind: "model";
  /** Brand slug, for the heading's own link and each model's filter. */
  brand: string;
  items: string[];
  /** Models this brand actually has, when more than the menu lists. */
  total: number;
};

type VisibleSection = (MenuSection & { items: string[] }) | ModelSection;
/* `Omit` the sections rather than intersecting: Category pins them to
   MenuSection[], which a brand-headed ModelSection is deliberately not. */
type VisibleCategory = Omit<Category, "sections"> & {
  sections: VisibleSection[];
};

/** The full structure, minus the Future Expansion sections. */
function fullMenu(): VisibleCategory[] {
  return categories.map((c) => ({
    ...c,
    sections: c.sections.filter((s) => s.kind !== "future"),
  }));
}

/* One section per brand that actually has stock in this aisle, each holding
   that brand's models. Built from the catalogue, so it needs no taxonomy entry
   per model and stays correct as stock comes and goes. */
function brandSections(
  category: string,
  availability: NavAvailability,
): ModelSection[] {
  const byBrand = availability.models[category] ?? {};
  return Object.entries(byBrand)
    .filter(([, m]) => m.names.length > 0)
    .map(([brand, m]) => ({
      title: brandName(brand),
      kind: "model" as const,
      brand,
      items: m.names,
      total: m.total,
    }))
    .sort((a, b) => a.title.localeCompare(b.title));
}

/** Drop menu entries with no stock behind them; never render an empty section. */
function visibleMenu(availability: NavAvailability): VisibleCategory[] {
  if (availability.categories.length === 0) return fullMenu();

  const hasCat = new Set(availability.categories);
  const hasSub = new Set(availability.subcategories);

  const menu = categories
    .filter((c) => hasCat.has(c.slug))
    .map((c) => {
      // Brand links are checked against this aisle's stock, not the shop's.
      const hasBrand = new Set(availability.brands[c.slug] ?? []);

      /* Road Bikes and Framesets navigate brand → model instead of by product
         type. Fall through to the normal structure when the catalogue has no
         models to show, so the aisle is never left with an empty panel. */
      if (isModelNavCategory(c.slug)) {
        const sections = brandSections(c.slug, availability);
        if (sections.length > 0) return { ...c, sections };
      }

      return {
        ...c,
        sections: c.sections
          .map((s) => ({
            ...s,
            items: s.items.filter((slug) =>
              s.kind === "brand" ? hasBrand.has(slug) : hasSub.has(slug),
            ),
          }))
          .filter((s) => s.items.length > 0),
      };
    })
    .filter((c) => c.sections.length > 0);

  // Catalog hasn't been migrated onto this taxonomy yet — show the structure
  // rather than an empty menu.
  return menu.length > 0 ? menu : fullMenu();
}

function sectionHref(
  category: string,
  section: VisibleSection,
  item: string,
): string {
  if (section.kind === "brand") return `/shop?cat=${category}&brand=${item}`;
  if (section.kind === "model") {
    // The catalogue has no per-product page, so a model lands on its aisle
    // filtered to that brand with the model name in the search box — the same
    // deep link the admin's inquiry inbox uses.
    const params = new URLSearchParams({
      cat: category,
      brand: section.brand,
      q: item,
    });
    return `/shop?${params.toString()}`;
  }
  return `/shop?cat=${category}&sub=${item}`;
}

function itemLabel(section: VisibleSection, item: string): string {
  if (section.kind === "brand") return brandName(item);
  if (section.kind === "model") return item;
  return subcategoryName(item);
}

export default function SiteHeader({
  availability = EMPTY,
}: {
  availability?: NavAvailability;
}) {
  const [mobileOpen, setMobileOpen] = useState(false);
  const [megaOpen, setMegaOpen] = useState(false);
  const [activeCat, setActiveCat] = useState<string | null>(null);
  const [openMobileCat, setOpenMobileCat] = useState<string | null>(null);
  const pathname = usePathname();
  const { session } = useSession();
  const closeTimer = useRef<ReturnType<typeof setTimeout> | null>(null);
  const openTimer = useRef<ReturnType<typeof setTimeout> | null>(null);
  const headerRef = useRef<HTMLElement>(null);

  const menu = useMemo(() => visibleMenu(availability), [availability]);
  const active = menu.find((c) => c.slug === activeCat) ?? menu[0];

  useEffect(() => {
    setMobileOpen(false);
    setMegaOpen(false);
  }, [pathname]);

  useEffect(() => {
    document.body.style.overflow = mobileOpen ? "hidden" : "";
    return () => {
      document.body.style.overflow = "";
    };
  }, [mobileOpen]);

  useEffect(() => {
    if (!megaOpen && !mobileOpen) return;
    const onKey = (e: KeyboardEvent) => {
      if (e.key !== "Escape") return;
      setMegaOpen(false);
      setMobileOpen(false);
    };
    window.addEventListener("keydown", onKey);
    return () => window.removeEventListener("keydown", onKey);
  }, [megaOpen, mobileOpen]);

  const clearTimers = useCallback(() => {
    if (closeTimer.current) clearTimeout(closeTimer.current);
    if (openTimer.current) clearTimeout(openTimer.current);
  }, []);

  const openMega = useCallback(() => {
    clearTimers();
    setMegaOpen(true);
    setActiveCat((c) => c ?? menu[0]?.slug ?? null);
  }, [clearTimers, menu]);

  /* Hover INTENT, not hover. The mega panel is full-width and covers the top
     of the page, so opening it the instant the pointer touches "Shop" meant it
     flew open whenever someone crossed the nav on their way to Sign in — which
     is the behaviour the club reported as disruptive. A short dwell tells a
     deliberate hover apart from a pointer passing through. */
  const scheduleOpen = useCallback(() => {
    clearTimers();
    openTimer.current = setTimeout(openMega, 160);
  }, [clearTimers, openMega]);

  /** Pointer left the trigger before the dwell elapsed — never open. */
  const cancelOpen = useCallback(() => {
    if (openTimer.current) clearTimeout(openTimer.current);
  }, []);

  // Small grace period the other way, so the pointer can travel from the
  // trigger down into the panel without it closing underneath them.
  const scheduleClose = useCallback(() => {
    clearTimers();
    closeTimer.current = setTimeout(() => setMegaOpen(false), 160);
  }, [clearTimers]);

  useEffect(() => clearTimers, [clearTimers]);

  /* Click-away. Without this the panel could be left hanging open over the
     page: it only ever closed on Escape or on the pointer crossing back out
     of the header, so a click anywhere else left it sitting there.
     `pointerdown` rather than `click` so it closes on press, before the click
     lands on whatever is underneath. */
  useEffect(() => {
    if (!megaOpen) return;
    const onPointerDown = (e: PointerEvent) => {
      if (headerRef.current?.contains(e.target as Node)) return;
      clearTimers();
      setMegaOpen(false);
    };
    document.addEventListener("pointerdown", onPointerDown);
    return () => document.removeEventListener("pointerdown", onPointerDown);
  }, [megaOpen, clearTimers]);

  const navLink = (href: string, label: string) => {
    const isActive = pathname.startsWith(href);
    return (
      <Link
        key={href}
        href={href}
        className={`whitespace-nowrap font-mono text-[11px] uppercase tracking-[0.16em] transition-colors duration-200 ease-out hover:text-ink-soft ${
          isActive
            ? "text-ink underline decoration-ink decoration-2 underline-offset-8"
            : "text-ink"
        }`}
      >
        {label}
      </Link>
    );
  };

  return (
    <>
      <p className="bg-carbon px-4 py-1.5 text-center font-mono text-[10px] uppercase tracking-[0.2em] text-chalk/80">
        Members only · sign up → dues → admin approval ·{" "}
        <span className="text-chalk">new stock daily 09:00</span>
      </p>

      <header
        ref={headerRef}
        className="sticky top-0 z-40 border-b border-line bg-paper/95 backdrop-blur"
        onMouseLeave={scheduleClose}
      >
        <div className="mx-auto flex max-w-7xl items-center justify-between gap-6 px-6 py-4">
          {/* The mark carries the wordmark inside the artwork, so `alt` is the
              link's accessible name and the text a crawler reads — no separate
              aria-label, which would only override it. `priority` because this
              is above the fold on every route. */}
          <Link href="/" className="shrink-0">
            <Image
              src={SITE_LOGO}
              alt={SITE_NAME}
              width={SITE_LOGO_SIZE}
              height={SITE_LOGO_SIZE}
              sizes="64px"
              priority
              /* The mark is chrome on a near-white ground, so its highlights
                 and the wordmark under the bike wash out against the paper
                 masthead. A hairline ink shadow puts an edge back under it
                 without boxing the logo in or altering the artwork. The dark
                 footer and drawer need none of this. */
              className="h-12 w-auto [filter:drop-shadow(0_1px_1px_oklch(17%_0.006_270/0.55))] md:h-14"
            />
          </Link>

          <nav className="hidden items-center gap-5 xl:flex" aria-label="Main">
            {/* A deliberate hover or a keyboard tab opens the mega-menu;
                clicking goes straight to the full shop floor without the panel
                flashing open on the way out. */}
            <Link
              href="/shop"
              onMouseEnter={scheduleOpen}
              onMouseLeave={cancelOpen}
              onFocus={(e) => {
                // A mouse click also focuses the link. :focus-visible is how the
                // browser itself distinguishes keyboard focus from that, so the
                // panel opens for a tab and stays shut for a click.
                try {
                  if (e.currentTarget.matches(":focus-visible")) openMega();
                } catch {
                  // Selector unsupported — fall back to opening on any focus.
                  openMega();
                }
              }}
              onClick={() => {
                clearTimers();
                setMegaOpen(false);
              }}
              aria-expanded={megaOpen}
              aria-haspopup="true"
              className={`flex items-center gap-1.5 whitespace-nowrap font-mono text-[11px] uppercase tracking-[0.16em] transition-colors duration-200 ease-out hover:text-ink-soft ${
                pathname.startsWith("/shop")
                  ? "text-ink underline decoration-ink decoration-2 underline-offset-8"
                  : "text-ink"
              }`}
            >
              Shop
              <span
                aria-hidden
                className={`text-[9px] transition-transform duration-200 ease-out ${megaOpen ? "rotate-180" : ""}`}
              >
                ▼
              </span>
            </Link>
            {utilityNav.map((l) => navLink(l.href, l.label))}
            {CLUB_NAV.map((l) => navLink(l.href, l.label))}
          </nav>

          <div className="flex items-center gap-4">
            <Link
              href={session ? "/inquiries" : "/account"}
              className="hidden whitespace-nowrap font-mono text-[11px] uppercase tracking-[0.16em] transition-colors duration-200 ease-out hover:text-ink-soft md:inline-block"
            >
              {session ? "My inquiries" : "Sign in"}
            </Link>
            <Link
              href="/apply"
              className="hidden whitespace-nowrap bg-ink px-4 py-2.5 font-mono text-[10px] font-semibold uppercase tracking-[0.18em] text-chalk transition-colors duration-200 ease-out hover:bg-ink-soft md:inline-block"
            >
              Join the Club
            </Link>
            <button
              type="button"
              onClick={() => setMobileOpen(true)}
              aria-expanded={mobileOpen}
              aria-label="Open menu"
              className="flex flex-col gap-1.5 p-2 xl:hidden"
            >
              <span className="block h-0.5 w-6 bg-ink" />
              <span className="block h-0.5 w-6 bg-ink" />
              <span className="block h-0.5 w-4 bg-ink" />
            </button>
          </div>
        </div>

        {/* DESKTOP MEGA-MENU — categories left, product sections centre,
            brands right, per the client's mega-menu layout note. */}
        {megaOpen && active && (
          <div
            className="absolute inset-x-0 top-full hidden border-b border-line bg-paper shadow-[0_18px_40px_-24px_rgba(0,0,0,0.45)] xl:block"
            onMouseEnter={openMega}
          >
            <div className="mx-auto grid max-w-7xl grid-cols-[240px_minmax(0,1fr)] gap-0 px-6">
              <ul className="border-r border-line py-6 pr-6" aria-label="Product categories">
                {menu.map((c) => (
                  <li key={c.slug}>
                    <Link
                      href={`/shop?cat=${c.slug}`}
                      onMouseEnter={() => setActiveCat(c.slug)}
                      onFocus={() => setActiveCat(c.slug)}
                      className={`flex items-center justify-between gap-3 py-2 font-mono text-[11px] uppercase tracking-[0.14em] transition-colors duration-200 ease-out ${
                        c.slug === active.slug
                          ? "text-ink font-semibold"
                          : "text-ink hover:text-ink-soft"
                      }`}
                    >
                      {c.name}
                      <span aria-hidden className="text-ink-soft">
                        →
                      </span>
                    </Link>
                  </li>
                ))}
              </ul>

              <div className="py-6 pl-8">
                <div className="mb-5 flex items-baseline justify-between gap-4">
                  <div>
                    <p className="font-display text-2xl font-bold uppercase tracking-wide">
                      {active.name}
                    </p>
                    <p className="mt-0.5 text-xs text-ink-soft">{active.blurb}</p>
                  </div>
                  <Link
                    href={`/shop?cat=${active.slug}`}
                    className="whitespace-nowrap font-mono text-[10px] font-semibold uppercase tracking-[0.16em] underline decoration-ink decoration-2 underline-offset-4 hover:text-ink-soft"
                  >
                    Shop all →
                  </Link>
                </div>

                <div
                  className={`grid gap-8 pb-7 ${
                    active.sections.some((s) => s.kind === "brand")
                      ? "lg:grid-cols-[minmax(0,2fr)_minmax(0,1fr)]"
                      : ""
                  }`}
                >
                  {/* Brand-headed aisles carry more, shorter columns than a
                      product-type aisle, so they get a third column rather
                      than running twice as tall. */}
                  <div
                    className={`grid gap-x-8 gap-y-6 sm:grid-cols-2 ${
                      active.sections.some((s) => s.kind === "model")
                        ? "lg:grid-cols-3"
                        : ""
                    }`}
                  >
                    {active.sections
                      .filter((s) => s.kind !== "brand")
                      .map((s) => (
                        <div key={s.title}>
                          {s.kind === "model" ? (
                            // The brand heading is itself the way into that
                            // brand's whole range — the middle step of
                            // category → brand → model.
                            <Link
                              href={`/shop?cat=${active.slug}&brand=${s.brand}`}
                              className="mb-2.5 block font-mono text-[10px] uppercase tracking-[0.22em] text-ink transition-colors duration-200 ease-out hover:text-ink-soft"
                            >
                              {s.title}
                            </Link>
                          ) : (
                            <p className="mb-2.5 font-mono text-[10px] uppercase tracking-[0.22em] text-ink-soft">
                              {s.title}
                            </p>
                          )}
                          <ul className="flex flex-col gap-1.5">
                            {s.items.map((item) => (
                              <li key={item}>
                                <Link
                                  href={sectionHref(active.slug, s, item)}
                                  className="text-sm transition-colors duration-200 ease-out hover:text-ink-soft"
                                >
                                  {itemLabel(s, item)}
                                </Link>
                              </li>
                            ))}
                          </ul>
                          {/* Says what it is not showing rather than quietly
                              stopping at the cap. */}
                          {s.kind === "model" && s.total > s.items.length && (
                            <Link
                              href={`/shop?cat=${active.slug}&brand=${s.brand}`}
                              className="mt-2 inline-block font-mono text-[10px] uppercase tracking-[0.16em] text-ink-soft underline decoration-ink decoration-2 underline-offset-4 hover:text-ink"
                            >
                              All {s.total} →
                            </Link>
                          )}
                        </div>
                      ))}
                  </div>

                  {active.sections.some((s) => s.kind === "brand") && (
                    <div className="border-l border-line pl-8">
                      {active.sections
                        .filter((s) => s.kind === "brand")
                        .map((s) => (
                          <div key={s.title} className="mb-6 last:mb-0">
                            <p className="mb-2.5 font-mono text-[10px] uppercase tracking-[0.22em] text-ink-soft">
                              {s.title}
                            </p>
                            <ul className="flex flex-col gap-1.5">
                              {s.items.map((item) => (
                                <li key={item}>
                                  <Link
                                    href={sectionHref(active.slug, s, item)}
                                    className="font-mono text-xs tracking-[0.06em] transition-colors duration-200 ease-out hover:text-ink-soft"
                                  >
                                    {brandName(item)}
                                  </Link>
                                </li>
                              ))}
                            </ul>
                          </div>
                        ))}
                      <Link
                        href="/brands"
                        className="mt-4 inline-block font-mono text-[10px] font-semibold uppercase tracking-[0.16em] underline decoration-ink decoration-2 underline-offset-4 hover:text-ink-soft"
                      >
                        All brands →
                      </Link>
                    </div>
                  )}
                </div>
              </div>
            </div>
          </div>
        )}
      </header>

      {/* MOBILE — one expandable level before products reach the screen. */}
      {mobileOpen && (
        <div className="fixed inset-0 z-50 flex flex-col overflow-y-auto bg-carbon text-chalk xl:hidden">
          <div className="sticky top-0 flex items-center justify-between border-b border-line-dark bg-carbon px-6 py-4">
            <Image
              src={SITE_LOGO}
              alt={SITE_NAME}
              width={SITE_LOGO_SIZE}
              height={SITE_LOGO_SIZE}
              sizes="48px"
              className="h-10 w-auto"
            />
            <button
              type="button"
              onClick={() => setMobileOpen(false)}
              aria-label="Close menu"
              className="p-2 font-mono text-sm uppercase tracking-[0.18em]"
            >
              Close ✕
            </button>
          </div>

          <nav className="flex flex-1 flex-col px-6 py-6" aria-label="Mobile">
            <p className="mb-2 font-mono text-[10px] uppercase tracking-[0.22em] text-chalk/40">
              Shop
            </p>
            <ul>
              {menu.map((c) => {
                const expanded = openMobileCat === c.slug;
                return (
                  <li key={c.slug} className="border-b border-line-dark">
                    <button
                      type="button"
                      onClick={() => setOpenMobileCat(expanded ? null : c.slug)}
                      aria-expanded={expanded}
                      className="flex w-full items-center justify-between gap-4 py-3.5 text-left"
                    >
                      <span className="font-display text-2xl font-bold uppercase tracking-wide">
                        {c.name}
                      </span>
                      <span
                        aria-hidden
                        className={`font-mono text-sm text-chalk transition-transform duration-200 ease-out ${expanded ? "rotate-45" : ""}`}
                      >
                        +
                      </span>
                    </button>
                    {expanded && (
                      <div className="pb-5">
                        <Link
                          href={`/shop?cat=${c.slug}`}
                          className="mb-4 inline-block font-mono text-[10px] font-semibold uppercase tracking-[0.16em] text-chalk underline underline-offset-4"
                        >
                          Shop all {c.name} →
                        </Link>
                        {/* sectionHref and itemLabel already understand a
                            brand-headed model section, so Road Bikes and
                            Framesets get the same brand → model drill-down
                            here as on the desktop panel. */}
                        {c.sections.map((s) => (
                          <div key={s.title} className="mb-4 last:mb-0">
                            {s.kind === "model" ? (
                              <Link
                                href={`/shop?cat=${c.slug}&brand=${s.brand}`}
                                className="mb-2 block font-mono text-[10px] uppercase tracking-[0.22em] text-chalk"
                              >
                                {s.title} →
                              </Link>
                            ) : (
                              <p className="mb-2 font-mono text-[10px] uppercase tracking-[0.22em] text-chalk/40">
                                {s.title}
                              </p>
                            )}
                            <ul className="grid grid-cols-2 gap-x-4 gap-y-2">
                              {s.items.map((item) => (
                                <li key={item}>
                                  <Link
                                    href={sectionHref(c.slug, s, item)}
                                    className="text-sm text-chalk/80"
                                  >
                                    {itemLabel(s, item)}
                                  </Link>
                                </li>
                              ))}
                            </ul>
                            {s.kind === "model" && s.total > s.items.length && (
                              <Link
                                href={`/shop?cat=${c.slug}&brand=${s.brand}`}
                                className="mt-2 inline-block font-mono text-[10px] uppercase tracking-[0.16em] text-chalk/50 underline underline-offset-4"
                              >
                                All {s.total} →
                              </Link>
                            )}
                          </div>
                        ))}
                      </div>
                    )}
                  </li>
                );
              })}
            </ul>

            <p className="mb-2 mt-8 font-mono text-[10px] uppercase tracking-[0.22em] text-chalk/40">
              The Club
            </p>
            <ul>
              {[
                ...utilityNav,
                ...CLUB_NAV,
                session
                  ? { href: "/inquiries", label: "My inquiries" }
                  : { href: "/account", label: "Sign in" },
              ].map((l) => (
                <li key={l.href} className="border-b border-line-dark">
                  <Link
                    href={l.href}
                    className="block py-3 font-mono text-xs uppercase tracking-[0.18em] text-chalk/80"
                  >
                    {l.label}
                  </Link>
                </li>
              ))}
            </ul>
          </nav>

          <div className="border-t border-line-dark px-6 py-6">
            <Link
              href="/apply"
              className="inline-block bg-chalk px-5 py-3 font-mono text-[11px] font-semibold uppercase tracking-[0.18em] text-carbon"
            >
              Join the Club →
            </Link>
          </div>
        </div>
      )}
    </>
  );
}
