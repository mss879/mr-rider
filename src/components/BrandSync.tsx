"use client";

import { applyBrandRows, type BrandRow } from "@/lib/taxonomy";

/* Carries the club's brand list (public.brands, edited from /admin → Brands)
   into the browser. The server laid the same rows over lib/taxonomy before it
   rendered; this does it for the browser's copy of that module, during render
   and before any child, so every brand name on screen — product cards, the
   menu, the inquiry inbox — matches what the server sent. Idempotent. */
export default function BrandSync({
  rows,
  children,
}: {
  rows: BrandRow[] | null;
  children: React.ReactNode;
}) {
  applyBrandRows(rows);
  return <>{children}</>;
}
