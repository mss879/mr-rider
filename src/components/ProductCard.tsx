import Image from "next/image";
import Link from "next/link";
import Ph from "@/components/Ph";
import RequestInquiryButton from "@/components/inquiry/RequestInquiryButton";
import { type Product } from "@/lib/data";
import { productImageUrl } from "@/lib/images";
import { brandName, categoryName, subcategoryName } from "@/lib/taxonomy";

const CARD_SIZES = "(min-width: 1280px) 620px, (min-width: 640px) 45vw, 92vw";

/* `contain`, not `cover`. The card well is 4:3 but the catalogue is not. Of
   1417 stored primaries only a handful are actually 4:3 — 59% are square-ish,
   the rest run from 0.33 to 5.46. `cover` fills the well by cropping the
   overflow, which on catalogue photography means cropping the product: the
   16:9 bike shots (the BMC Teammachine and Roadmachine among them) lost 25%
   of their width, 12.5% off each side, which is precisely where the wheels
   are. `contain` fits the whole product and letterboxes the remainder.

   The letterbox is plain white, because the store is strictly black and white.
   59% of these shots sit on white and vanish into the well; the 14% on black
   and 6% on mid grey read as a framed picture on white. A blurred copy of the
   shot used to fill the bands, but it left a grey haze round every product. */
const CARD_IMAGE = "object-contain p-3";

/* Above the default 75. The catalogue's stored files are already thin — a
   sample of 400 primaries runs a median of 32KB per megapixel, with 319 of
   them under 60, because they came off a supplier CDN already squeezed. At
   75 the optimiser re-encodes that and adds a second generation of loss to a
   picture with little left to give. 90 costs about 2.5KB an image here and
   keeps what detail the source still has. It cannot invent any: fixing these
   properly means better originals in the bucket. */
const CARD_QUALITY = 90;

/* No price on the card. The club quotes in the thread, so the card's job is
   to identify the product, lead to its page (all photos, the description)
   and hand the rider the inquiry button. */

export default function ProductCard({ p }: { p: Product }) {
  const typeLabel = subcategoryName(p.subcategory) || categoryName(p.category);
  // The product page carries every photo and the description.
  const href = `/shop/${encodeURIComponent(p.id)}`;

  // Real photography when it exists; the second shot swaps in on hover.
  const primary = productImageUrl(p.images?.[0]);
  const secondary = productImageUrl(p.images?.[1]);

  return (
    <article className="group flex flex-col border border-line bg-chalk transition-all duration-200 ease-out hover:-translate-y-1 hover:border-ink">
      <Link
        href={href}
        className="relative block aspect-[4/3] overflow-clip bg-white"
        aria-label={`${p.name} — photos and details`}
      >
        {primary ? (
          <>
            <Image
              src={primary}
              alt={p.name}
              fill
              sizes={CARD_SIZES}
              quality={CARD_QUALITY}
              className={`${CARD_IMAGE} ${secondary ? "transition-opacity duration-300 ease-out group-hover:opacity-0" : ""}`}
            />
            {secondary && (
              <Image
                src={secondary}
                alt=""
                aria-hidden
                fill
                sizes={CARD_SIZES}
                quality={CARD_QUALITY}
                className={`${CARD_IMAGE} opacity-0 transition-opacity duration-300 ease-out group-hover:opacity-100`}
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
          <Link href={href} className="hover:underline hover:underline-offset-4">
            {p.name}
          </Link>
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
        {p.variants?.length ? (
          <span className="-mt-2 mb-3 font-mono text-[10px] uppercase tracking-[0.14em] text-ink-soft">
            Sizes{" "}
            {p.variants.map((v, i) => (
              <span key={v.size}>
                {i > 0 && " · "}
                <span className={v.stock > 0 ? "text-ink" : "line-through opacity-60"}>
                  {v.size}
                </span>
              </span>
            ))}
          </span>
        ) : null}
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
