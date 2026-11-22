import type { Metadata } from "next";
import Link from "next/link";
import { notFound } from "next/navigation";
import ProductDescription from "@/components/ProductDescription";
import ProductGallery from "@/components/ProductGallery";
import SizePicker from "@/components/SizePicker";
import InquiryNotice from "@/components/inquiry/InquiryNotice";
import RequestInquiryButton from "@/components/inquiry/RequestInquiryButton";
import { descriptionSummary } from "@/lib/description";
import { getProduct } from "@/lib/db";
import { productImageUrl } from "@/lib/images";
import { brandName, categoryName, subcategoryName } from "@/lib/taxonomy";

/* One product, whole: every photo and the description. The grids only carry
   the first two photos and no copy, so until this page existed nothing the
   admin wrote in Description, and no photo past the second, reached the site.

   Rendered per request, not cached: when the club saves a product in /admin
   and opens it here, they should see what they just saved. */

type Params = Promise<{ id: string }>;

export async function generateMetadata({ params }: { params: Params }): Promise<Metadata> {
  const { id } = await params;
  const p = await getProduct(decodeURIComponent(id));
  if (!p) return { title: "Not found", robots: { index: false, follow: true } };
  const image = productImageUrl(p.images?.[0]);
  return {
    title: p.name,
    description:
      descriptionSummary(p.description) ||
      `${brandName(p.brand)} ${p.name} — ask the club about it.`,
    alternates: { canonical: `/shop/${encodeURIComponent(p.id)}` },
    openGraph: image ? { images: [image] } : undefined,
  };
}

export default async function ProductPage({ params }: { params: Params }) {
  const { id } = await params;
  const p = await getProduct(decodeURIComponent(id));
  if (!p) notFound();

  const typeLabel = subcategoryName(p.subcategory) || categoryName(p.category);
  const inquiryProduct = {
    id: p.id,
    name: p.name,
    brand: p.brand,
    category: p.category,
    subcategory: p.subcategory,
    image: p.images?.[0],
  };
  const aisleHref = p.subcategory
    ? `/shop?cat=${p.category}&sub=${p.subcategory}`
    : `/shop?cat=${p.category}`;

  return (
    <>
      <InquiryNotice />
      <section className="mx-auto max-w-7xl px-6 py-8 md:py-12">
        <nav
          aria-label="Breadcrumb"
          className="mb-6 flex flex-wrap gap-x-2 gap-y-1 font-mono text-[10px] uppercase tracking-[0.18em] text-ink-soft"
        >
          <Link href="/shop" className="hover:text-ink">
            Shop
          </Link>
          <span aria-hidden>/</span>
          <Link href={`/shop?cat=${p.category}`} className="hover:text-ink">
            {categoryName(p.category)}
          </Link>
          {p.subcategory && (
            <>
              <span aria-hidden>/</span>
              <Link href={aisleHref} className="hover:text-ink">
                {typeLabel}
              </Link>
            </>
          )}
        </nav>

        <div className="grid gap-8 lg:grid-cols-2 lg:gap-12">
          <ProductGallery images={p.images ?? []} name={p.name} fallbackLabel={typeLabel} />

          <div className="flex min-w-0 flex-col gap-5">
            <div className="flex flex-col gap-2">
              <span className="font-mono text-[11px] uppercase tracking-[0.2em] text-ink-soft">
                {brandName(p.brand)}
              </span>
              <h1 className="font-display text-3xl font-bold uppercase leading-tight tracking-wide md:text-4xl">
                {p.name}
              </h1>
              <div className="mt-1 flex flex-wrap gap-2 font-mono text-[10px] font-semibold uppercase tracking-[0.14em]">
                <span className="border border-line px-2 py-1">{typeLabel}</span>
                <span className="border border-line px-2 py-1">
                  {p.condition === "pre-owned" ? "Pre-owned" : "New"}
                </span>
                {p.clearance && <span className="bg-ink px-2 py-1 text-chalk">Clearance</span>}
                <span className="border border-line px-2 py-1">
                  {p.stock > 0
                    ? p.stock <= 5
                      ? `${p.stock} left`
                      : "In stock"
                    : "Out of stock"}
                </span>
              </div>
            </div>

            {p.variants?.length ? (
              <SizePicker product={inquiryProduct} variants={p.variants} />
            ) : (
              <div className="max-w-sm">
                <RequestInquiryButton product={inquiryProduct} />
              </div>
            )}

            {p.description ? (
              <div className="border-t border-line pt-6">
                <ProductDescription text={p.description} />
              </div>
            ) : null}
          </div>
        </div>
      </section>
    </>
  );
}
