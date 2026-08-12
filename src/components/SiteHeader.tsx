"use client";

import Link from "next/link";
import { usePathname } from "next/navigation";
import { useCallback, useEffect, useMemo, useRef, useState } from "react";
import {
  brandName,
  categories,
  subcategoryName,
  utilityNav,
  type Category,
  type MenuSection,
} from "@/lib/taxonomy";
import type { NavAvailability } from "@/lib/db";
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

const EMPTY: NavAvailability = { categories: [], subcategories: [], brands: {} };

type VisibleSection = MenuSection & { items: string[] };
type VisibleCategory = Category & { sections: VisibleSection[] };

/** The full structure, minus the Future Expansion sections. */
function fullMenu(): VisibleCategory[] {
  return categories.map((c) => ({
    ...c,
    sections: c.sections.filter((s) => s.kind !== "future"),
  }));
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

function sectionHref(category: string, section: MenuSection, item: string): string {
  return section.kind === "brand"
    ? `/shop?cat=${category}&brand=${item}`
    : `/shop?cat=${category}&sub=${item}`;
}

function itemLabel(section: MenuSection, item: string): string {
  return section.kind === "brand" ? brandName(item) : subcategoryName(item);
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

  const openMega = useCallback(() => {
    if (closeTimer.current) clearTimeout(closeTimer.current);
    setMegaOpen(true);
    setActiveCat((c) => c ?? menu[0]?.slug ?? null);
  }, [menu]);

  // Small grace period so the pointer can travel from trigger to panel.
  const scheduleClose = useCallback(() => {
    if (closeTimer.current) clearTimeout(closeTimer.current);
    closeTimer.current = setTimeout(() => setMegaOpen(false), 120);
  }, []);

  useEffect(() => () => {
    if (closeTimer.current) clearTimeout(closeTimer.current);
  }, []);

  const navLink = (href: string, label: string) => {
    const isActive = pathname.startsWith(href);
    return (
      <Link
        key={href}
        href={href}
        className={`whitespace-nowrap font-mono text-[11px] uppercase tracking-[0.16em] transition-colors duration-200 ease-out hover:text-accent-deep ${
          isActive
            ? "text-accent-deep underline decoration-accent decoration-2 underline-offset-8"
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
        <span className="text-accent">new stock daily 09:00</span>
      </p>

      <header
        className="sticky top-0 z-40 border-b border-line bg-paper/95 backdrop-blur"
        onMouseLeave={scheduleClose}
      >
        <div className="mx-auto flex max-w-7xl items-center justify-between gap-6 px-6 py-4">
          <Link
            href="/"
            className="headline shrink-0 text-2xl"
            aria-label="MR.RIDER — home"
          >
            MR.RIDER
          </Link>

          <nav className="hidden items-center gap-5 xl:flex" aria-label="Main">
            {/* Hover or keyboard focus opens the mega-menu; clicking through
                lands on the full shop floor. */}
            <Link
              href="/shop"
              onMouseEnter={openMega}
              onFocus={openMega}
              aria-expanded={megaOpen}
              aria-haspopup="true"
              className={`flex items-center gap-1.5 whitespace-nowrap font-mono text-[11px] uppercase tracking-[0.16em] transition-colors duration-200 ease-out hover:text-accent-deep ${
                pathname.startsWith("/shop")
                  ? "text-accent-deep underline decoration-accent decoration-2 underline-offset-8"
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
              className="hidden whitespace-nowrap font-mono text-[11px] uppercase tracking-[0.16em] transition-colors duration-200 ease-out hover:text-accent-deep md:inline-block"
            >
              {session ? "My inquiries" : "Sign in"}
            </Link>
            <Link
              href="/apply"
              className="hidden whitespace-nowrap bg-accent px-4 py-2.5 font-mono text-[10px] font-semibold uppercase tracking-[0.18em] text-chalk transition-colors duration-200 ease-out hover:bg-accent-deep md:inline-block"
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
              <span className="block h-0.5 w-4 bg-accent" />
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
                          ? "text-accent-deep"
                          : "text-ink hover:text-accent-deep"
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
                    className="whitespace-nowrap font-mono text-[10px] font-semibold uppercase tracking-[0.16em] underline decoration-accent decoration-2 underline-offset-4 hover:text-accent-deep"
                  >
                    Shop all →
                  </Link>
                </div>

                <div className="grid gap-8 pb-7 lg:grid-cols-[minmax(0,2fr)_minmax(0,1fr)]">
                  <div className="grid gap-x-8 gap-y-6 sm:grid-cols-2">
                    {active.sections
                      .filter((s) => s.kind !== "brand")
                      .map((s) => (
                        <div key={s.title}>
                          <p className="mb-2.5 font-mono text-[10px] uppercase tracking-[0.22em] text-ink-soft">
                            {s.title}
                          </p>
                          <ul className="flex flex-col gap-1.5">
                            {s.items.map((item) => (
                              <li key={item}>
                                <Link
                                  href={sectionHref(active.slug, s, item)}
                                  className="text-sm transition-colors duration-200 ease-out hover:text-accent-deep"
                                >
                                  {itemLabel(s, item)}
                                </Link>
                              </li>
                            ))}
                          </ul>
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
                                    className="font-mono text-xs tracking-[0.06em] transition-colors duration-200 ease-out hover:text-accent-deep"
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
                        className="mt-4 inline-block font-mono text-[10px] font-semibold uppercase tracking-[0.16em] underline decoration-accent decoration-2 underline-offset-4 hover:text-accent-deep"
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
            <span className="headline text-2xl">MR.RIDER</span>
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
                        className={`font-mono text-sm text-accent transition-transform duration-200 ease-out ${expanded ? "rotate-45" : ""}`}
                      >
                        +
                      </span>
                    </button>
                    {expanded && (
                      <div className="pb-5">
                        <Link
                          href={`/shop?cat=${c.slug}`}
                          className="mb-4 inline-block font-mono text-[10px] font-semibold uppercase tracking-[0.16em] text-accent underline underline-offset-4"
                        >
                          Shop all {c.name} →
                        </Link>
                        {c.sections.map((s) => (
                          <div key={s.title} className="mb-4 last:mb-0">
                            <p className="mb-2 font-mono text-[10px] uppercase tracking-[0.22em] text-chalk/40">
                              {s.title}
                            </p>
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
              className="inline-block bg-accent px-5 py-3 font-mono text-[11px] font-semibold uppercase tracking-[0.18em] text-chalk"
            >
              Join the Club →
            </Link>
          </div>
        </div>
      )}
    </>
  );
}
