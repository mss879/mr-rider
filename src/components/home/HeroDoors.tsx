import Image from "next/image";
import Link from "next/link";
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
   hero's CSS entrance cascade rather than waiting for GSAP to scroll it in. */

const CARD =
  "group relative flex aspect-[16/9] flex-col justify-end overflow-clip border border-line-dark p-6 text-chalk transition-transform duration-200 ease-out hover:-translate-y-1 sm:aspect-[4/3] lg:aspect-[16/10]";

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
          <Link href="/shop" data-rise style={rise(5)} className={CARD}>
            <Image
              src={IMAGERY.floor.src}
              alt=""
              aria-hidden
              fill
              sizes="(min-width: 768px) 46vw, 92vw"
              className="-z-10 object-cover transition-transform duration-500 ease-out group-hover:scale-105"
            />
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

          <Link href="/coaching" data-rise style={rise(6)} className={CARD}>
            <Image
              src={IMAGERY.climb.src}
              alt=""
              aria-hidden
              fill
              sizes="(min-width: 768px) 46vw, 92vw"
              className="-z-10 object-cover transition-transform duration-500 ease-out group-hover:scale-105"
            />
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
            two doors rather than waiting for its own section further down. */}
        <Link
          href="/daily-listings"
          data-rise
          style={rise(7)}
          className="group mt-5 flex flex-wrap items-center justify-between gap-x-6 gap-y-2 border border-line bg-chalk px-5 py-4 transition-colors duration-200 ease-out hover:border-ink"
        >
          <span className="flex items-center gap-3">
            <span aria-hidden className="size-2 shrink-0 rounded-full bg-ink" />
            <span className="font-mono text-[11px] uppercase tracking-[0.18em]">
              {todayCount > 0
                ? `${todayCount} items landed today`
                : "Next drop lands 09:00"}
            </span>
          </span>
          <span className="font-mono text-[11px] uppercase tracking-[0.18em] text-ink-soft transition-colors duration-200 ease-out group-hover:text-ink">
            See the drop →
          </span>
        </Link>
      </div>
    </section>
  );
}
