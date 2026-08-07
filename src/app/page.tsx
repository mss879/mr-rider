import Link from "next/link";
import ArrowCta from "@/components/ArrowCta";
import Marquee from "@/components/Marquee";
import ProductCard from "@/components/ProductCard";
import SectionHead from "@/components/SectionHead";
import Lock from "@/components/Lock";
import { discountPct, usd } from "@/lib/data";
import { brandName, categories, directoryBrands } from "@/lib/taxonomy";
import { getCoaches, getLots, getPrograms, getProducts } from "@/lib/db";
import { getMembershipStatus, isApproved } from "@/lib/membership";

// Re-fetch backend data at most every 60s
export const revalidate = 60;

export default async function Home() {
  const [products, coaches, programs, lots, status] = await Promise.all([
    getProducts(),
    getCoaches(),
    getPrograms(),
    getLots(),
    getMembershipStatus(),
  ]);
  const locked = !isApproved(status);
  const featuredItems = products.filter((p) => p.featured);
  const todaysListings = products.filter((p) => p.addedDaysAgo === 0);
  const clearanceItems = products.filter((p) => p.clearance && p.compareAt);
  const maxOff = clearanceItems.length
    ? Math.max(...clearanceItems.map(discountPct))
    : 0;

  return (
    <>
      {/* HERO — marquee-hero DNA: rail copy left, stacked display + stat panels right */}
      <section className="border-b border-line">
        <div className="mx-auto grid max-w-7xl grid-cols-1 lg:grid-cols-12">
          <div className="flex flex-col gap-8 px-6 py-12 lg:col-span-4 lg:border-r lg:border-line lg:py-16">
            <p className="font-mono text-[11px] uppercase tracking-[0.22em] text-ink-soft">
              A members-only cycling club
            </p>
            <p className="max-w-sm text-sm leading-relaxed text-ink-soft">
              One shop floor with ten aisles, fresh listings every morning, a
              live auction, a clearance market and coaches on four continents.
              You don&apos;t browse MR.RIDER — you get let in.
            </p>
            <div className="bg-carbon p-5 text-chalk">
              <p className="mb-2 font-mono text-[10px] uppercase tracking-[0.22em] text-accent">
                The gate
              </p>
              <p className="text-sm leading-relaxed text-chalk/80">
                Sign up → pay your dues → the club approves you. Then the whole
                floor is yours.
              </p>
            </div>
            <ArrowCta href="/apply">Apply for membership</ArrowCta>
          </div>
          <div className="min-w-0 px-6 py-12 lg:col-span-8 lg:py-16 lg:pl-12">
            <h1 className="headline text-[clamp(3.2rem,9.5vw,7.5rem)]">
              Ride fast.
              <br />
              Buy smart.
              <br />
              <span className="text-accent">Join the club.</span>
            </h1>
            <div className="mt-10 grid gap-4 sm:grid-cols-2">
              <Link
                href="/shop"
                className="group hatch-dark relative flex aspect-[16/10] flex-col justify-end p-6 text-chalk transition-transform duration-200 ease-out hover:-translate-y-1"
              >
                <span className="headline text-6xl">
                  {categories.length}
                </span>
                <span className="mt-1 font-mono text-[11px] uppercase tracking-[0.2em] text-chalk/70">
                  Categories · one shop floor
                </span>
                <span
                  aria-hidden
                  className="absolute right-5 top-5 text-accent transition-transform duration-200 ease-out group-hover:translate-x-1"
                >
                  →
                </span>
              </Link>
              <Link
                href="/coaching"
                className="group hatch-dark relative flex aspect-[16/10] flex-col justify-end p-6 text-chalk transition-transform duration-200 ease-out hover:-translate-y-1"
              >
                <span className="headline text-6xl">
                  {String(coaches.length).padStart(2, "0")}
                </span>
                <span className="mt-1 font-mono text-[11px] uppercase tracking-[0.2em] text-chalk/70">
                  Coaches · {new Set(coaches.map((c) => c.code)).size} countries
                </span>
                <span
                  aria-hidden
                  className="absolute right-5 top-5 text-accent transition-transform duration-200 ease-out group-hover:translate-x-1"
                >
                  →
                </span>
              </Link>
            </div>
          </div>
        </div>
      </section>

      <Marquee
        items={[
          "Members only",
          "New stock daily — 09:00",
          "Auction floor live",
          "Clearance market open",
          "International coaching pool",
        ]}
      />

      {/* CATEGORY INDEX */}
      <section className="mx-auto max-w-7xl px-6 py-16 md:py-20">
        <SectionHead
          eyebrow="The shop"
          title="Ten aisles. One floor."
          link={{ href: "/shop", label: "Enter the shop" }}
        />
        <div className="grid grid-cols-2 border-l border-t border-line md:grid-cols-3 xl:grid-cols-4">
          {categories.map((c, i) => (
            <Link
              key={c.slug}
              href={`/shop?cat=${c.slug}`}
              className="group flex flex-col gap-8 border-b border-r border-line p-5 transition-colors duration-200 ease-out hover:bg-chalk"
            >
              <span className="font-mono text-[11px] tracking-[0.16em] text-ink-soft">
                {String(i + 1).padStart(2, "0")}
              </span>
              <span className="min-w-0">
                <span className="font-display block text-xl font-bold uppercase leading-tight tracking-wide">
                  {c.name}
                </span>
                <span className="mt-1 block text-xs text-ink-soft">
                  {c.blurb}
                </span>
              </span>
              <span
                aria-hidden
                className="font-mono text-sm text-ink-soft transition-all duration-200 ease-out group-hover:translate-x-1 group-hover:text-accent-deep"
              >
                →
              </span>
            </Link>
          ))}
        </div>

        {/* Brands stay out of the product aisles — they get their own door. */}
        <div className="mt-10 flex flex-col gap-4 border border-line bg-chalk p-6 sm:flex-row sm:items-center sm:justify-between">
          <div className="min-w-0">
            <p className="mb-2 font-mono text-[11px] uppercase tracking-[0.22em] text-ink-soft">
              {directoryBrands.length} brands on the floor
            </p>
            <p className="truncate font-mono text-xs uppercase tracking-[0.1em]">
              {directoryBrands
                .slice(0, 8)
                .map((b) => b.name)
                .join(" · ")}{" "}
              …
            </p>
          </div>
          <ArrowCta href="/brands" className="shrink-0">
            Shop by brand
          </ArrowCta>
        </div>
      </section>

      {/* FEATURED PRODUCTS */}
      <section className="border-t border-line bg-paper-2">
        <div className="mx-auto max-w-7xl px-6 py-16 md:py-20">
          <SectionHead
            eyebrow="Fresh on the racks"
            title="Featured stock."
            link={{ href: "/shop", label: "Shop everything" }}
          />
          <div className="grid grid-cols-1 gap-5 sm:grid-cols-2 xl:grid-cols-4">
            {featuredItems.map((p) => (
              <ProductCard key={p.id} p={p} locked={locked} />
            ))}
          </div>
        </div>
      </section>

      {/* DAILY LISTINGS TEASER — dark band */}
      <section className="border-y border-line bg-carbon text-chalk">
        <div className="mx-auto max-w-7xl px-6 py-16 md:py-20">
          <SectionHead
            dark
            eyebrow="Daily listings"
            title="Today's drop."
            link={{ href: "/daily-listings", label: "See all listings" }}
          />
          <div>
            {todaysListings.slice(0, 4).map((p, i) => (
              <Link
                key={p.id}
                href={`/shop?cat=${p.category}&sub=${p.subcategory}`}
                className="group grid grid-cols-[2.5rem_minmax(0,1fr)_auto] items-baseline gap-4 border-b border-line-dark py-4"
              >
                <span className="font-mono text-[11px] text-chalk/40">
                  {String(i + 1).padStart(2, "0")}
                </span>
                <span className="min-w-0">
                  <span className="font-display block truncate text-xl font-bold uppercase tracking-wide transition-colors duration-200 ease-out group-hover:text-accent">
                    {p.name}
                  </span>
                  <span className="font-mono text-[10px] uppercase tracking-[0.18em] text-chalk/50">
                    {brandName(p.brand)}
                  </span>
                </span>
                {locked ? (
                  <span className="flex items-center gap-1.5 font-mono text-[10px] font-semibold uppercase tracking-[0.14em] text-chalk/60">
                    <Lock /> Members
                  </span>
                ) : (
                  <span className="font-mono text-sm font-semibold">
                    {usd(p.price)}
                  </span>
                )}
              </Link>
            ))}
          </div>
          <p className="mt-6 font-mono text-[11px] uppercase tracking-[0.18em] text-chalk/50">
            {todaysListings.length} items landed today · drop hits 09:00 ·
            members get first call
          </p>
        </div>
      </section>

      {/* COACHING SPLIT */}
      <section className="border-b border-line">
        <div className="mx-auto grid max-w-7xl lg:grid-cols-2">
          <div className="flex flex-col gap-6 px-6 py-16 lg:border-r lg:border-line md:py-20">
            <p className="font-mono text-[11px] uppercase tracking-[0.22em] text-ink-soft">
              Coaching
            </p>
            <h2 className="headline text-[clamp(2.2rem,5vw,3.8rem)]">
              Train with the pool.
            </h2>
            <p className="max-w-md text-sm leading-relaxed text-ink-soft">
              Four structured training programs and {coaches.length} coaches
              across {new Set(coaches.map((c) => c.code)).size} countries —
              climbing, sprint, time trial, endurance, fueling. Booked through
              your membership.
            </p>
            <ul className="flex flex-wrap gap-2">
              {programs.map((pr) => (
                <li
                  key={pr.id}
                  className="border border-line bg-chalk px-3 py-1.5 font-mono text-[10px] uppercase tracking-[0.16em]"
                >
                  {pr.name} · {pr.weeks} wks
                </li>
              ))}
            </ul>
            <ArrowCta href="/coaching">View programs</ArrowCta>
          </div>
          <div className="flex flex-col justify-center gap-0 bg-chalk px-6 py-16 md:py-20">
            {coaches.slice(0, 4).map((c) => (
              <div
                key={c.id}
                className="flex items-baseline justify-between gap-4 border-b border-line py-4"
              >
                <span className="min-w-0">
                  <span className="font-display block text-xl font-bold uppercase tracking-wide">
                    {c.name}
                  </span>
                  <span className="font-mono text-[10px] uppercase tracking-[0.18em] text-ink-soft">
                    {c.discipline}
                  </span>
                </span>
                <span className="bg-ink px-2 py-1 font-mono text-[10px] tracking-[0.14em] text-chalk">
                  {c.code}
                </span>
              </div>
            ))}
            <Link
              href="/coaching#coaches"
              className="mt-6 w-fit font-mono text-[11px] font-semibold uppercase tracking-[0.18em] underline decoration-accent decoration-2 underline-offset-4 transition-colors duration-200 ease-out hover:text-accent-deep"
            >
              Meet all {coaches.length} coaches →
            </Link>
          </div>
        </div>
      </section>

      {/* AUCTION + CLEARANCE DUO */}
      <section className="mx-auto grid max-w-7xl gap-px md:grid-cols-2">
        <div className="hatch-dark relative flex flex-col gap-5 overflow-clip p-8 text-chalk md:p-12">
          <span
            aria-hidden
            className="headline ghost-dark pointer-events-none absolute right-5 top-4 select-none text-[clamp(2.5rem,5vw,4.25rem)] leading-none"
          >
            LOT {lots[0]?.lot ?? "01"}
          </span>
          <p className="font-mono text-[11px] uppercase tracking-[0.22em] text-accent">
            {lots.length} lots live
          </p>
          <h2 className="headline text-[clamp(2rem,4.5vw,3.2rem)]">
            The auction floor.
          </h2>
          <p className="max-w-sm text-sm leading-relaxed text-chalk/70">
            Race-used framesets, collector steel, one-of-one club pieces.
            Watch freely — bidding unlocks with membership.
          </p>
          <ArrowCta href="/auction" className="mt-auto w-fit">
            Browse lots
          </ArrowCta>
        </div>
        <div className="relative flex flex-col gap-5 overflow-clip border border-line bg-chalk p-8 md:p-12">
          <span
            aria-hidden
            className="headline ghost pointer-events-none absolute right-5 top-4 select-none text-[clamp(2.5rem,5vw,4.25rem)] leading-none"
          >
            −{maxOff}%
          </span>
          <p className="font-mono text-[11px] uppercase tracking-[0.22em] text-accent-deep">
            {clearanceItems.length} items · up to −{maxOff}%
          </p>
          <h2 className="headline text-[clamp(2rem,4.5vw,3.2rem)]">
            Clearance market.
          </h2>
          <p className="max-w-sm text-sm leading-relaxed text-ink-soft">
            End of line and race-used stock, priced to leave the building.
            When it&apos;s gone, it&apos;s gone.
          </p>
          <ArrowCta href="/clearance" className="mt-auto w-fit">
            Raid the market
          </ArrowCta>
        </div>
      </section>

      {/* JOIN THE CLUB */}
      <section className="mt-16 border-t border-line md:mt-20">
        <div className="mx-auto max-w-7xl px-6 py-16 md:py-20">
          <SectionHead
            eyebrow="Membership"
            title="How you get in."
          />
          <div className="grid gap-px border border-line bg-line md:grid-cols-3">
            {[
              {
                n: "01",
                t: "Sign up",
                d: "Create your account and tell us what you ride. Takes two minutes.",
              },
              {
                n: "02",
                t: "Pay your dues",
                d: "The membership fee goes straight to the club — it keeps the floor members-only.",
              },
              {
                n: "03",
                t: "Get approved",
                d: "An admin reviews and unlocks your access: full shop, auction bids, coaching.",
              },
            ].map((s) => (
              <div key={s.n} className="flex flex-col gap-6 bg-paper p-7">
                <span className="headline text-5xl text-accent">{s.n}</span>
                <div>
                  <p className="font-display mb-1 text-2xl font-bold uppercase tracking-wide">
                    {s.t}
                  </p>
                  <p className="text-sm leading-relaxed text-ink-soft">{s.d}</p>
                </div>
              </div>
            ))}
          </div>
          <div className="mt-10 flex flex-col items-start gap-4 sm:flex-row sm:items-center sm:justify-between">
            <p className="font-mono text-[11px] uppercase tracking-[0.18em] text-ink-soft">
              {products.length} items on the floor right now
            </p>
            <ArrowCta href="/apply">Apply now</ArrowCta>
          </div>
        </div>
      </section>
    </>
  );
}
