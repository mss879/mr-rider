import type { Metadata } from "next";
import PageHero from "@/components/PageHero";
import ShopBrowser from "@/components/ShopBrowser";
import LockedNotice from "@/components/LockedNotice";
import { categories, getBrand, resolveCategoryParam } from "@/lib/taxonomy";
import { getProducts } from "@/lib/db";
import { getMembershipStatus, isApproved } from "@/lib/membership";

export const metadata: Metadata = {
  title: "Shop — MR.RIDER",
  description:
    "One shop floor, ten categories. Filter by category, product type, brand, price, condition and availability.",
};

export default async function ShopPage({
  searchParams,
}: {
  searchParams: Promise<{ cat?: string; sub?: string; brand?: string }>;
}) {
  const [{ cat, sub, brand }, products, status] = await Promise.all([
    searchParams,
    getProducts(),
    getMembershipStatus(),
  ]);
  const locked = !isApproved(status);
  // Accepts both current and pre-restructure category slugs.
  const resolved = resolveCategoryParam(cat, sub);
  const initialBrand = getBrand(brand)?.slug;

  return (
    <>
      <PageHero
        eyebrow={`${products.length} items · ${categories.length} categories · one floor`}
        title="The shop."
        blurb="Everything sellable lives here — bar tape to full race builds. No aisle-hopping between menus: pick your filters and go."
      />
      {locked && <LockedNotice />}
      <ShopBrowser
        products={products}
        initialCategory={resolved.cat}
        initialSubcategory={resolved.sub}
        initialBrand={initialBrand}
        locked={locked}
      />
    </>
  );
}
