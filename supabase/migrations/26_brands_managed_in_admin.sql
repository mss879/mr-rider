-- ============================================================
-- MR.RIDER · Migration 26 · BRANDS MANAGED FROM THE ADMIN
--
-- Until now the brand list lived in the website's code
-- (src/lib/taxonomy.ts), so adding a brand like Factor, or fixing a
-- name, needed a developer. From this migration the site reads brands
-- from public.brands, and /admin has a Brands tab to add and rename them.
--
--   1. brands.categories — the aisles a brand belongs in. Drives the
--      /brands page and the "Shop by Brand" menu columns. Backfilled
--      from the code's list so nothing on the site changes today.
--   2. Five names brought back into line with the code (CamelBak, EMS,
--      ENVE, PassQuest, SeaSucker): the site shows the database name
--      from now on, and the database had them lower-cased.
--   3. The admin can insert, update and delete brands. A brand that
--      still has products cannot be deleted (products.brand references
--      it), so nothing on the shop floor can lose its brand.
--
-- The Road Bikes and Framesets menus, and the shop's brand filters, are
-- built from the products in stock, so a new brand shows there as soon
-- as a product with stock carries it.
--
-- Depends on: 08 (is_super_admin), 12 (brands).
-- Idempotent: safe to run more than once. Re-running never overwrites a
-- brand the admin has already edited. Deletes nothing.
-- ============================================================

begin;

-- ------------------------------------------------------------
-- PART 1 · Aisles per brand
-- ------------------------------------------------------------

alter table public.brands
  add column if not exists categories text[] not null default '{}';

comment on column public.brands.categories is
  'Category slugs this brand belongs in. Edited from /admin → Brands. Drives /brands and the Shop by Brand menu columns.';

-- Only fills brands whose aisle list is still empty, so a re-run never
-- undoes an edit made in the admin.
update public.brands b
set categories = v.categories
from (values
  ('100-percent', array['accessories']::text[]),
  ('3t', array['components']::text[]),
  ('applied-nutrition', array['nutrition']::text[]),
  ('ass-magic', array['accessories']::text[]),
  ('blackburn', array['electronics']::text[]),
  ('bmc', array['road-bikes', 'framesets']::text[]),
  ('bonk-breaker', array['nutrition']::text[]),
  ('bont', array['shoes']::text[]),
  ('camelbak', array['accessories']::text[]),
  ('cannondale', array['road-bikes', 'framesets']::text[]),
  ('canyon', array['road-bikes', 'framesets']::text[]),
  ('castelli', array['accessories', 'apparel', 'shoes']::text[]),
  ('ceramicspeed', array['bike-care-maintenance']::text[]),
  ('cervelo', array['road-bikes', 'framesets']::text[]),
  ('chamois-buttr', array['accessories']::text[]),
  ('chris-king', array['bike-care-maintenance']::text[]),
  ('clif', array['nutrition']::text[]),
  ('continental', array['wheels-tyres-tubes']::text[]),
  ('crankbrothers', array['apparel', 'bike-care-maintenance', 'components', 'shoes']::text[]),
  ('cube', array['road-bikes', 'framesets']::text[]),
  ('deity', array['components']::text[]),
  ('dk', array['wheels-tyres-tubes']::text[]),
  ('dmt', array['shoes']::text[]),
  ('dynamic-bike-care', array['bike-care-maintenance']::text[]),
  ('elite', array['accessories']::text[]),
  ('ems', array['nutrition']::text[]),
  ('enduro', array['bike-care-maintenance']::text[]),
  ('enve', array['accessories', 'components']::text[]),
  ('ergon', array['apparel', 'components']::text[]),
  ('ezi-grip', array['accessories']::text[]),
  ('favero', array['components', 'electronics']::text[]),
  ('feedback-sports', array['accessories', 'bike-care-maintenance']::text[]),
  ('fizik', array['helmets', 'shoes']::text[]),
  ('flextail', array['bike-care-maintenance']::text[]),
  ('fsa', array['components']::text[]),
  ('galfer', array['components']::text[]),
  ('garmin', array['electronics']::text[]),
  ('generic', array['accessories', 'apparel', 'components']::text[]),
  ('giro', array['helmets']::text[]),
  ('hammerhead', array['electronics']::text[]),
  ('ism', array['components']::text[]),
  ('juice-lubes', array['bike-care-maintenance']::text[]),
  ('k-edge', array['electronics']::text[]),
  ('knog', array['electronics']::text[]),
  ('lazer', array['helmets']::text[]),
  ('lezyne', array['accessories', 'bike-care-maintenance']::text[]),
  ('look', array['components', 'electronics', 'road-bikes', 'framesets']::text[]),
  ('magene', array['components', 'electronics']::text[]),
  ('magicshine', array['bike-care-maintenance']::text[]),
  ('merida', array['road-bikes', 'framesets']::text[]),
  ('met', array['helmets']::text[]),
  ('milkit', array['wheels-tyres-tubes']::text[]),
  ('moonlight', array['electronics']::text[]),
  ('morgan-blue', array['bike-care-maintenance']::text[]),
  ('mr-rider', array['apparel', 'nutrition']::text[]),
  ('muc-off', array['accessories', 'bike-care-maintenance']::text[]),
  ('oakley', array['accessories']::text[]),
  ('pass-quest', array['components']::text[]),
  ('pinarello', array['road-bikes', 'framesets']::text[]),
  ('pirelli', array['wheels-tyres-tubes']::text[]),
  ('pro', array['components']::text[]),
  ('ravemen', array['electronics']::text[]),
  ('redshift', array['components']::text[]),
  ('reserve', array['wheels-tyres-tubes']::text[]),
  ('rock-n-roll', array['bike-care-maintenance']::text[]),
  ('rotor', array['components']::text[]),
  ('roval', array['components', 'wheels-tyres-tubes']::text[]),
  ('ryder', array['bike-care-maintenance']::text[]),
  ('s-works', array['road-bikes', 'framesets', 'mountain-bikes', 'e-bikes']::text[]),
  ('schwalbe', array['wheels-tyres-tubes']::text[]),
  ('scicon', array['accessories']::text[]),
  ('scott', array['road-bikes', 'framesets']::text[]),
  ('sdg', array['components']::text[]),
  ('seasucker', array['accessories']::text[]),
  ('selle-italia', array['components']::text[]),
  ('shimano', array['shoes', 'components']::text[]),
  ('shotgun', array['accessories']::text[]),
  ('sis', array['accessories', 'nutrition']::text[]),
  ('specialized', array['road-bikes', 'framesets', 'mountain-bikes', 'e-bikes', 'city-active-bikes', 'kids-bikes', 'helmets', 'shoes']::text[]),
  ('sportful', array['apparel']::text[]),
  ('squirt', array['bike-care-maintenance']::text[]),
  ('sram', array['components']::text[]),
  ('stages', array['electronics']::text[]),
  ('stans', array['bike-care-maintenance', 'wheels-tyres-tubes']::text[]),
  ('styrkr', array['nutrition']::text[]),
  ('supacaz', array['accessories', 'components']::text[]),
  ('sweet-cheeks', array['accessories']::text[]),
  ('sweet-protection', array['helmets']::text[]),
  ('swissstop', array['components']::text[]),
  ('team-issue', array['apparel', 'shoes']::text[]),
  ('thomson', array['components']::text[]),
  ('thule', array['accessories']::text[]),
  ('topeak', array['accessories', 'bike-care-maintenance']::text[]),
  ('trek', array['road-bikes', 'framesets']::text[]),
  ('tru-tension', array['bike-care-maintenance']::text[]),
  ('ulac', array['accessories']::text[]),
  ('velobike', array['components']::text[]),
  ('velotoze', array['apparel', 'shoes']::text[]),
  ('vision', array['components']::text[]),
  ('vittoria', array['wheels-tyres-tubes']::text[]),
  ('wahoo', array['components', 'electronics']::text[]),
  ('xlab', array['road-bikes', 'framesets', 'accessories']::text[]),
  ('xxf', array['accessories']::text[]),
  ('yakima', array['accessories']::text[])
) as v(slug, categories)
where b.slug = v.slug
  and b.categories = '{}';

-- ------------------------------------------------------------
-- PART 2 · Names
-- ------------------------------------------------------------

-- Only where the name is still the old one, for the same reason.
update public.brands b
set name = v.new_name
from (values
  ('camelbak', 'Camelbak', 'CamelBak'),
  ('ems', 'Ems', 'EMS'),
  ('enve', 'Enve', 'ENVE'),
  ('pass-quest', 'Pass Quest', 'PassQuest'),
  ('seasucker', 'Seasucker', 'SeaSucker')
) as v(slug, old_name, new_name)
where b.slug = v.slug
  and b.name = v.old_name;

-- ------------------------------------------------------------
-- PART 3 · Rules for brands added from the admin
-- ------------------------------------------------------------

-- A brand's id becomes part of shop links (/shop?brand=factor), so it is
-- lower-case letters, numbers and single hyphens. The admin makes it
-- from the name; this is the backstop.
do $$
begin
  if not exists (
    select 1 from pg_constraint
    where conrelid = 'public.brands'::regclass and conname = 'brands_slug_format'
  ) then
    alter table public.brands
      add constraint brands_slug_format
      check (slug ~ '^[a-z0-9]+(-[a-z0-9]+)*$');
  end if;
  if not exists (
    select 1 from pg_constraint
    where conrelid = 'public.brands'::regclass and conname = 'brands_name_not_blank'
  ) then
    alter table public.brands
      add constraint brands_name_not_blank
      check (btrim(name) <> '');
  end if;
end $$;

-- ------------------------------------------------------------
-- PART 4 · The admin can manage brands
-- ------------------------------------------------------------

do $$
begin
  if to_regprocedure('public.is_super_admin()') is null then
    raise notice 'public.is_super_admin() not found — skipping admin policies (run 08_superadmin.sql, then re-run this file).';
    return;
  end if;
  -- Migration 12 already grants "admins write brands" (for all). These
  -- spell the three out so the rule survives that one being dropped.
  execute 'drop policy if exists "admins insert brands" on public.brands';
  execute 'create policy "admins insert brands" on public.brands
             for insert to authenticated with check (public.is_super_admin())';
  execute 'drop policy if exists "admins update brands" on public.brands';
  execute 'create policy "admins update brands" on public.brands
             for update to authenticated
             using (public.is_super_admin()) with check (public.is_super_admin())';
  execute 'drop policy if exists "admins delete brands" on public.brands';
  execute 'create policy "admins delete brands" on public.brands
             for delete to authenticated using (public.is_super_admin())';
end $$;

commit;

-- ============================================================
-- Check it landed (run after):
--
--   select count(*) from public.brands where categories <> '{}';   -- 104
--   select name from public.brands where slug in ('camelbak','enve'); -- CamelBak, ENVE
--   select policyname from pg_policies where tablename = 'brands';    -- includes the 3 "admins … brands" rows
-- ============================================================
