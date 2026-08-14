import type { Metadata } from "next";
import ArrowCta from "@/components/ArrowCta";
import Lock from "@/components/Lock";
import LockedNotice from "@/components/LockedNotice";
import Marquee from "@/components/Marquee";
import PageHero from "@/components/PageHero";
import Ph from "@/components/Ph";
import { usd } from "@/lib/data";
import { getLots } from "@/lib/db";
import { getMembershipStatus, isApproved } from "@/lib/membership";

export const revalidate = 60;

export const metadata: Metadata = {
  title: "Auction",
  description:
    "Race-used framesets, collector steel and one-of-one club pieces. Members bid; highest bid at the gun wins.",
};

export default async function AuctionPage() {
  const [auctionLots, status] = await Promise.all([
    getLots(),
    getMembershipStatus(),
  ]);
  const locked = !isApproved(status);
  return (
    <>
      <PageHero
        eyebrow={`${auctionLots.length} lots live · members bid`}
        title="The auction floor."
        blurb="Race-used framesets, collector steel, one-of-one club pieces. Watch the lots freely — bidding unlocks with member login. Highest bid at the gun wins."
      />
      <Marquee
        items={auctionLots.map((l) => `LOT ${l.lot} — ${l.name}`)}
      />
      {locked && (
        <LockedNotice>
          Bidding is locked until your membership is approved — watch the lots
          freely
        </LockedNotice>
      )}
      <section className="mx-auto max-w-7xl px-6 py-14 md:py-16">
        <div className="grid gap-5 md:grid-cols-2">
          {auctionLots.map((l) => (
            <article
              key={l.id}
              className="flex flex-col border border-line-dark bg-carbon text-chalk transition-transform duration-200 ease-out hover:-translate-y-1"
            >
              <div className="relative">
                <Ph
                  tone="dark"
                  label={l.condition}
                  ghost={`LOT ${l.lot}`}
                  className="aspect-[16/8]"
                />
                <span className="absolute left-0 top-3 bg-accent px-2 py-1 font-mono text-[10px] font-semibold tracking-[0.14em] text-chalk">
                  ENDS IN {l.endsIn}
                </span>
              </div>
              <div className="flex flex-1 flex-col gap-3 border-t border-line-dark p-6">
                <h2 className="headline text-3xl">{l.name}</h2>
                <p className="font-mono text-[11px] uppercase tracking-[0.14em] text-chalk/60">
                  {l.spec}
                </p>
                <div className="mt-auto flex flex-wrap items-end justify-between gap-4 pt-4">
                  <div>
                    <p className="font-mono text-[10px] uppercase tracking-[0.2em] text-chalk/50">
                      Current bid · {l.bids} bids
                    </p>
                    <p className="headline mt-1 text-4xl text-accent">
                      {usd(l.currentBid)}
                    </p>
                  </div>
                  {locked ? (
                    <span className="flex items-center gap-2 bg-carbon-2 px-5 py-3 font-mono text-[11px] font-semibold uppercase tracking-[0.18em] text-chalk/70">
                      <Lock /> Members bid
                    </span>
                  ) : (
                    <ArrowCta href="/apply">Place a bid</ArrowCta>
                  )}
                </div>
              </div>
            </article>
          ))}
        </div>
        <p className="mt-10 font-mono text-[11px] uppercase tracking-[0.18em] text-ink-soft">
          Bidding opens with member login · every lot workshop-inspected before
          listing · all sales final on the auction floor
        </p>
      </section>
    </>
  );
}
