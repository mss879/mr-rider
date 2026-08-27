import type { Metadata } from "next";
import PageHero from "@/components/PageHero";
import { IMAGERY } from "@/lib/imagery";
import ProductCard from "@/components/ProductCard";
import InquiryNotice from "@/components/inquiry/InquiryNotice";
import { getClearanceProducts } from "@/lib/db";

export const revalidate = 60;

export const metadata: Metadata = {
  title: "Clearance Market",
  description:
    "End of line, last sizes and race-used stock, out the door. When it's gone, it's gone.",
};

export default async function ClearancePage() {
  const fetched = await getClearanceProducts();
  // Freshest first — there is no discount to rank by any more.
  const clearanceItems = [...fetched].sort(
    (a, b) => a.addedDaysAgo - b.addedDaysAgo,
  );

  return (
    <>
      <PageHero
        image={IMAGERY.parts}
        eyebrow={`${clearanceItems.length} items · end of line`}
        title="Clearance market."
        blurb="End-of-line stock, last sizes and race-used gear on its way out of the building. Ask about anything here — clearance moves fast."
      >
        <p className="w-fit bg-ink px-3 py-1.5 font-mono text-[11px] font-semibold uppercase tracking-[0.18em] text-chalk">
          Final sale — ask before it goes
        </p>
      </PageHero>
      <InquiryNotice />
      <section className="mx-auto max-w-7xl px-6 py-14 md:py-16">
        {clearanceItems.length > 0 ? (
          <div className="grid grid-cols-1 gap-5 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4">
            {clearanceItems.map((p) => (
              <ProductCard key={p.id} p={p} />
            ))}
          </div>
        ) : (
          <p className="border border-line bg-chalk px-6 py-20 text-center font-mono text-[11px] uppercase tracking-[0.16em] text-ink-soft">
            Nothing in the clearance market right now — check the daily drop
          </p>
        )}
        <p className="mt-10 font-mono text-[11px] uppercase tracking-[0.18em] text-ink-soft">
          Clearance stock is final sale · condition noted on every card
        </p>
      </section>
    </>
  );
}
