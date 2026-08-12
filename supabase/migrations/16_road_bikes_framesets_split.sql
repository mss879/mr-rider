-- ============================================================
-- MR.RIDER · Migration 16 · ROAD BIKES / FRAMESETS SPLIT
--
-- "Road Bikes & Framesets" was one aisle holding two product
-- types. The client wants them as two separate topics, so it
-- becomes two top-level categories:
--
--   road-bikes  ·  Road Bikes   ·  complete race builds
--   framesets   ·  Framesets    ·  bare frames and forks
--
-- Ten categories become eleven. Every bike brand that was placed
-- under the combined aisle is placed under BOTH new ones, because
-- the same names sell complete bikes and bare frames.
--
-- The product-type rows keep their slugs (road-bikes, framesets)
-- and simply change parent — so no product changes subcategory,
-- only its category.
--
-- Depends on: 12_category_restructure.sql.
-- Idempotent: safe to run more than once. Re-running after the
-- split is a no-op because nothing is left pointing at the old
-- slug.
-- ============================================================

begin;

-- ============================================================
-- PART 1 · The two new aisles
--
-- Inserted before anything is repointed at them: products.category
-- and subcategories.category_slug are both foreign keys.
-- 'road-bikes' may already exist as a leftover from migration 01 —
-- the upsert brings its naming up to date either way.
-- ============================================================

insert into public.categories (slug, name, blurb, sort_order) values
  ('road-bikes', 'Road Bikes', 'Complete race builds, ready to ride', 1),
  ('framesets',  'Framesets',  'Bare frames and forks, built your way', 2)
on conflict (slug) do update set
  name       = excluded.name,
  blurb      = excluded.blurb,
  sort_order = excluded.sort_order;

-- Renumber the rest of the floor so the menu order stays right.
update public.categories set sort_order = v.sort_order
from (values
  ('components',            3),
  ('wheels-tyres-tubes',    4),
  ('electronics',           5),
  ('apparel',               6),
  ('helmets',               7),
  ('shoes',                 8),
  ('accessories',           9),
  ('nutrition',            10),
  ('bike-care-maintenance',11)
) as v(slug, sort_order)
where public.categories.slug = v.slug;

-- ============================================================
-- PART 2 · Product types change parent
-- ============================================================

do $$
begin
  if to_regclass('public.subcategories') is null then
    raise notice 'public.subcategories not found — run 12_category_restructure.sql first, then re-run this file.';
    return;
  end if;

  update public.subcategories
  set category_slug = 'road-bikes',
      section       = 'Shop by Product',
      note          = 'Road Bikes is its own category — framesets live next door.',
      sort_order    = 1
  where slug = 'road-bikes';

  update public.subcategories
  set category_slug = 'framesets',
      section       = 'Shop by Product',
      note          = 'Framesets is its own category — complete bikes live next door.',
      sort_order    = 2
  where slug = 'framesets';
end $$;

-- ============================================================
-- PART 3 · Stock follows its product type
-- ============================================================

update public.products
set category = case
                 when subcategory = 'framesets' then 'framesets'
                 else 'road-bikes'
               end
where category = 'road-bikes-framesets';

-- Defensive: anything still sitting on a pre-restructure slug
-- (only possible if migration 12 was run without PART 6).
update public.products
set category    = 'framesets',
    subcategory = coalesce(subcategory, 'framesets')
where category = 'frame-sets';

update public.products
set subcategory = 'road-bikes'
where category = 'road-bikes' and subcategory is null;

-- ============================================================
-- PART 4 · Brands sit under both aisles
--
-- brand_categories = which aisles a brand is relevant to.
-- brand_placements = where its link actually renders in the menu.
-- Both are copied across to the two new slugs, then the old rows
-- go. Insert-then-delete, so a half-run leaves the brand links
-- present rather than missing.
-- ============================================================

do $$
begin
  if to_regclass('public.brand_categories') is null then
    raise notice 'public.brand_categories not found — run 12_category_restructure.sql first, then re-run this file.';
    return;
  end if;

  insert into public.brand_categories (brand_slug, category_slug, subcategory_slug)
  select bc.brand_slug, n.slug, bc.subcategory_slug
  from public.brand_categories bc
  cross join (values ('road-bikes'), ('framesets')) as n(slug)
  where bc.category_slug = 'road-bikes-framesets'
  on conflict (brand_slug, category_slug) do nothing;

  delete from public.brand_categories where category_slug = 'road-bikes-framesets';

  insert into public.brand_placements (category_slug, brand_slug, section, note, sort_order)
  select n.slug, bp.brand_slug, bp.section, bp.note, bp.sort_order
  from public.brand_placements bp
  cross join (values ('road-bikes'), ('framesets')) as n(slug)
  where bp.category_slug = 'road-bikes-framesets'
  on conflict (category_slug, brand_slug, section) do nothing;

  delete from public.brand_placements where category_slug = 'road-bikes-framesets';
end $$;

-- ============================================================
-- PART 5 · Retire the combined aisle
--
-- Left standing if anything still points at it, so the migration
-- reports the problem instead of failing on a foreign key.
-- ============================================================

do $$
declare
  v_stock int;
  v_types int := 0;
begin
  select count(*) into v_stock
  from public.products where category in ('road-bikes-framesets', 'frame-sets');

  if v_stock > 0 then
    raise notice '% product(s) still sit on a retired category — re-file them, then re-run this file.', v_stock;
    return;
  end if;

  -- EXECUTE so this parses only when the table is actually there: the whole
  -- block is planned as one expression otherwise, and a missing
  -- subcategories table would abort the migration instead of skipping.
  if to_regclass('public.subcategories') is not null then
    execute $q$
      select count(*) from public.subcategories
      where category_slug in ('road-bikes-framesets', 'frame-sets')
    $q$ into v_types;
  end if;

  if v_types > 0 then
    raise notice '% product type(s) still point at a retired category — re-run 12_category_restructure.sql, then this file.', v_types;
    return;
  end if;

  delete from public.categories c
  where c.slug in ('road-bikes-framesets', 'frame-sets')
    and not exists (select 1 from public.products p where p.category = c.slug);
end $$;

commit;

-- ------------------------------------------------------------
-- After running
--   · The mega-menu carries Road Bikes and Framesets as two
--     separate aisles, each with the same twelve bike brands.
--   · Old links keep working — /shop?cat=road-bikes-framesets and
--     /shop?cat=frame-sets are mapped in src/lib/taxonomy.ts.
--
--   Check the split:
--     select category, subcategory, count(*)
--     from public.products
--     where category in ('road-bikes', 'framesets')
--     group by 1, 2 order by 1, 2;
--
--     select category_slug, count(*) from public.brand_placements
--     group by 1 order by 1;
-- ------------------------------------------------------------
