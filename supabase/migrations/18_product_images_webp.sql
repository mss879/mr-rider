-- ============================================================
-- MR.RIDER · Migration 18 · CATALOGUE PHOTOGRAPHY → WEBP
--
-- Migration 17 filed the supplier's photography under its
-- original extensions (.jpg, .png, .avif, .webp) — 738MB across
-- 4,665 files, some of them 4000px originals.
--
-- The files have since been re-encoded as WebP, capped at
-- 1600px on the long edge at quality 82: 738MB → 185MB, a 75%
-- saving, with no visible difference at the sizes the storefront
-- actually renders. See scripts/compress-product-images.mjs.
--
-- This rewrites products.images to match. Paths are otherwise
-- untouched — only the extension changes, so
-- 's-works-torch/1.jpg' becomes 's-works-torch/1.webp'.
--
-- ARRAY ORDER IS PRESERVED. images[1] is the card shot, so the
-- rewrite carries the original ordinal through rather than
-- letting array_agg pick its own order.
--
-- Depends on: 17_spoken_catalogue_import.sql.
-- Idempotent: safe to run more than once — a path that already
-- ends in .webp is rewritten to itself.
-- ============================================================

begin;

update public.products
set images = (
  select array_agg(
           regexp_replace(img, '\.(jpe?g|png|avif|webp)$', '.webp', 'i')
           order by ord
         )
  from unnest(images) with ordinality as t(img, ord)
)
where images <> '{}';

commit;

-- ------------------------------------------------------------
-- After running
--
--   Expect 0 — nothing left pointing at a non-WebP file:
--     select count(*) from public.products
--     where exists (
--       select 1 from unnest(images) i where i !~* '\.webp$'
--     );
--
--   Expect 4665:
--     select sum(cardinality(images)) from public.products;
--
--   Spot-check that the card shot is still first:
--     select id, images from public.products
--     where cardinality(images) > 2 limit 5;
--
-- THE FILES THEMSELVES
--   This only moves the pointers. The bucket has to hold the
--   WebP files for anything to render:
--     node scripts/compress-product-images.mjs   (if not done)
--     node scripts/upload-product-images.mjs
--
--   Any .jpg/.png objects left in the bucket from an earlier
--   upload are now orphans — nothing points at them. To find
--   them, list the bucket and compare against:
--     select unnest(images) from public.products;
-- ------------------------------------------------------------
