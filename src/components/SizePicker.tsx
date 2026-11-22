"use client";

import { useState } from "react";
import RequestInquiryButton, {
  type InquiryProduct,
} from "@/components/inquiry/RequestInquiryButton";
import type { Variant } from "@/lib/data";

/* The product page's sizes and its inquiry button, together: the size the
   rider taps goes into their message, so the club never has to ask "which
   size?". Sold-out sizes stay visible but crossed out — a rider looking for a
   56 should see the club carries it, not wonder whether it ever did. A
   product with one size has it chosen already. */

export default function SizePicker({
  product,
  variants,
}: {
  product: InquiryProduct;
  variants: Variant[];
}) {
  const inStock = variants.filter((v) => v.stock > 0);
  const [size, setSize] = useState<string | undefined>(
    inStock.length === 1 ? inStock[0].size : undefined,
  );

  return (
    <div className="flex flex-col gap-4">
      <fieldset>
        <legend className="mb-2 font-mono text-[10px] uppercase tracking-[0.2em] text-ink-soft">
          {size ? `Size — ${size}` : "Choose a size"}
        </legend>
        <div className="flex flex-wrap gap-2">
          {variants.map((v) => {
            const soldOut = v.stock <= 0;
            const active = v.size === size;
            return (
              <button
                key={v.size}
                type="button"
                disabled={soldOut}
                aria-pressed={active}
                onClick={() => setSize(active ? undefined : v.size)}
                title={soldOut ? "Sold out — ask about the next drop" : v.stock <= 2 ? `${v.stock} left` : "In stock"}
                className={`min-w-12 border px-3 py-2 font-mono text-[11px] font-semibold uppercase tracking-[0.1em] transition-colors ${
                  active
                    ? "border-ink bg-ink text-chalk"
                    : soldOut
                      ? "cursor-not-allowed border-line text-ink-soft/60 line-through"
                      : "border-line hover:border-ink"
                }`}
              >
                {v.size}
                {!soldOut && v.stock <= 2 && (
                  <span className="ml-1.5 font-normal normal-case tracking-normal opacity-70">
                    {v.stock} left
                  </span>
                )}
              </button>
            );
          })}
        </div>
        {inStock.length === 0 && (
          <p className="mt-2 font-mono text-[10px] uppercase tracking-[0.14em] text-ink-soft">
            Every size is sold out — ask about the next drop
          </p>
        )}
      </fieldset>
      <div className="max-w-sm">
        <RequestInquiryButton product={{ ...product, size }} />
      </div>
    </div>
  );
}
