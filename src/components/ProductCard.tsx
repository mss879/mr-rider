import Image from "next/image";
import Link from "next/link";
import Lock from "@/components/Lock";
import Ph from "@/components/Ph";
import { type Product, discountPct, usd } from "@/lib/data";
import { productImageUrl } from "@/lib/images";
import { brandName, categoryName, subcategoryName } from "@/lib/taxonomy";

const CARD_SIZES = "(min-width: 1280px) 22vw, (min-width: 640px) 45vw, 92vw";

export default function ProductCard({
  p,
  locked = false,
}: {
  p: Product;
  locked?: boolean;
}) {
  const off = discountPct(p);
  const typeLabel = subcategoryName(p.subcategory) || categoryName(p.category);
  const href = p.subcategory
    ? `/shop?cat=${p.category}&sub=${p.subcategory}`
    : `/shop?cat=${p.category}`;

  // Real photography when it exists; the second shot swaps in on hover.
  const primary = productImageUrl(p.images?.[0]);
  const secondary = productImageUrl(p.images?.[1]);

  const media = (
    <>
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
        {off > 0 && (
          <span className="bg-accent px-2 py-1 font-mono text-[10px] font-semibold tracking-[0.12em] text-chalk">
            −{off}%
          </span>
        )}
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
      </span>
      {locked && (
        <span
          className="absolute right-3 top-3 grid size-8 place-items-center bg-ink text-chalk"
          aria-label="Members only"
        >
          <Lock />
        </span>
      )}
    </>
  );

  return (
    <article className="group flex flex-col border border-line bg-chalk transition-all duration-200 ease-out hover:-translate-y-1 hover:border-ink">
      {locked ? (
        <div className="relative block aspect-[4/3]">{media}</div>
      ) : (
        <Link
          href={href}
          className="relative block aspect-[4/3]"
          aria-label={`${p.name} — browse ${typeLabel}`}
        >
          {media}
        </Link>
      )}
      <div className="flex flex-1 flex-col gap-1 border-t border-line p-4">
        <span className="font-mono text-[10px] uppercase tracking-[0.2em] text-ink-soft">
          {brandName(p.brand)}
        </span>
        <h3 className="font-display text-xl font-bold uppercase leading-tight tracking-wide">
          {p.name}
        </h3>
        <div className="mt-auto flex items-baseline gap-2 pt-3 font-mono text-sm">
          {locked ? (
            <span className="flex items-center gap-2 text-[11px] font-semibold uppercase tracking-[0.14em] text-ink-soft">
              <Lock /> Members only
            </span>
          ) : (
            <>
              <span className="font-semibold">{usd(p.price)}</span>
              {p.compareAt && (
                <span className="text-xs text-ink-soft line-through">
                  {usd(p.compareAt)}
                </span>
              )}
              {p.stock <= 5 && (
                <span className="ml-auto text-[10px] uppercase tracking-[0.12em] text-accent-deep">
                  {p.stock} left
                </span>
              )}
            </>
          )}
        </div>
      </div>
    </article>
  );
}
