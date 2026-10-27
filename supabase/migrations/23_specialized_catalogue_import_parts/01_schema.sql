-- ============================================================
-- MR.RIDER · Migration 23 · SPECIALIZED CATALOGUE IMPORT
--
-- The Specialized New Zealand range (specialized.com/nz/en),
-- scraped from the public site and filed against the client
-- taxonomy. This ADDS to the floor — nothing is deleted.
--
--   367 products
--   1228 product photos (bucket paths — see PART 0)
--   201 Specialized products left out because the store
--     already carries them from migration 17 (same product,
--     different supplier). Those rows are NOT touched. They are
--     listed in supabase/seed/specialized-duplicates.csv.
--
-- NEW AISLES (client-approved with this import)
--   Mountain Bikes · E-Bikes · City & Active Bikes · Kids Bikes,
--   with 12 product types between them. Migration 17 had to skip
--   exactly these bikes for want of an aisle. Two more types,
--   Gravel Wheels and MTB Wheels, go under Wheels, Tyres & Tubes.
--   src/lib/taxonomy.ts carries the same structure — the menu
--   reads it from there, so deploy that change with this file.
--
-- Products per aisle:
--   road-bikes                 23
--   framesets                  18
--   mountain-bikes             38
--   e-bikes                    83
--   city-active-bikes           4
--   kids-bikes                  6
--   components                 61
--   wheels-tyres-tubes         41
--   electronics                 7
--   apparel                    36
--   helmets                    21
--   shoes                       6
--   accessories                19
--   bike-care-maintenance       4
--
-- Stock is Specialized NZ's own per-size stock at scrape time
-- (315 of 367 have some). Products on their Special Offers
-- page, or flagged clearance there, have clearance = true (39).
-- No prices are carried — the floor has none (migration 15).
--
-- Depends on: 12, 13, 15, 16, 17, 20.
-- Idempotent: safe to run more than once. Products upsert on id,
-- so a re-run rewrites these rows (and only these rows).
--
-- THIS IS FILE 1 OF 6. It is the split-for-the-SQL-editor copy of
-- 23_specialized_catalogue_import.sql — same statements, same order.
-- Run the files in this folder in filename order.
-- ============================================================

-- ------------------------------------------------------------
-- PART 0 · BEFORE YOU RUN THIS
--
-- products.images holds bucket object paths, so the photos have
-- to be in the product-images bucket (migration 13) to render.
-- They are already downloaded and compressed (WebP, max 1600px)
-- in supabase/seed/product-images/<product-id>/<n>.webp. Upload
-- them — the script skips everything already in the bucket, so
-- the 4,665 photos from migration 17 are not sent again:
--
--   SUPABASE_SERVICE_ROLE_KEY=<your-service-role-key> NEXT_PUBLIC_SUPABASE_URL=https://xxx.supabase.co \
--     node scripts/upload-product-images.mjs
--
-- Order does not matter. Until the upload runs, these products
-- show the hatched placeholder; afterwards the photos appear on
-- their own. Source URLs for every photo are in
-- supabase/seed/product-images.json (entries tagged
-- "migration": 23) should they ever need fetching again.
-- ------------------------------------------------------------

begin;

-- ============================================================
-- PART 1 · Four new bike aisles
--
-- Inserted before anything points at them: products.category
-- and subcategories.category_slug are foreign keys. The rest of
-- the floor is renumbered so the bikes sit together after
-- Road Bikes and Framesets, matching src/lib/taxonomy.ts.
-- ============================================================

insert into public.categories (slug, name, blurb, sort_order) values
  ('mountain-bikes', 'Mountain Bikes', 'Cross country, trail, downhill and dirt jump', 3),
  ('e-bikes', 'E-Bikes', 'Pedal-assist for trail, road, town and cargo', 4),
  ('city-active-bikes', 'City & Active Bikes', 'Fitness, commuting and comfort riding', 5),
  ('kids-bikes', 'Kids Bikes', 'Balance bikes and first mountain bikes', 6)
on conflict (slug) do update set
  name       = excluded.name,
  blurb      = excluded.blurb,
  sort_order = excluded.sort_order;

update public.categories set sort_order = v.sort_order
from (values
  ('road-bikes', 1),
  ('framesets', 2),
  ('mountain-bikes', 3),
  ('e-bikes', 4),
  ('city-active-bikes', 5),
  ('kids-bikes', 6),
  ('components', 7),
  ('wheels-tyres-tubes', 8),
  ('electronics', 9),
  ('apparel', 10),
  ('helmets', 11),
  ('shoes', 12),
  ('accessories', 13),
  ('nutrition', 14),
  ('bike-care-maintenance', 15)
) as v(slug, sort_order)
where public.categories.slug = v.slug;

-- ============================================================
-- PART 2 · Their product types
--
-- Gravel bikes are NOT given a type of their own: migration 17
-- files Crux and Diverge under Road Bikes, and this import does
-- the same so the two sources agree.
-- ============================================================

insert into public.subcategories
  (slug, category_slug, section, name, is_future, note, sort_order) values
  ('xc-mountain-bikes', 'mountain-bikes', 'Shop by Type', 'Cross Country Bikes', false, 'Added by migration 23 for the Specialized catalogue import.', 101),
  ('trail-mountain-bikes', 'mountain-bikes', 'Shop by Type', 'Trail Bikes', false, 'Added by migration 23 for the Specialized catalogue import.', 102),
  ('downhill-mountain-bikes', 'mountain-bikes', 'Shop by Type', 'Downhill Bikes', false, 'Added by migration 23 for the Specialized catalogue import.', 103),
  ('dirt-jump-bikes', 'mountain-bikes', 'Shop by Type', 'Dirt Jump & Pump Track Bikes', false, 'Added by migration 23 for the Specialized catalogue import.', 104),
  ('electric-mountain-bikes', 'e-bikes', 'Shop by Type', 'Electric Mountain Bikes', false, 'Added by migration 23 for the Specialized catalogue import.', 111),
  ('electric-road-gravel-bikes', 'e-bikes', 'Shop by Type', 'Electric Road & Gravel Bikes', false, 'Added by migration 23 for the Specialized catalogue import.', 112),
  ('electric-hybrid-bikes', 'e-bikes', 'Shop by Type', 'Electric Hybrid & Commuter Bikes', false, 'Added by migration 23 for the Specialized catalogue import.', 113),
  ('electric-cargo-bikes', 'e-bikes', 'Shop by Type', 'Electric Cargo Bikes', false, 'Added by migration 23 for the Specialized catalogue import.', 114),
  ('e-bike-accessories', 'e-bikes', 'Shop by Type', 'E-Bike Parts & Accessories', false, 'Added by migration 23 for the Specialized catalogue import.', 115),
  ('fitness-bikes', 'city-active-bikes', 'Shop by Type', 'Fitness Bikes', false, 'Added by migration 23 for the Specialized catalogue import.', 121),
  ('cruiser-comfort-bikes', 'city-active-bikes', 'Shop by Type', 'Cruiser & Comfort Bikes', false, 'Added by migration 23 for the Specialized catalogue import.', 122),
  ('kids-bikes', 'kids-bikes', 'Shop by Type', 'Kids Bikes', false, 'Added by migration 23 for the Specialized catalogue import.', 131),
  ('gravel-wheels', 'wheels-tyres-tubes', 'Shop by Product', 'Gravel Wheels', false, 'Added by migration 23 for the Specialized catalogue import.', 26),
  ('mtb-wheels', 'wheels-tyres-tubes', 'Shop by Product', 'MTB Wheels', false, 'Added by migration 23 for the Specialized catalogue import.', 26)
on conflict (slug) do update set
  category_slug = excluded.category_slug,
  section       = excluded.section,
  name          = excluded.name,
  is_future     = excluded.is_future,
  sort_order    = excluded.sort_order;

-- Migration 12 parked these as Future Expansion; 17 took them
-- live. Restated so this file stands on its own.
update public.subcategories set is_future = false
where slug in ('base-layers', 'jackets', 'arm-leg-warmers', 'casual-wear');

-- ============================================================
-- PART 3 · Brands
--
-- specialized and s-works come from migration 12, roval from 17.
-- The upsert is only a safety net for a database that skipped
-- 17 — it never renames or hides an existing brand.
-- ============================================================

insert into public.brands (slug, name, treatment, house, in_directory, note, sort_order) values
  ('specialized', 'Specialized', 'direct', false, true, '', 20),
  ('s-works',     'S-Works',     'direct', false, true, '', 21),
  ('roval',       'Roval',       'filter', false, true, 'Imported by migration 17.', 900)
on conflict (slug) do nothing;

insert into public.brand_categories (brand_slug, category_slug, subcategory_slug) values
  ('specialized', 'mountain-bikes', null),
  ('s-works', 'mountain-bikes', null),
  ('specialized', 'e-bikes', null),
  ('s-works', 'e-bikes', null),
  ('specialized', 'city-active-bikes', null),
  ('specialized', 'kids-bikes', null)
on conflict (brand_slug, category_slug) do nothing;

insert into public.brand_placements (category_slug, brand_slug, section, note, sort_order) values
  ('mountain-bikes', 'specialized', 'Shop by Brand', 'Added by migration 23.', 1),
  ('mountain-bikes', 's-works', 'Shop by Brand', 'Added by migration 23.', 2),
  ('e-bikes', 'specialized', 'Shop by Brand', 'Added by migration 23.', 1),
  ('e-bikes', 's-works', 'Shop by Brand', 'Added by migration 23.', 2),
  ('city-active-bikes', 'specialized', 'Shop by Brand', 'Added by migration 23.', 1),
  ('kids-bikes', 'specialized', 'Shop by Brand', 'Added by migration 23.', 1)
on conflict (category_slug, brand_slug, section) do update set
  note = excluded.note, sort_order = excluded.sort_order;

commit;
