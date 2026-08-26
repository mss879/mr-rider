import Image from "next/image";
import Link from "next/link";
import Ph from "@/components/Ph";
import RequestInquiryButton from "@/components/inquiry/RequestInquiryButton";
import { type Product } from "@/lib/data";
import { productImageUrl } from "@/lib/images";
import { brandName, categoryName, subcategoryName } from "@/lib/taxonomy";

const CARD_SIZES = "(min-width: 1280px) 22vw, (min-width: 640px) 45vw, 92vw";

/* No price on the card. The club quotes in the thread, so the card's job is
   to identify the product and hand the rider the inquiry button. */

export default function ProductCard({ p }: { p: Product }) {
  const typeLabel = subcategoryName(p.subcategory) || categoryName(p.category);
  const href = p.subcategory
    ? `/shop?cat=${p.category}&sub=${p.subcategory}`
    : `/shop?cat=${p.category}`;

  // Real photography when it exists; the second shot swaps in on hover.
  const primary = productImageUrl(p.images?.[0]);
  const secondary = productImageUrl(p.images?.[1]);

  return (
    <article className="group flex flex-col border border-line bg-chalk transition-all duration-200 ease-out hover:-translate-y-1 hover:border-ink">
      <Link
        href={href}
        className="relative block aspect-[4/3]"
        aria-label={`${p.name} — browse ${typeLabel}`}
      >
        {primary ? (
          <>
            <Image
              src={primary}
              alt={p.name}
              fill
              sizes={CARD_SIZES}
              className={`object-cover ${secondary ? "transition-opacity duration-300 ease-out group-hover:opacity-0" : ""}`}
            />
            {secondary && (
              <Image
                src={secondary}
                alt=""
                aria-hidden
                fill
                sizes={CARD_SIZES}
                className="object-cover opacity-0 transition-opacity duration-300 ease-out group-hover:opacity-100"
              />
            )}
          </>
        ) : (
          <Ph label={typeLabel} className="absolute inset-0" />
        )}
        <span className="absolute left-0 top-3 flex gap-1">
          {p.addedDaysAgo <= 1 && (
            <span className="bg-ink px-2 py-1 font-mono text-[10px] font-semibold tracking-[0.12em] text-chalk">
              NEW
            </span>
          )}
          {p.condition === "pre-owned" && (
            <span className="bg-carbon-2 px-2 py-1 font-mono text-[10px] font-semibold tracking-[0.12em] text-chalk">
              PRE-OWNED
            </span>
          )}
          {p.clearance && (
            <span className="bg-ink px-2 py-1 font-mono text-[10px] font-semibold tracking-[0.12em] text-chalk">
              CLEARANCE
            </span>
          )}
        </span>
      </Link>

      <div className="flex flex-1 flex-col gap-1 border-t border-line p-4">
        <span className="font-mono text-[10px] uppercase tracking-[0.2em] text-ink-soft">
          {brandName(p.brand)}
        </span>
        <h3 className="font-display text-xl font-bold uppercase leading-tight tracking-wide">
          {p.name}
        </h3>
        <span className="mb-3 mt-1 font-mono text-[10px] uppercase tracking-[0.14em] text-ink-soft">
          {p.stock > 0 ? (
            p.stock <= 5 ? (
              <span className="text-ink font-medium">{p.stock} left</span>
            ) : (
              "In stock"
            )
          ) : (
            "Out of stock — ask about the next drop"
          )}
        </span>
        <RequestInquiryButton
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
    </article>
  );
}
