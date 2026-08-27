import type { Metadata } from "next";
import Link from "next/link";
import Marquee from "@/components/Marquee";
import PageHero from "@/components/PageHero";
import { IMAGERY } from "@/lib/imagery";
import SectionHead from "@/components/SectionHead";
import InquiryNotice from "@/components/inquiry/InquiryNotice";
import RequestInquiryButton from "@/components/inquiry/RequestInquiryButton";
import { type Product } from "@/lib/data";
import { brandName, categoryName, subcategoryName } from "@/lib/taxonomy";
import { getDailyProducts } from "@/lib/db";

export const revalidate = 60;

export const metadata: Metadata = {
  title: "Daily Listings",
  description: "Fresh stock lands every morning at 09:00. Members get first call.",
};

/* The row is not one big link any more: the title links through to the shop
   and the inquiry button is its own control, so neither swallows the other. */
function ListingRows({ items, dim = false }: { items: Product[]; dim?: boolean }) {
  return (
    <div className={dim ? "opacity-70" : ""}>
      {items.map((p, i) => (
        <div
          key={p.id}
          className="group grid grid-cols-[2.5rem_minmax(0,1fr)_auto] items-center gap-4 border-b border-line py-4 md:grid-cols-[2.5rem_minmax(0,1fr)_10rem_6rem_auto]"
        >
          <span className="font-mono text-[11px] text-ink-soft">
            {String(i + 1).padStart(2, "0")}
          </span>
          <Link
            href={`/shop?cat=${p.category}&sub=${p.subcategory}`}
            className="min-w-0"
          >
            <span className="font-display block text-xl font-bold uppercase leading-tight tracking-wide transition-colors duration-200 ease-out group-hover:text-ink-soft">
              {p.name}
            </span>
            <span className="font-mono text-[10px] uppercase tracking-[0.18em] text-ink-soft">
              {brandName(p.brand)}
            </span>
          </Link>
          <span className="hidden font-mono text-[10px] uppercase tracking-[0.14em] text-ink-soft md:block">
            {subcategoryName(p.subcategory) || categoryName(p.category)}
          </span>
          <span className="hidden font-mono text-[10px] uppercase tracking-[0.14em] text-ink-soft md:block">
            {p.condition === "new" ? "New" : "Pre-owned"}
          </span>
          <RequestInquiryButton
            variant="inline"
            product={{
              id: p.id,
              name: p.name,
              brand: p.brand,
              category: p.category,
              subcategory: p.subcategory,
              image: p.images?.[0],
            }}
          />
        </div>
      ))}
    </div>
  );
}

export default async function DailyListingsPage() {
  const daily = await getDailyProducts();
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
        image={IMAGERY.bench}
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
      <InquiryNotice />
      <section className="mx-auto max-w-7xl px-6 py-14 md:py-16">
        <SectionHead
          eyebrow={`${todaysListings.length} items`}
          title="Today."
          link={{ href: "/shop", label: "Shop the floor" }}
        />
        {todaysListings.length > 0 ? (
          <ListingRows items={todaysListings} />
        ) : (
          <p className="border border-line bg-chalk px-6 py-12 text-center font-mono text-[11px] uppercase tracking-[0.16em] text-ink-soft">
            Today&apos;s drop has not landed yet — back at 09:00
          </p>
        )}
      </section>
      <section className="mx-auto max-w-7xl px-6 pb-20">
        <SectionHead
          eyebrow={`${yesterdaysListings.length} items — still available`}
          title="Yesterday."
        />
        {yesterdaysListings.length > 0 ? (
          <ListingRows items={yesterdaysListings} dim />
        ) : (
          <p className="border border-line bg-chalk px-6 py-12 text-center font-mono text-[11px] uppercase tracking-[0.16em] text-ink-soft">
            Yesterday&apos;s drop has cleared the floor
          </p>
        )}
      </section>
    </>
  );
}
