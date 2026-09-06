import Image from "next/image";
import Link from "next/link";
import DropBanner from "@/components/home/DropBanner";
import { IMAGERY } from "@/lib/imagery";
import { rise } from "@/lib/motion";

/* The two doors off the home page, plus today's drop.

   These used to sit inside the hero, stacked under the headline in the same
   eight-column well. That well had to hold a 7.5rem headline AND two picture
   cards AND the drop strip, which left the type boxed in and the cards small
   enough that their photographs turned to mush. Pulled out into their own
   band, the headline gets the whole hero and the cards get room to be read.

   Still `data-rise` rather than `data-reveal`: on a tall screen this band is
   just below the fold and on a laptop it is partly in it, so it belongs to the
   hero's CSS entrance cascade rather than waiting for GSAP to scroll it in.
   The "wipe" variant: each card unmasks upward while its photograph settles
   from a zoom, and the photograph then parallaxes on scroll — see the Motion
   section of globals.css for why the zoom and the parallax sit on two
   different elements. */

/* `isolate` is load-bearing. The plate sits at -z-10 and the shutter at
   z-10, and both only mean anything inside a stacking context the card
   itself owns. Without one, the negative-z plate falls through to the page
   root and paints BEHIND the section's paper — the photograph is loaded,
   decoded and invisible. The card used to get a stacking context for free
   from its clip-path animation; the shutter replaced that, so it is stated
   here rather than left to whatever the current animation happens to be. */
const CARD =
  "group relative isolate flex aspect-[16/9] flex-col justify-end overflow-clip border border-line-dark p-6 text-chalk transition-transform duration-200 ease-out hover:-translate-y-1 sm:aspect-[4/3] lg:aspect-[16/10]";

export default function HeroDoors({
  categoryCount,
  coachCount,
  countryCount,
  todayCount,
}: {
  categoryCount: number;
  coachCount: number;
  countryCount: number;
  todayCount: number;
}) {
  return (
    <section className="border-b border-line bg-paper">
      <div className="mx-auto max-w-7xl px-6 py-12 md:py-16">
        <div className="grid gap-5 md:grid-cols-2">
          <Link href="/shop" data-rise="wipe" style={rise(5)} className={CARD}>
            {/* The shutter is the band's own paper, so until it slides off
                the card reads as not there yet. z-10 puts it over the copy;
                the card's overflow clip swallows it once it has gone. */}
            <span aria-hidden data-shutter className="absolute inset-0 z-10 bg-paper" />
            <span
              data-plate
              aria-hidden
              className="absolute inset-0 -z-10 overflow-clip transition-transform duration-500 ease-out group-hover:scale-105"
            >
              <Image
                src={IMAGERY.floor.src}
                alt=""
                fill
                sizes="(min-width: 768px) 46vw, 92vw"
                data-parallax="6"
                className="object-cover"
              />
            </span>
            <span
              aria-hidden
              className="absolute inset-0 -z-10 bg-gradient-to-t from-carbon via-carbon/55 to-carbon/15"
            />
            <span className="headline text-6xl md:text-7xl">
              {categoryCount}
            </span>
            <span className="mt-1 font-mono text-[11px] uppercase tracking-[0.2em] text-chalk/70">
              Categories · one shop floor
            </span>
            <span
              aria-hidden
              className="absolute right-5 top-5 text-chalk transition-transform duration-200 ease-out group-hover:translate-x-1"
            >
              →
            </span>
          </Link>

          <Link href="/coaching" data-rise="wipe" style={rise(6)} className={CARD}>
            {/* The shutter is the band's own paper, so until it slides off
                the card reads as not there yet. z-10 puts it over the copy;
                the card's overflow clip swallows it once it has gone. */}
            <span aria-hidden data-shutter className="absolute inset-0 z-10 bg-paper" />
            <span
              data-plate
              aria-hidden
              className="absolute inset-0 -z-10 overflow-clip transition-transform duration-500 ease-out group-hover:scale-105"
            >
              <Image
                src={IMAGERY.climb.src}
                alt=""
                fill
                sizes="(min-width: 768px) 46vw, 92vw"
                data-parallax="6"
                className="object-cover"
              />
            </span>
            <span
              aria-hidden
              className="absolute inset-0 -z-10 bg-gradient-to-t from-carbon via-carbon/55 to-carbon/15"
            />
            <span className="headline text-6xl md:text-7xl">
              {String(coachCount).padStart(2, "0")}
            </span>
            <span className="mt-1 font-mono text-[11px] uppercase tracking-[0.2em] text-chalk/70">
              Coaches · {countryCount} countries
            </span>
            <span
              aria-hidden
              className="absolute right-5 top-5 text-chalk transition-transform duration-200 ease-out group-hover:translate-x-1"
            >
              →
            </span>
          </Link>
        </div>

        {/* Today's drop, live from the catalog — the one genuinely
            time-sensitive thing on the page, so it stays directly under the
            two doors rather than waiting for its own section further down.
            Its own client component because it carries a live countdown; see
            DropBanner for why the clock is not rendered on the server. */}
        <DropBanner todayCount={todayCount} />
      </div>
    </section>
  );
}
