import type { Metadata } from "next";
import PageHero from "@/components/PageHero";
import ProductCard from "@/components/ProductCard";
import LockedNotice from "@/components/LockedNotice";
import { discountPct } from "@/lib/data";
import { getClearanceProducts } from "@/lib/db";
import { getMembershipStatus, isApproved } from "@/lib/membership";

export const revalidate = 60;

export const metadata: Metadata = {
  title: "Clearance Market — MR.RIDER",
  description:
    "End of line and race-used stock, priced to leave the building. When it's gone, it's gone.",
};

export default async function ClearancePage() {
  const [fetched, status] = await Promise.all([
    getClearanceProducts(),
    getMembershipStatus(),
  ]);
  const locked = !isApproved(status);
  const clearanceItems = [...fetched].sort(
    (a, b) => discountPct(b) - discountPct(a),
  );
  const maxOff = clearanceItems.length
    ? Math.max(...clearanceItems.map(discountPct))
    : 0;

  return (
    <>
      <PageHero
        eyebrow={`${clearanceItems.length} items · up to −${maxOff}% · end of line`}
        title="Clearance market."
        blurb="End-of-line stock, last sizes and race-used gear, priced to leave the building. Sorted by biggest cut first. When it's gone, it's gone."
      >
        <p className="w-fit bg-accent px-3 py-1.5 font-mono text-[11px] font-semibold uppercase tracking-[0.18em] text-chalk">
          Up to −{maxOff}% off
        </p>
      </PageHero>
      {locked && <LockedNotice />}
      <section className="mx-auto max-w-7xl px-6 py-14 md:py-16">
        <div className="grid grid-cols-1 gap-5 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4">
          {clearanceItems.map((p) => (
            <ProductCard key={p.id} p={p} locked={locked} />
          ))}
        </div>
        <p className="mt-10 font-mono text-[11px] uppercase tracking-[0.18em] text-ink-soft">
          Clearance stock is final sale · condition noted on every card
        </p>
      </section>
    </>
  );
}
