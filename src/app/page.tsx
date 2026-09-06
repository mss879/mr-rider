import type { Metadata } from "next";
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
import HeroPlate from "@/components/home/HeroPlate";
import InquiryModel from "@/components/home/InquiryModel";
import JoinCta from "@/components/home/JoinCta";
import ProofBand from "@/components/home/ProofBand";
import WhyClub from "@/components/home/WhyClub";
import { brandName, categories, directoryBrands, subcategoryName } from "@/lib/taxonomy";
import { getCoaches, getLots, getPrograms, getProducts } from "@/lib/db";
import { IMAGERY } from "@/lib/imagery";
import { rise } from "@/lib/motion";

export const metadata: Metadata = {
  // Every other route states its own; see the note in app/layout.tsx for why
  // this cannot live on the layout and be inherited.
  alternates: { canonical: "/" },
};

// Re-fetch backend data at most every 60s
export const revalidate = 60;

/* One crop, worn by both layers of the hero backdrop. The still and the clip
   have to agree to the pixel: they crossfade into each other, and any drift
   between these two class lists would show up as the frame jumping at the
   swap. Changing the crop means changing it once, here. */
const HERO_PLATE =
  "pointer-events-none absolute inset-0 -z-10 h-full w-full object-cover object-[62%_center]";

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
      <section
        data-hero
        className="relative isolate overflow-clip border-b border-line-dark bg-carbon text-chalk"
      >
        {/* A plain fill, and it did not used to be. This was an oversized
            plate pinned to the bottom at 160% of the band, because when the
            headline was CENTRED it landed on empty sky and the riders sat down
            at 70%, behind nothing. Overshooting cropped the sky off and shoved
            the peloton up into the type.

            The headline sits on the bottom of the band now, so the riders at
            their natural height are already exactly where the type is, and the
            overshoot only zooms past them — it cut the riders' heads off and
            filled the band with wheels. Both reasons for it are gone.

            Filling instead also fixes what the overshoot cost: the frame is no
            longer drawn wider than its own master, and for the clip, whose
            peloton closes on the camera under its own steam, it is the
            difference between a shot and a blur. */}
        {/* Both layers of the plate in one wrapper, because the wrapper is
            what the scroll moves (MotionProvider · hero): as the band leaves,
            the plate trails the page and swells, and the still and the clip
            have to do that as one picture. `-z-10` on the wrapper is load-
            bearing — a transformed element with no z-index would paint above
            the headline. */}
        <div
          data-hero-plate
          aria-hidden
          className="pointer-events-none absolute inset-0 -z-10"
        >
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
            className={HERO_PLATE}
          />
          {/* The clip layers over the still on the same crop, under both
              scrims. It is 8s, silent, and cut to loop on this exact frame —
              see HeroPlate for why the still stays underneath it rather than
              being replaced by it. */}
          <HeroPlate
            src="/img/hero.mp4"
            srcNarrow="/img/hero-sm.mp4"
            className={HERO_PLATE}
          />
        </div>
        {/* Two scrims, not one, and the stops are placed rather than even.

            Vertical: heaviest at the top where the eyebrow sits against sky
            and heavy again at the bottom under the headline, lightest at 70% —
            which is exactly where the riders are in the frame, so the part of
            the photograph worth seeing is the part least covered.

            Horizontal: weights the RIGHT third. It used to weight the left,
            and it followed the copy rather than the side: the rule is that the
            scrim goes where the type is smallest and has the least contrast to
            spare. The rail — eyebrow, apply, sign in, all of it 11px mono at
            60% chalk — is the type that needs it, and the rail is now the
            right-hand column. The headline can look after itself: it is white
            Barlow at up to 7.5rem and it sits at the bottom of the band, where
            the vertical scrim is already back up to 72%. */}
        <div
          aria-hidden
          className="absolute inset-0 -z-10 bg-gradient-to-b from-carbon/88 via-carbon/12 via-72% to-carbon/72"
        />
        <div
          aria-hidden
          className="absolute inset-0 -z-10 bg-gradient-to-l from-carbon/95 from-8% via-carbon/22 via-42% to-transparent"
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
            it stretches instead so the rail — the right-hand track — gets the
            whole band to spread its eyebrow and its way in across, and so the
            headline opposite it can sit on the band's true bottom edge.

            BUG-01 took out the rail's right-hand rule, which is what that
            stretch used to be justified by. `lg:content-stretch` did NOT die
            with it: it is now the only thing handing the rail's
            `justify-between` a screenful to distribute. Drop it as newly-dead
            code and the rail collapses to its own content height — the eyebrow
            leaves the top edge and the sign-in link stops sharing a baseline
            with the headline. */}
        <div className="mx-auto grid min-h-[calc(100svh-var(--chrome-h))] max-w-7xl grid-cols-1 content-center lg:grid-cols-12 lg:content-stretch">
          {/* The headline sits ON the bottom LEFT of the band — not in the
              middle of it — so the screenful of height above reads as
              deliberate negative space rather than slack, and the first thing
              the eye lands on is the first thing the club wants said.

              It holds the wide eight of the eight/four split because it has to:
              at `lg` the type is clamped to 7.5rem and "JOIN THE CLUB." needs
              the track. `lg:pr-12` — not `pl-12`, which is what this carried
              while it was the RIGHT-hand column — keeps the gutter between the
              headline and the rail beside it; its own left edge stays on the
              container's `px-6`, in line with the masthead logo above it.

              Its `pb-16` matches the rail's `py-16`, which is what lands the
              last line on the same baseline as the sign-in link across the
              band — move one padding and move the other. Since BUG-01 took out
              the hairline that used to run between the two columns, that
              shared baseline is the only thing left tying the two halves of
              the band together: it matters more now, not less. */}
          <div className="flex min-w-0 flex-col justify-center px-6 py-12 lg:col-span-8 lg:justify-end lg:pb-16 lg:pr-12 lg:pt-24">
            {/* Three slots rather than <br>s, so each line can carry its own
                step in the entrance cascade — and, since the energy pass,
                its own rate on the way out. The outer span is the slot: it
                clips the line rising up through it at first paint, and it is
                what the scroll then moves (data-hero-line), each at a
                different speed so the three fan apart. The inner span is the
                line itself, and the CSS keyframe is on that; see the Motion
                header in globals.css for why those two jobs cannot share an
                element. */}
            <h1 className="headline text-[clamp(3.2rem,9.5vw,7.5rem)]">
              <span data-rise="mask" data-hero-line style={rise(0)} className="block">
                <span className="block">Ride fast.</span>
              </span>
              <span data-rise="mask" data-hero-line style={rise(1)} className="block">
                <span className="block">Buy smart.</span>
              </span>
              <span data-rise="mask" data-hero-line style={rise(2)} className="block">
                <span className="block text-chalk">Join the club.</span>
              </span>
            </h1>
          </div>
          {/* The rail — the eyebrow on the top edge, the way in on the
              bottom — spread across its side of the band rather than sitting
              as one tight clump with a screenful of dead space around it.
              `gap-8` stays the FLOOR on the spacing; justify-between only ever
              adds to it.

              It is the RIGHT-hand column now. The club asked for the headline
              bottom-left and everything else opposite it, so the two tracks
              swapped: the headline took the wide eight, this took the four.
              Three things moved with it and none of them are optional — the
              horizontal scrim was flipped to weight the right (see the scrim
              note above; this 11px mono at 60% chalk is the type that needs
              it), the headline's inner padding turned from `pl-12` to
              `pr-12` so the gutter still falls BETWEEN the two, and this block
              now comes second in the DOM, which is also the stacked order
              below `lg`: headline, then eyebrow, then the way in.

              BUG-01 — this used to carry a hairline down its right edge, and
              nothing should put one back, on this side or the other. The rail
              was 4 of 12 columns of an 80rem container, so that line sat a
              FIXED 213px left of the viewport's centre on every screen wider
              than 1280: the container stops growing there and only the margins
              widen, so the bigger the monitor the nearer the middle it crept —
              35% of the width across at 1440, 42% at 2560. Stretched to the
              full height of the band (see `lg:content-stretch` above) and
              drawn in line-dark on carbon, that is the faint vertical line the
              club reported down the centre of the hero. Nothing was holding it
              up: the eight/four split already reads off the type. */}
          {/* `lg:items-end` + `lg:text-right`: the rail's copy is flushed to
              the container's right edge, not left-aligned inside its own
              column. Without it every line started at the column's left edge
              and trailed off into ~150px of dead space before the band ended,
              which read as the block having drifted inwards rather than being
              placed. Flushed right it mirrors the headline's flush-left edge
              opposite, and the two together frame the photograph.

              `lg:` only. Below the breakpoint this is a stacked single column
              under the headline, where ragged-left copy would be a step
              backwards — it stays left-aligned there. */}
          <div
            data-hero-rail
            className="flex flex-col gap-8 px-6 py-12 lg:col-span-4 lg:items-end lg:justify-between lg:py-16 lg:text-right"
          >
            <p
              data-rise
              style={rise(1)}
              className="font-mono text-[11px] uppercase tracking-[0.22em] text-chalk/60"
            >
              A members-only cycling club
            </p>
            {/* UI-03 — the club asked for the hero to carry the headline and
                nothing competing with it, so the paragraph explaining the floor
                and the boxed "The gate" summary both came out. Everything they
                said is repeated below the fold anyway: the aisle count is in
                HeroDoors, and the three steps of the gate are the whole of the
                "How you get in" section further down. What is left here is the
                eyebrow, the headline beside it, and the way in. */}
            {/* `items-start` is the mobile posture and `lg:items-end` the
                desktop one — the button and the sign-in link under it have to
                agree on an edge, and at `lg` that edge is the right one. */}
            <div
              data-rise
              style={rise(2)}
              className="flex flex-col items-start gap-3 lg:items-end"
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
        <SectionHead
          eyebrow="The shop"
          title={`${categories.length} aisles. One floor.`}
          link={{ href: "/shop", label: "Enter the shop" }}
        />
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
          <SectionHead
            eyebrow="Fresh on the racks"
            title="Featured stock."
            link={{ href: "/shop", label: "Shop everything" }}
          />
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
                data-reveal="slide"
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
            <h2 data-split className="headline text-[clamp(2.2rem,5vw,3.8rem)]">
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
                data-reveal="slide"
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
            data-parallax="6"
            className="pointer-events-none absolute inset-0 -z-10 size-full object-cover"
          />
          <span
            aria-hidden
            className="absolute inset-0 -z-10 bg-gradient-to-r from-carbon/95 via-carbon/75 to-carbon/45"
          />
          <span
            aria-hidden
            data-drift
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
          <SectionHead eyebrow="Membership" title="How you get in." />
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
