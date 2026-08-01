import type { Metadata } from "next";
import Link from "next/link";
import Marquee from "@/components/Marquee";
import PageHero from "@/components/PageHero";
import SectionHead from "@/components/SectionHead";
import Lock from "@/components/Lock";
import LockedNotice from "@/components/LockedNotice";
import { categoryName, type Product, usd } from "@/lib/data";
import { getDailyProducts } from "@/lib/db";
import { getMembershipStatus, isApproved } from "@/lib/membership";

export const revalidate = 60;

export const metadata: Metadata = {
  title: "Daily Listings — MR.RIDER",
  description: "Fresh stock lands every morning at 09:00. Members get first call.",
};

function ListingRows({
  items,
  dim = false,
  locked = false,
}: {
  items: Product[];
  dim?: boolean;
  locked?: boolean;
}) {
  return (
    <div className={dim ? "opacity-70" : ""}>
      {items.map((p, i) => (
        <Link
          key={p.id}
          href={`/shop?cat=${p.category}`}
          className="group grid grid-cols-[2.5rem_minmax(0,1fr)_auto] items-center gap-4 border-b border-line py-4 md:grid-cols-[2.5rem_minmax(0,1fr)_10rem_6rem_auto]"
        >
          <span className="font-mono text-[11px] text-ink-soft">
            {String(i + 1).padStart(2, "0")}
          </span>
          <span className="min-w-0">
            <span className="font-display block text-xl font-bold uppercase leading-tight tracking-wide transition-colors duration-200 ease-out group-hover:text-accent-deep">
              {p.name}
            </span>
            <span className="font-mono text-[10px] uppercase tracking-[0.18em] text-ink-soft">
              {p.brand}
            </span>
          </span>
          <span className="hidden font-mono text-[10px] uppercase tracking-[0.14em] text-ink-soft md:block">
            {categoryName(p.category)}
          </span>
          <span className="hidden font-mono text-[10px] uppercase tracking-[0.14em] text-ink-soft md:block">
            {p.condition === "new" ? "New" : "Pre-owned"}
          </span>
          {locked ? (
            <span className="flex items-center gap-1.5 font-mono text-[10px] font-semibold uppercase tracking-[0.14em] text-ink-soft">
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
  );
}

export default async function DailyListingsPage() {
  const [daily, status] = await Promise.all([
    getDailyProducts(),
    getMembershipStatus(),
  ]);
  const locked = !isApproved(status);
  const todaysListings = daily.filter((p) => p.addedDaysAgo === 0);
  const yesterdaysListings = daily.filter((p) => p.addedDaysAgo === 1);
  const today = new Date()
    .toLocaleDateString("en-GB", {
      weekday: "long",
      day: "2-digit",
      month: "short",
    })
    .toUpperCase();

  return (
    <>
      <PageHero
        eyebrow={`${today} · drop hits 09:00`}
        title="Daily listings."
        blurb="What landed on the floor this morning — and what you missed yesterday. Members get first call before stock hits the shop grid."
      />
      <Marquee
        items={[
          `${todaysListings.length} items landed today`,
          "Drop hits 09:00 sharp",
          "Members get first call",
        ]}
      />
      {locked && <LockedNotice />}
      <section className="mx-auto max-w-7xl px-6 py-14 md:py-16">
        <SectionHead
          eyebrow={`${todaysListings.length} items`}
          title="Today."
          link={{ href: "/shop", label: "Shop the floor" }}
        />
        <ListingRows items={todaysListings} locked={locked} />
      </section>
      <section className="mx-auto max-w-7xl px-6 pb-20">
        <SectionHead
          eyebrow={`${yesterdaysListings.length} items — still available`}
          title="Yesterday."
        />
        <ListingRows items={yesterdaysListings} dim locked={locked} />
      </section>
    </>
  );
}
