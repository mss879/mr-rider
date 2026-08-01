import type { Metadata } from "next";
import PageHero from "@/components/PageHero";
import ShopBrowser from "@/components/ShopBrowser";
import LockedNotice from "@/components/LockedNotice";
import { categories } from "@/lib/data";
import { getProducts } from "@/lib/db";
import { getMembershipStatus, isApproved } from "@/lib/membership";

export const metadata: Metadata = {
  title: "Shop — MR.RIDER",
  description:
    "One shop floor, twelve categories. Filter by category, brand, price and condition.",
};

export default async function ShopPage({
  searchParams,
}: {
  searchParams: Promise<{ cat?: string }>;
}) {
  const [{ cat }, products, status] = await Promise.all([
    searchParams,
    getProducts(),
    getMembershipStatus(),
  ]);
  const locked = !isApproved(status);
  const initialCategory = categories.some((c) => c.slug === cat)
    ? cat
    : undefined;

  return (
    <>
      <PageHero
        eyebrow={`${products.length} items · ${categories.length} categories · one floor`}
        title="The shop."
        blurb="Everything sellable lives here — accessories to full race builds. No aisle-hopping between menus: pick your filters and go."
      />
      {locked && <LockedNotice />}
      <ShopBrowser
        products={products}
        initialCategory={initialCategory}
        locked={locked}
      />
    </>
  );
}
