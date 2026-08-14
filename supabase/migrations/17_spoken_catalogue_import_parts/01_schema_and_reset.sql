-- ============================================================
-- MR.RIDER · Migration 17 · CATALOGUE IMPORT
--
-- Replaces the demo catalogue with the client's real range:
-- 1423 products imported from the supplier catalogue at
-- spokencycles.co.nz, filed against the client-approved
-- taxonomy from migrations 12 and 16.
--
--   1423 products
--     93 brands (79 new, registered in PART 3)
--   4665 product photos (bucket paths — see PART 0)
--
-- WHAT IS NOT HERE
--   73 source products were deliberately not carried over:
--   Indoor Trainers (43), E-Bikes (21), Kids Bikes (5), MTB Bikes (3) and one gift card.
--   MR.RIDER carries no aisle for them. They are listed in
--   supabase/seed/skipped-products.csv if that changes.
--
-- PART 4 DELETES EVERY EXISTING ROW IN public.products.
-- That is the point — the demo catalogue goes and this takes
-- its place — but read PART 4 before running if you have
-- already added real stock through /admin.
--
-- Depends on: 01, 12, 13, 15, 16.
-- Idempotent: safe to run more than once.
--
-- THIS IS FILE 1 OF 10. It is the split-for-the-SQL-editor copy of
-- 17_spoken_catalogue_import.sql — same statements, same order.
-- Run the files in this folder in filename order.
-- ============================================================

-- ------------------------------------------------------------
-- PART 0 · BEFORE YOU RUN THIS
--
-- products.images holds bucket object paths, so the photos must
-- be in the product-images bucket (migration 13) for anything to
-- render. The files are in supabase/seed/product-images/, laid
-- out as <product-id>/<n>.<ext> — exactly the paths written
-- below. Upload them first:
--
--   SUPABASE_SERVICE_ROLE_KEY=eyJ... --     node scripts/upload-product-images.mjs
--
-- Products whose photos are not uploaded yet fall back to the
-- hatched placeholder; nothing breaks, they just look empty.
-- ------------------------------------------------------------

begin;


-- ============================================================
-- PART 1 · products.description
--
-- The schema had no description column — the demo catalogue was
-- name-only. Supplier copy is stored as a small, sanitised HTML
-- subset (p, br, strong, em, ul/ol/li, h3-h5, a, table). Script,
-- style, iframe, form tags and every inline attribute except
-- href were stripped at import.
-- ============================================================

alter table public.products
  add column if not exists description text not null default '';

comment on column public.products.description is
  'Product copy as a sanitised HTML subset. Safe to render, but still
   render it through a sanitiser if that ever changes hands.';

-- The catalogue views were created with select *, so refresh them
-- to expose the new column.
create or replace view public.daily_listings
with (security_invoker = on) as
  select * from public.products where listed_at >= current_date - 1;

create or replace view public.clearance_items
with (security_invoker = on) as
  select * from public.products where clearance = true;


-- ============================================================
-- PART 2 · Product types the import needs
--
-- Twelve new types under EXISTING client-approved categories.
-- No new top-level category is created — the eleven-aisle menu
-- from migration 16 is untouched.
-- ============================================================

insert into public.subcategories
  (slug, category_slug, section, name, is_future, note, sort_order) values
  ('gravel-tyres', 'wheels-tyres-tubes', 'Shop by Product', 'Gravel Tyres', false, 'Added by migration 17 for the supplier catalogue import.', 31),
  ('mtb-tyres', 'wheels-tyres-tubes', 'Shop by Product', 'MTB Tyres', false, 'Added by migration 17 for the supplier catalogue import.', 32),
  ('mtb-helmets', 'helmets', 'Shop by Type', 'MTB Helmets', false, 'Added by migration 17 for the supplier catalogue import.', 58),
  ('commute-casual-helmets', 'helmets', 'Shop by Type', 'Commute & Casual Helmets', false, 'Added by migration 17 for the supplier catalogue import.', 59),
  ('kids-helmets', 'helmets', 'Shop by Type', 'Kids Helmets', false, 'Added by migration 17 for the supplier catalogue import.', 60),
  ('mtb-cycling-shoes', 'shoes', 'Shop by Type', 'Mountain Bike Shoes', false, 'Added by migration 17 for the supplier catalogue import.', 62),
  ('gravel-shoes', 'shoes', 'Shop by Type', 'Gravel Shoes', false, 'Added by migration 17 for the supplier catalogue import.', 63),
  ('mtb-apparel', 'apparel', 'Shop by Product', 'MTB Apparel', false, 'Added by migration 17 for the supplier catalogue import.', 54),
  ('skinsuits-trisuits', 'apparel', 'Shop by Product', 'Skinsuits & Trisuits', false, 'Added by migration 17 for the supplier catalogue import.', 55),
  ('bib-tights', 'apparel', 'Shop by Product', 'Bib Tights', false, 'Added by migration 17 for the supplier catalogue import.', 56),
  ('racks-storage', 'accessories', 'Shop by Product', 'Racks & Storage', false, 'Added by migration 17 for the supplier catalogue import.', 69),
  ('pumps-inflation', 'bike-care-maintenance', 'Shop by Product', 'Pumps & Inflation', false, 'Added by migration 17 for the supplier catalogue import.', 84)
on conflict (slug) do update set
  category_slug = excluded.category_slug,
  section       = excluded.section,
  name          = excluded.name,
  is_future     = excluded.is_future,
  sort_order    = excluded.sort_order;

-- These four were parked as "Future Expansion" in migration 12
-- because there was no stock. There is now, so they go live.
update public.subcategories set is_future = false
where slug in ('base-layers', 'jackets', 'arm-leg-warmers', 'casual-wear');


-- ============================================================
-- PART 3 · Brands
--
-- 79 of the 93 brands in this import were not in migration 12's
-- list. products.brand is a foreign key onto brands(slug), so
-- they are registered first. in_directory = false keeps them out
-- of /brands until someone decides they belong there; the
-- client's original 25 stay exactly as migration 12 left them.
-- ============================================================

insert into public.brands (slug, name, treatment, house, in_directory, note, sort_order) values
  ('3t'                  , '3T'                    , 'filter', false, false, 'Imported by migration 17.', 900),
  ('applied-nutrition'   , 'Applied Nutrition'     , 'filter', false, false, 'Imported by migration 17.', 900),
  ('ass-magic'           , 'Ass Magic'             , 'filter', false, false, 'Imported by migration 17.', 900),
  ('blackburn'           , 'Blackburn'             , 'filter', false, false, 'Imported by migration 17.', 900),
  ('bonk-breaker'        , 'Bonk Breaker'          , 'filter', false, false, 'Imported by migration 17.', 900),
  ('camelbak'            , 'Camelbak'              , 'filter', false, false, 'Imported by migration 17.', 900),
  ('castelli'            , 'Castelli'              , 'filter', false, false, 'Imported by migration 17.', 900),
  ('ceramicspeed'        , 'CeramicSpeed'          , 'filter', false, false, 'Imported by migration 17.', 900),
  ('chamois-buttr'       , 'Chamois Butt''r'       , 'filter', false, false, 'Imported by migration 17.', 900),
  ('chris-king'          , 'Chris King'            , 'filter', false, false, 'Imported by migration 17.', 900),
  ('clif'                , 'Clif'                  , 'filter', false, false, 'Imported by migration 17.', 900),
  ('continental'         , 'Continental'           , 'filter', false, false, 'Imported by migration 17.', 900),
  ('crankbrothers'       , 'Crankbrothers'         , 'filter', false, false, 'Imported by migration 17.', 900),
  ('deity'               , 'Deity'                 , 'filter', false, false, 'Imported by migration 17.', 900),
  ('dk'                  , 'DK'                    , 'filter', false, false, 'Imported by migration 17.', 900),
  ('elite'               , 'Elite'                 , 'filter', false, false, 'Imported by migration 17.', 900),
  ('ems'                 , 'Ems'                   , 'filter', false, false, 'Imported by migration 17.', 900),
  ('enduro'              , 'Enduro'                , 'filter', false, false, 'Imported by migration 17.', 900),
  ('enve'                , 'Enve'                  , 'filter', false, false, 'Imported by migration 17.', 900),
  ('ergon'               , 'Ergon'                 , 'filter', false, false, 'Imported by migration 17.', 900),
  ('ezi-grip'            , 'Ezi Grip'              , 'filter', false, false, 'Imported by migration 17.', 900),
  ('favero'              , 'Favero'                , 'filter', false, false, 'Imported by migration 17.', 900),
  ('feedback-sports'     , 'Feedback Sports'       , 'filter', false, false, 'Imported by migration 17.', 900),
  ('flextail'            , 'Flextail'              , 'filter', false, false, 'Imported by migration 17.', 900),
  ('fsa'                 , 'FSA'                   , 'filter', false, false, 'Imported by migration 17.', 900),
  ('galfer'              , 'Galfer'                , 'filter', false, false, 'Imported by migration 17.', 900),
  ('generic'             , 'Generic Brand'         , 'filter', false, false, 'Imported by migration 17.', 900),
  ('hammerhead'          , 'Hammerhead'            , 'filter', false, false, 'Imported by migration 17.', 900),
  ('ism'                 , 'ISM'                   , 'filter', false, false, 'Imported by migration 17.', 900),
  ('juice-lubes'         , 'Juice Lubes'           , 'filter', false, false, 'Imported by migration 17.', 900),
  ('k-edge'              , 'K-Edge'                , 'filter', false, false, 'Imported by migration 17.', 900),
  ('knog'                , 'Knog'                  , 'filter', false, false, 'Imported by migration 17.', 900),
  ('lazer'               , 'Lazer'                 , 'filter', false, false, 'Imported by migration 17.', 900),
  ('lezyne'              , 'Lezyne'                , 'filter', false, false, 'Imported by migration 17.', 900),
  ('look'                , 'LOOK'                  , 'filter', false, false, 'Imported by migration 17.', 900),
  ('magene'              , 'Magene'                , 'filter', false, false, 'Imported by migration 17.', 900),
  ('magicshine'          , 'Magicshine'            , 'filter', false, false, 'Imported by migration 17.', 900),
  ('milkit'              , 'MilKit'                , 'filter', false, false, 'Imported by migration 17.', 900),
  ('moonlight'           , 'Moonlight'             , 'filter', false, false, 'Imported by migration 17.', 900),
  ('morgan-blue'         , 'Morgan Blue'           , 'filter', false, false, 'Imported by migration 17.', 900),
  ('muc-off'             , 'Muc-Off'               , 'filter', false, false, 'Imported by migration 17.', 900),
  ('pass-quest'          , 'Pass Quest'            , 'filter', false, false, 'Imported by migration 17.', 900),
  ('pirelli'             , 'Pirelli'               , 'filter', false, false, 'Imported by migration 17.', 900),
  ('pro'                 , 'PRO'                   , 'filter', false, false, 'Imported by migration 17.', 900),
  ('ravemen'             , 'Ravemen'               , 'filter', false, false, 'Imported by migration 17.', 900),
  ('redshift'            , 'Redshift'              , 'filter', false, false, 'Imported by migration 17.', 900),
  ('reserve'             , 'Reserve'               , 'filter', false, false, 'Imported by migration 17.', 900),
  ('rock-n-roll'         , 'Rock N Roll'           , 'filter', false, false, 'Imported by migration 17.', 900),
  ('rotor'               , 'Rotor'                 , 'filter', false, false, 'Imported by migration 17.', 900),
  ('roval'               , 'Roval'                 , 'filter', false, false, 'Imported by migration 17.', 900),
  ('ryder'               , 'Ryder'                 , 'filter', false, false, 'Imported by migration 17.', 900),
  ('schwalbe'            , 'Schwalbe'              , 'filter', false, false, 'Imported by migration 17.', 900),
  ('sdg'                 , 'SDG'                   , 'filter', false, false, 'Imported by migration 17.', 900),
  ('seasucker'           , 'Seasucker'             , 'filter', false, false, 'Imported by migration 17.', 900),
  ('selle-italia'        , 'Selle Italia'          , 'filter', false, false, 'Imported by migration 17.', 900),
  ('shotgun'             , 'Shotgun'               , 'filter', false, false, 'Imported by migration 17.', 900),
  ('sis'                 , 'SIS'                   , 'filter', false, false, 'Imported by migration 17.', 900),
  ('sportful'            , 'Sportful'              , 'filter', false, false, 'Imported by migration 17.', 900),
  ('squirt'              , 'Squirt'                , 'filter', false, false, 'Imported by migration 17.', 900),
  ('sram'                , 'SRAM'                  , 'filter', false, false, 'Imported by migration 17.', 900),
  ('stages'              , 'Stages'                , 'filter', false, false, 'Imported by migration 17.', 900),
  ('stans'               , 'Stan''s NoTubes'       , 'filter', false, false, 'Imported by migration 17.', 900),
  ('styrkr'              , 'Styrkr'                , 'filter', false, false, 'Imported by migration 17.', 900),
  ('supacaz'             , 'Supacaz'               , 'filter', false, false, 'Imported by migration 17.', 900),
  ('sweet-cheeks'        , 'Sweet Cheeks'          , 'filter', false, false, 'Imported by migration 17.', 900),
  ('swissstop'           , 'SwissStop'             , 'filter', false, false, 'Imported by migration 17.', 900),
  ('team-issue'          , 'Team Issue'            , 'filter', false, false, 'Imported by migration 17.', 900),
  ('thomson'             , 'Thomson'               , 'filter', false, false, 'Imported by migration 17.', 900),
  ('thule'               , 'Thule'                 , 'filter', false, false, 'Imported by migration 17.', 900),
  ('topeak'              , 'Topeak'                , 'filter', false, false, 'Imported by migration 17.', 900),
  ('tru-tension'         , 'Tru-Tension'           , 'filter', false, false, 'Imported by migration 17.', 900),
  ('ulac'                , 'ULAC'                  , 'filter', false, false, 'Imported by migration 17.', 900),
  ('velobike'            , 'Velobike'              , 'filter', false, false, 'Imported by migration 17.', 900),
  ('velotoze'            , 'VeloToze'              , 'filter', false, false, 'Imported by migration 17.', 900),
  ('vision'              , 'Vision'                , 'filter', false, false, 'Imported by migration 17.', 900),
  ('vittoria'            , 'Vittoria'              , 'filter', false, false, 'Imported by migration 17.', 900),
  ('wahoo'               , 'Wahoo'                 , 'filter', false, false, 'Imported by migration 17.', 900),
  ('xxf'                 , 'XXF'                   , 'filter', false, false, 'Imported by migration 17.', 900),
  ('yakima'              , 'Yakima'                , 'filter', false, false, 'Imported by migration 17.', 900)
on conflict (slug) do nothing;


-- ============================================================
-- PART 4 · The demo catalogue goes
--
-- Migrations 01 and 12 seeded placeholder stock. Every row is
-- removed so the real range below is the whole floor.
--
-- Inquiry threads are NOT touched and do not need to be:
-- migration 14 stores the product as a snapshot (id, name,
-- brand, image) rather than a foreign key, precisely so that
-- retiring a product never erases the conversation about it.
-- Existing threads keep reading correctly after this runs.
--
-- KEEP REAL STOCK INSTEAD: comment the delete out and the insert
-- below will simply add to what is already there.
-- ============================================================

delete from public.products;

commit;
