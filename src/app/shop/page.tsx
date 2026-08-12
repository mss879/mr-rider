import type { Metadata } from "next";
import PageHero from "@/components/PageHero";
import ShopBrowser from "@/components/ShopBrowser";
import InquiryNotice from "@/components/inquiry/InquiryNotice";
import { categories, getBrand, resolveCategoryParam } from "@/lib/taxonomy";
import { getProducts } from "@/lib/db";

export const metadata: Metadata = {
  title: "Shop — MR.RIDER",
  description:
    "One shop floor, eleven categories. Filter by category, product type, brand and condition, then request an inquiry on anything.",
};

export default async function ShopPage({
  searchParams,
}: {
  searchParams: Promise<{ cat?: string; sub?: string; brand?: string }>;
}) {
  const [{ cat, sub, brand }, products] = await Promise.all([
    searchParams,
    getProducts(),
  ]);
  // Accepts both current and pre-restructure category slugs.
  const resolved = resolveCategoryParam(cat, sub);
  const initialBrand = getBrand(brand)?.slug;

  return (
    <>
      <PageHero
        eyebrow={`${products.length} items · ${categories.length} categories · one floor`}
        title="The shop."
        blurb="Everything sellable lives here — bar tape to full race builds. No aisle-hopping between menus: pick your filters, then ask us about anything on the floor."
      />
      <InquiryNotice />
      <ShopBrowser
        products={products}
        initialCategory={resolved.cat}
        initialSubcategory={resolved.sub}
        initialBrand={initialBrand}
      />
    </>
  );
}
