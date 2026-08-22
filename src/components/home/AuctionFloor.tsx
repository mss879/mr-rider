import Link from "next/link";
import ArrowCta from "@/components/ArrowCta";
import SectionHead from "@/components/SectionHead";
import type { Lot } from "@/lib/data";

/* The auction floor, with the actual lots on it.

   This used to be a promo panel — a headline, a line of copy and a link — so
   the homepage said the auction existed without showing a single thing in it.
   Daily Listings next door has always shown real stock, and the club asked for
   the auction to get the same treatment.

   Bids and countdowns are rendered from the same rows /auction reads, so the
   two can never disagree. The page revalidates every 60s (see page.tsx), which
   is what keeps a countdown printed on the server honest. */

export default function AuctionFloor({ lots }: { lots: Lot[] }) {
  // Four is the most that fits without the section outweighing the shop.
  const live = lots.slice(0, 4);

  return (
    <section className="border-y border-line bg-carbon text-chalk">
      <div className="mx-auto max-w-7xl px-6 py-16 md:py-20">
        <SectionHead
          dark
          eyebrow={`The auction · ${lots.length} lot${lots.length === 1 ? "" : "s"} live`}
          title="On the block."
          link={{ href: "/auction", label: "Browse every lot" }}
        />

        {live.length === 0 ? (
          <p className="border border-line-dark px-6 py-16 text-center font-mono text-[11px] uppercase tracking-[0.16em] text-chalk/50">
            No lots on the block right now — the next one opens soon
          </p>
        ) : (
          <ul className="grid gap-px bg-line-dark sm:grid-cols-2">
            {live.map((l) => (
              <li key={l.id} className="bg-carbon">
                <Link
                  href="/auction"
                  className="group flex h-full flex-col gap-4 p-6 transition-colors duration-200 ease-out hover:bg-carbon-2"
                >
                  <div className="flex items-start justify-between gap-4">
                    <span className="headline text-4xl text-accent">
                      {l.lot}
                    </span>
                    <span className="border border-line-dark px-2 py-1 font-mono text-[9px] font-semibold uppercase tracking-[0.16em] text-chalk/60">
                      {l.condition}
                    </span>
                  </div>

                  <div className="min-w-0">
                    <p className="font-display text-xl font-bold uppercase leading-tight tracking-wide transition-colors duration-200 ease-out group-hover:text-accent">
                      {l.name}
                    </p>
                    <p className="mt-1 text-xs leading-relaxed text-chalk/50">
                      {l.spec}
                    </p>
                  </div>

                  {/* The auction is the one place on the site that DOES carry a
                      number — a bid is a public fact about the lot, not a price
                      the club is quoting, so it does not conflict with the
                      no-pricing rule the rest of the floor runs on. */}
                  <div className="mt-auto flex flex-wrap items-baseline justify-between gap-x-4 gap-y-1 border-t border-line-dark pt-4">
                    <span className="font-mono text-[10px] uppercase tracking-[0.16em] text-chalk/50">
                      {l.bids} bid{l.bids === 1 ? "" : "s"} · current
                    </span>
                    <span className="font-display text-lg font-bold tracking-wide">
                      {l.currentBid.toLocaleString("en-GB")}
                    </span>
                    <span className="w-full font-mono text-[10px] uppercase tracking-[0.16em] text-accent">
                      Ends in {l.endsIn}
                    </span>
                  </div>
                </Link>
              </li>
            ))}
          </ul>
        )}

        <div className="mt-8 flex flex-col items-start gap-4 sm:flex-row sm:items-center sm:justify-between">
          <p className="font-mono text-[11px] uppercase tracking-[0.18em] text-chalk/50">
            Watch freely · bidding unlocks with membership
          </p>
          <ArrowCta href="/auction">Go to the auction</ArrowCta>
        </div>
      </div>
    </section>
  );
}
