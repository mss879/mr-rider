import Link from "next/link";
import Image from "next/image";
import ArrowCta from "@/components/ArrowCta";
import AuctionFloor from "@/components/home/AuctionFloor";
import Marquee from "@/components/Marquee";
import ProductCard from "@/components/ProductCard";
import SectionHead from "@/components/SectionHead";
import ClubFaq from "@/components/home/ClubFaq";
import Experience from "@/components/home/Experience";
import HeroDoors from "@/components/home/HeroDoors";
import InquiryModel from "@/components/home/InquiryModel";
import JoinCta from "@/components/home/JoinCta";
import ProofBand from "@/components/home/ProofBand";
import WhyClub from "@/components/home/WhyClub";
import { brandName, categories, directoryBrands, subcategoryName } from "@/lib/taxonomy";
import { getCoaches, getLots, getPrograms, getProducts } from "@/lib/db";
import { IMAGERY } from "@/lib/imagery";
import { rise } from "@/lib/motion";

// Re-fetch backend data at most every 60s
export const revalidate = 60;

/* Reading order of the page, and why it is this order:

   The hero states what this is. Everything after it answers, in the order a
   sceptical visitor asks them, "why would I join a shop?" — the argument
   (WhyClub), the inventory of what a membership actually contains
   (Experience), then proof it is real (the aisles, the stock, the drop, the
   coaches, the lots), then the model that makes the club unusual
   (InquiryModel), the numbers (ProofBand), the process (How you get in), the
   objections (ClubFaq) and the ask (JoinCta).

   Motion is split in two. Above the fold uses [data-rise] — pure CSS, running
   on the first frame, so the headline never waits on a network round-trip.
   Everything below uses [data-reveal], driven by the one GSAP ScrollTrigger
   batch in MotionProvider. Both tiers are inert under prefers-reduced-motion.
   See globals.css and src/lib/motion.ts. */

export default async function Home() {
  const [products, coaches, programs, lots] = await Promise.all([
    getProducts(),
    getCoaches(),
    getPrograms(),
    getLots(),
  ]);
  const featuredItems = products.filter((p) => p.featured);
  const todaysListings = products.filter((p) => p.addedDaysAgo === 0);
  const clearanceItems = products.filter((p) => p.clearance);
  const countryCount = new Set(coaches.map((c) => c.code)).size;

  return (
    <>
      {/* HERO — marquee-hero DNA over a full-bleed photograph.

          The band is dark because the photograph is: the club asked for a hero
          image, and a picture behind black type on paper can only ever be a
          washed-out watermark. Inverting the band lets the frame carry its full
          contrast and keeps the type legible on top of it. */}
      <section className="relative isolate overflow-clip border-b border-line-dark bg-carbon text-chalk">
        {/* Not `fill`. The frame is 2.36:1 and the band is far squarer than
            that — under 2:1 at any laptop size — so object-cover crops the
            SIDES and shows the full height, which put the riders at 70% down,
            precisely where the rail sits, and left the headline on empty sky.

            Anchoring an oversized image to the bottom instead crops the sky off
            the top and lifts the riders into the headline band. The 160% is a
            proportion of the band, so the crop holds its composition now that
            the band is a screenful rather than a fixed 38rem. What it costs is
            resolution: on a tall screen this is drawn wider than the 2560px
            master. Under two scrims at q55 that is invisible, and it is the
            reason not to push the overshoot any further than 160%. */}
        <Image
          src={IMAGERY.peloton.src}
          alt=""
          aria-hidden
          width={IMAGERY.peloton.width}
          height={IMAGERY.peloton.height}
          // The LCP element on the site's most-visited page: fetched eagerly at
          // high priority, and sized so a phone is never handed the master.
          priority
          sizes="100vw"
          // Under two scrims and full of film grain — 55 is invisible here and
          // takes roughly 40% off the largest download on the page.
          quality={55}
          className="pointer-events-none absolute inset-x-0 bottom-0 -z-10 h-[160%] w-full object-cover object-[62%_center]"
        />
        {/* Two scrims, not one, and the stops are placed rather than even.

            Vertical: heaviest at the top where the headline sits against sky,
            lightest at 70% — which is exactly where the riders are in the
            frame, so the part of the photograph worth seeing is the part least
            covered. Horizontal: weights the left third, where the rail copy is
            smallest and has the least contrast to spare. */}
        <div
          aria-hidden
          className="absolute inset-0 -z-10 bg-gradient-to-b from-carbon/88 via-carbon/12 via-72% to-carbon/72"
        />
        <div
          aria-hidden
          className="absolute inset-0 -z-10 bg-gradient-to-r from-carbon/95 from-8% via-carbon/22 via-42% to-transparent"
        />
        {/* The band is a screenful: the viewport less the strip and masthead
            above it (--chrome-h, globals.css), so its bottom edge lands on the
            fold instead of below it. `svh` and not `dvh` — a hero that resizes
            every time a phone's URL bar collapses reflows the headline mid-
            scroll. It stays a MIN, so the stacked phone layout, which is
            already taller than a screen, simply ignores it.

            The height has to sit on the grid rather than the section or the
            rows have nothing to distribute themselves in. Below `lg` that is
            two stacked rows, centred as a block; from `lg` it is one row, and
            it stretches instead so the rail's right-hand rule runs the full
            height of the band. */}
        <div className="mx-auto grid min-h-[calc(100svh-var(--chrome-h))] max-w-7xl grid-cols-1 content-center lg:grid-cols-12 lg:content-stretch">
          {/* The rail spreads to fill its side of the rule — eyebrow on the
              top edge, sign-in on the bottom, the argument and the gate spaced
              out between them — rather than sitting as one tight clump with a
              screenful of dead space around it. `gap-8` stays the FLOOR on the
              spacing; justify-between only ever adds to it. */}
          <div className="flex flex-col gap-8 px-6 py-12 lg:col-span-4 lg:justify-between lg:border-r lg:border-line-dark lg:py-16">
            <p
              data-rise
              style={rise(1)}
              className="font-mono text-[11px] uppercase tracking-[0.22em] text-chalk/60"
            >
              A members-only cycling club
            </p>
            <p
              data-rise
              style={rise(2)}
              className="max-w-sm text-justify text-sm leading-relaxed text-chalk/70"
            >
              One shop floor with {categories.length} aisles, fresh listings
              every morning, a live auction, a clearance market and coaches on
              four continents. You don&apos;t browse MR.RIDER — you get let in.
            </p>
            <div
              data-rise
              style={rise(3)}
              className="border border-line-dark bg-carbon/70 p-5 text-chalk backdrop-blur-sm"
            >
              <p className="mb-2 font-mono text-[10px] uppercase tracking-[0.22em] text-chalk/70">
                The gate
              </p>
              <p className="text-sm leading-relaxed text-chalk/80">
                Sign up → pay your dues → the club approves you. Then the whole
                floor is yours.
              </p>
            </div>
            <div
              data-rise
              style={rise(4)}
              className="flex flex-col items-start gap-3"
            >
              <ArrowCta href="/apply" tone="chalk">
                Apply for membership
              </ArrowCta>
              <Link
                href="/account"
                className="font-mono text-[11px] uppercase tracking-[0.16em] text-chalk/60 underline decoration-line-dark decoration-2 underline-offset-4 transition-colors duration-200 ease-out hover:text-chalk hover:decoration-chalk"
              >
                Already riding with us? Sign in →
              </Link>
            </div>
          </div>
          {/* The headline sits ON the bottom of the band, not in the middle of
              it, so the screenful of height above reads as deliberate negative
              space rather than slack. Its `pb-16` matches the rail's, which is
              what lands the last line on the same baseline as the sign-in link
              across the rule — move one padding and move the other. */}
          <div className="flex min-w-0 flex-col justify-center px-6 py-12 lg:col-span-8 lg:justify-end lg:pb-16 lg:pl-12 lg:pt-24">
            {/* Three blocks rather than <br>s, so each line can carry its own
                step in the entrance cascade. */}
            <h1 className="headline text-[clamp(3.2rem,9.5vw,7.5rem)]">
              <span data-rise style={rise(0)} className="block">
                Ride fast.
              </span>
              <span data-rise style={rise(1)} className="block">
                Buy smart.
              </span>
              <span data-rise style={rise(2)} className="block text-chalk">
                Join the club.
              </span>
            </h1>
          </div>
        </div>
      </section>

      {/* The two doors + today's drop. Their own band rather than stacked
          inside the hero, so the headline is not sharing a column with them. */}
      <HeroDoors
        categoryCount={categories.length}
        coachCount={coaches.length}
        countryCount={countryCount}
        todayCount={todaysListings.length}
      />

      <Marquee
        items={[
          "Members only",
          "New stock daily — 09:00",
          "Auction floor live",
          "Clearance market open",
          "International coaching pool",
        ]}
      />

      {/* WHY THE CLUB — the argument, before the merchandise */}
      <WhyClub
        coachCount={coaches.length}
        countryCount={countryCount}
        brandCount={directoryBrands.length}
      />

      {/* WHAT A MEMBERSHIP CONTAINS */}
      <Experience
        categoryCount={categories.length}
        brandCount={directoryBrands.length}
        coachCount={coaches.length}
        countryCount={countryCount}
        lotCount={lots.length}
      />

      {/* CATEGORY INDEX */}
      <section className="mx-auto max-w-7xl px-6 py-16 md:py-20">
        <div data-reveal="fade">
          <SectionHead
            eyebrow="The shop"
            title={`${categories.length} aisles. One floor.`}
            link={{ href: "/shop", label: "Enter the shop" }}
          />
        </div>
        <div className="grid grid-cols-2 border-l border-t border-line md:grid-cols-3 xl:grid-cols-4">
          {categories.map((c, i) => (
            <Link
              key={c.slug}
              href={`/shop?cat=${c.slug}`}
              data-reveal
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
                className="font-mono text-sm text-ink-soft transition-all duration-200 ease-out group-hover:translate-x-1 group-hover:text-ink"
              >
                →
              </span>
            </Link>
          ))}
        </div>

        {/* Brands stay out of the product aisles — they get their own door. */}
        <div
          data-reveal
          className="mt-10 flex flex-col gap-4 border border-line bg-chalk p-6 sm:flex-row sm:items-center sm:justify-between"
        >
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
          <div data-reveal="fade">
            <SectionHead
              eyebrow="Fresh on the racks"
              title="Featured stock."
              link={{ href: "/shop", label: "Shop everything" }}
            />
          </div>
          {/* The grid reveals as one block rather than card-by-card: the cards
              are equal-height grid children, and wrapping each one to give it
              its own trigger would cost that. */}
          <div
            data-reveal
            className="grid grid-cols-1 gap-5 sm:grid-cols-2 xl:grid-cols-4"
          >
            {featuredItems.map((p) => (
              <ProductCard key={p.id} p={p} />
            ))}
          </div>
        </div>
      </section>

      {/* DAILY LISTINGS TEASER — dark band */}
      <section className="border-y border-line bg-carbon text-chalk">
        <div className="mx-auto max-w-7xl px-6 py-16 md:py-20">
          <div data-reveal="fade">
            <SectionHead
              dark
              eyebrow="Daily listings"
              title="Today's drop."
              link={{ href: "/daily-listings", label: "See all listings" }}
            />
          </div>
          <div>
            {todaysListings.slice(0, 4).map((p, i) => (
              <Link
                key={p.id}
                href={`/shop?cat=${p.category}&sub=${p.subcategory}`}
                data-reveal
                className="group grid grid-cols-[2.5rem_minmax(0,1fr)_auto] items-baseline gap-4 border-b border-line-dark py-4"
              >
                <span className="font-mono text-[11px] text-chalk/40">
                  {String(i + 1).padStart(2, "0")}
                </span>
                <span className="min-w-0">
                  <span className="font-display block truncate text-xl font-bold uppercase tracking-wide transition-colors duration-200 ease-out group-hover:text-chalk/80">
                    {p.name}
                  </span>
                  <span className="font-mono text-[10px] uppercase tracking-[0.18em] text-chalk/50">
                    {brandName(p.brand)}
                  </span>
                </span>
                <span className="font-mono text-[10px] uppercase tracking-[0.14em] text-chalk/50">
                  {subcategoryName(p.subcategory)}
                </span>
              </Link>
            ))}
          </div>
          <p
            data-reveal="fade"
            className="mt-6 font-mono text-[11px] uppercase tracking-[0.18em] text-chalk/50"
          >
            {todaysListings.length} items landed today · drop hits 09:00 ·
            members get first call
          </p>
        </div>
      </section>

      {/* COACHING SPLIT */}
      <section className="border-b border-line">
        <div className="mx-auto grid max-w-7xl lg:grid-cols-2">
          <div className="flex flex-col gap-6 px-6 py-16 lg:border-r lg:border-line md:py-20">
            <p
              data-reveal="fade"
              className="font-mono text-[11px] uppercase tracking-[0.22em] text-ink-soft"
            >
              Coaching
            </p>
            <h2 data-reveal="fade" className="headline text-[clamp(2.2rem,5vw,3.8rem)]">
              Train with the pool.
            </h2>
            <p
              data-reveal="fade"
              className="max-w-md text-sm leading-relaxed text-ink-soft"
            >
              Four structured training programs and {coaches.length} coaches
              across {countryCount} countries — climbing, sprint, time trial,
              endurance, fueling. Booked through your membership.
            </p>
            <ul className="flex flex-wrap gap-2">
              {programs.map((pr) => (
                <li
                  key={pr.id}
                  data-reveal
                  className="border border-line bg-chalk px-3 py-1.5 font-mono text-[10px] uppercase tracking-[0.16em]"
                >
                  {pr.name} · {pr.weeks} wks
                </li>
              ))}
            </ul>
            <div data-reveal="fade">
              <ArrowCta href="/coaching">View programs</ArrowCta>
            </div>
          </div>
          <div className="flex flex-col justify-center gap-0 bg-chalk px-6 py-16 md:py-20">
            {coaches.slice(0, 4).map((c) => (
              <div
                key={c.id}
                data-reveal
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
              data-reveal="fade"
              className="mt-6 w-fit font-mono text-[11px] font-semibold uppercase tracking-[0.18em] underline decoration-ink decoration-2 underline-offset-4 transition-colors duration-200 ease-out hover:text-ink-soft"
            >
              Meet all {coaches.length} coaches →
            </Link>
          </div>
        </div>
      </section>

      {/* THE AUCTION — real lots, not a promo panel */}
      <AuctionFloor lots={lots} />

      {/* CLEARANCE */}
      <section className="mx-auto max-w-7xl px-6 py-16 md:py-20">
        <div
          data-reveal
          className="relative isolate flex flex-col gap-5 overflow-clip border border-line-dark bg-carbon p-8 text-chalk md:p-12"
        >
          {/* Parts on a bench rather than a bike: clearance is end-of-line
              stock and last sizes, which is what the picture shows. */}
          <Image
            src={IMAGERY.parts.src}
            alt=""
            aria-hidden
            width={IMAGERY.parts.width}
            height={IMAGERY.parts.height}
            sizes="(min-width: 768px) 80vw, 100vw"
            className="pointer-events-none absolute inset-0 -z-10 size-full object-cover"
          />
          <span
            aria-hidden
            className="absolute inset-0 -z-10 bg-gradient-to-r from-carbon/95 via-carbon/75 to-carbon/45"
          />
          <span
            aria-hidden
            className="headline ghost-dark pointer-events-none absolute right-5 top-4 select-none text-[clamp(2.5rem,5vw,4.25rem)] leading-none"
          >
            LAST CALL
          </span>
          <p className="font-mono text-[11px] uppercase tracking-[0.22em] text-chalk/60">
            {clearanceItems.length} items · end of line
          </p>
          <h2 className="headline text-[clamp(2rem,4.5vw,3.2rem)]">
            Clearance market.
          </h2>
          <p className="max-w-sm text-sm leading-relaxed text-chalk/70">
            End of line, last sizes and race-used stock on its way out of the
            building. When it&apos;s gone, it&apos;s gone.
          </p>
          <ArrowCta href="/clearance" tone="chalk" className="mt-auto w-fit">
            Raid the market
          </ArrowCta>
        </div>
      </section>

      {/* WHY THERE ARE NO PRICES */}
      <InquiryModel />

      {/* THE FLOOR, COUNTED */}
      <ProofBand
        categoryCount={categories.length}
        brandCount={directoryBrands.length}
        productCount={products.length}
        coachCount={coaches.length}
        countryCount={countryCount}
      />

      {/* JOIN THE CLUB */}
      <section className="border-t border-line">
        <div className="mx-auto max-w-7xl px-6 py-16 md:py-20">
          <div data-reveal="fade">
            <SectionHead eyebrow="Membership" title="How you get in." />
          </div>
          {/* One reveal for the whole grid — the rules between the steps are
              this element's background showing through the gap, so fading the
              steps individually would strand a grey slab on screen. */}
          <div
            data-reveal
            className="grid gap-px border border-line bg-line md:grid-cols-3"
          >
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
                <span className="headline text-5xl text-ink">{s.n}</span>
                <div>
                  <p className="font-display mb-1 text-2xl font-bold uppercase tracking-wide">
                    {s.t}
                  </p>
                  <p className="text-sm leading-relaxed text-ink-soft">{s.d}</p>
                </div>
              </div>
            ))}
          </div>
          <div
            data-reveal="fade"
            className="mt-10 flex flex-col items-start gap-4 sm:flex-row sm:items-center sm:justify-between"
          >
            <p className="font-mono text-[11px] uppercase tracking-[0.18em] text-ink-soft">
              {products.length} items on the floor right now
            </p>
            <ArrowCta href="/apply">Apply now</ArrowCta>
          </div>
        </div>
      </section>

      {/* THE OBJECTIONS */}
      <ClubFaq />

      {/* THE ASK */}
      <JoinCta productCount={products.length} />
    </>
  );
}
