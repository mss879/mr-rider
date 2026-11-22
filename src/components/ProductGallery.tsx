"use client";

import Image from "next/image";
import { useState } from "react";
import Ph from "@/components/Ph";
import { productImageUrl } from "@/lib/images";

/* Every photo the admin uploaded — up to five — on the product page. The card
   only ever shows the first two (main shot, hover shot), so this is where the
   rest are seen. `contain` on white for the same reason as the card: the
   catalogue's photos come in every shape and cropping them crops the bike. */

const MAIN_SIZES = "(min-width: 1024px) 50vw, 100vw";

export default function ProductGallery({
  images,
  name,
  fallbackLabel,
}: {
  images: string[];
  name: string;
  fallbackLabel: string;
}) {
  const urls = images.map((i) => productImageUrl(i)).filter(Boolean);
  const [active, setActive] = useState(0);

  if (urls.length === 0) {
    return <Ph label={fallbackLabel} className="aspect-[4/3] w-full border border-line" />;
  }

  const current = Math.min(active, urls.length - 1);
  const step = (d: number) => setActive((current + d + urls.length) % urls.length);

  return (
    <div className="flex flex-col gap-3">
      <div
        className="relative aspect-[4/3] w-full overflow-clip border border-line bg-white"
        onKeyDown={(e) => {
          if (e.key === "ArrowLeft") step(-1);
          if (e.key === "ArrowRight") step(1);
        }}
      >
        {/* No `key`: the same <img> swaps its src, so the previous photo stays
            up until the next one has loaded instead of flashing blank. */}
        <Image
          src={urls[current]}
          alt={urls.length > 1 ? `${name} — photo ${current + 1} of ${urls.length}` : name}
          fill
          priority={current === 0}
          sizes={MAIN_SIZES}
          quality={90}
          className="object-contain p-4"
        />
        {urls.length > 1 && (
          <>
            <button
              type="button"
              onClick={() => step(-1)}
              aria-label="Previous photo"
              className="absolute left-2 top-1/2 flex size-10 -translate-y-1/2 items-center justify-center border border-line bg-white text-lg transition-colors hover:border-ink"
            >
              ←
            </button>
            <button
              type="button"
              onClick={() => step(1)}
              aria-label="Next photo"
              className="absolute right-2 top-1/2 flex size-10 -translate-y-1/2 items-center justify-center border border-line bg-white text-lg transition-colors hover:border-ink"
            >
              →
            </button>
            <span className="absolute bottom-2 right-2 bg-ink px-2 py-1 font-mono text-[10px] tracking-[0.12em] text-chalk">
              {current + 1} / {urls.length}
            </span>
          </>
        )}
      </div>

      {urls.length > 1 && (
        <ul className="grid grid-cols-5 gap-2" aria-label="Photos">
          {urls.map((u, i) => (
            <li key={u}>
              <button
                type="button"
                onClick={() => setActive(i)}
                aria-label={`Show photo ${i + 1}`}
                aria-current={i === current}
                className={`relative block aspect-square w-full overflow-clip border bg-white transition-colors ${
                  i === current ? "border-ink" : "border-line hover:border-ink"
                }`}
              >
                <Image src={u} alt="" fill sizes="120px" className="object-contain p-1" />
              </button>
            </li>
          ))}
        </ul>
      )}
    </div>
  );
}
