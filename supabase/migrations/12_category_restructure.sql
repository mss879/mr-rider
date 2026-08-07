-- ============================================================
-- MR.RIDER · Migration 12 · PRODUCT NAVIGATION RESTRUCTURE
--
-- Implements "Mr Rider — Recommended Product Category Breakdown
-- (Client Approved)": sheets Hierarchy, Brand Placement, Naming
-- Corrections and Developer Notes.
--
--   10 product categories  (was 12, unstructured)
--   83 product types       (Hierarchy sheet)
--   28 brand menu links    (Shop by Brand columns)
--  111 hierarchy entries   (83 + 28 — matches the Overview sheet)
--   25 brands              (24 client brands + the MR.RIDER house label)
--
-- Depends on: 01_shop_products.sql. Run after migrations 01–11.
-- Idempotent: safe to run more than once.
--
-- READ BEFORE RUNNING
--   PART 6 rewrites existing products onto the new category slugs and
--   converts products.brand from a free-text name to a brand slug.
--   PART 8 replaces migration 01's 48 demo products with the 101-item
--   client-approved demo catalog — skip PART 8 if you already loaded
--   real stock and only want the structure.
-- ============================================================

begin;

-- ============================================================
-- PART 1 · New taxonomy tables
-- ============================================================

create table if not exists public.brands (
  slug         text primary key,
  name         text not null,
  -- 'direct'  = client-approved direct menu link (S-Works, Specialized, XLAB)
  -- 'filter'  = brand filter / collection link
  treatment    text not null default 'filter' check (treatment in ('direct', 'filter')),
  house        boolean not null default false,   -- MR.RIDER's own label
  in_directory boolean not null default true,    -- shown on /brands
  note         text not null default '',
  sort_order   int  not null default 0
);

create table if not exists public.subcategories (
  slug          text primary key,
  category_slug text not null references public.categories(slug) on update cascade,
  section       text not null,                   -- "Drivetrain", "Shop by Product", …
  name          text not null,
  is_future     boolean not null default false,  -- Future Expansion rows: hide until stocked
  note          text not null default '',
  sort_order    int  not null default 0
);

create index if not exists subcategories_category_idx
  on public.subcategories (category_slug, sort_order);

-- Which categories a brand is relevant to (Brand Placement sheet).
create table if not exists public.brand_categories (
  brand_slug       text not null references public.brands(slug) on update cascade on delete cascade,
  category_slug    text not null references public.categories(slug) on update cascade on delete cascade,
  subcategory_slug text,
  primary key (brand_slug, category_slug)
);

-- Where a brand link actually renders in the menu (the "Shop by Brand" columns).
create table if not exists public.brand_placements (
  category_slug text not null references public.categories(slug) on update cascade on delete cascade,
  brand_slug    text not null references public.brands(slug) on update cascade on delete cascade,
  section       text not null,
  note          text not null default '',
  sort_order    int  not null default 0,
  primary key (category_slug, brand_slug, section)
);

comment on table public.brands is 'Brand directory. Navigation rule: brands are filters / brand links, never product categories.';
comment on table public.subcategories is 'Product types per category — the 83 product-type rows of the client Hierarchy sheet.';
comment on table public.brand_placements is 'Brand links shown inside a category menu (Shop by Brand / Eyewear Brands / Other Brands).';

-- ============================================================
-- PART 2 · The 10 client-approved categories
-- ============================================================

insert into public.categories (slug, name, blurb, sort_order) values
  ('road-bikes-framesets', 'Road Bikes & Framesets', 'Complete race builds and bare framesets', 1),
  ('components', 'Components', 'Drivetrain, brakes, cockpit and pedals', 2),
  ('wheels-tyres-tubes', 'Wheels, Tyres & Tubes', 'The whole wheel system in one aisle', 3),
  ('electronics', 'Electronics', 'Computers, sensors, power meters, lights and radar', 4),
  ('apparel', 'Apparel', 'Rider clothing — jerseys, bibs, gloves, socks', 5),
  ('helmets', 'Helmets', 'Shop by helmet type and brand', 6),
  ('shoes', 'Shoes', 'Shop by shoe type and brand', 7),
  ('accessories', 'Accessories', 'Non-electronic add-ons and rider accessories', 8),
  ('nutrition', 'Nutrition', 'Fuel, hydration and recovery', 9),
  ('bike-care-maintenance', 'Bike Care & Maintenance', 'Cleaning, lubrication, tools and repair', 10)
on conflict (slug) do update set
  name = excluded.name, blurb = excluded.blurb, sort_order = excluded.sort_order;

-- ============================================================
-- PART 3 · The 83 product types
-- ============================================================

insert into public.subcategories (slug, category_slug, section, name, is_future, note, sort_order) values
  ('road-bikes', 'road-bikes-framesets', 'Shop by Product', 'Road Bikes', false, 'Keep Road Bikes and Framesets as separate links inside this client-approved category.', 1),
  ('framesets', 'road-bikes-framesets', 'Shop by Product', 'Framesets', false, 'Keep Road Bikes and Framesets as separate links inside this client-approved category.', 2),
  ('groupsets', 'components', 'Drivetrain', 'Groupsets', false, '', 3),
  ('cranksets', 'components', 'Drivetrain', 'Cranksets', false, '', 4),
  ('chainrings-spiders', 'components', 'Drivetrain', 'Chainrings & Spiders', false, '', 5),
  ('cassettes', 'components', 'Drivetrain', 'Cassettes', false, '', 6),
  ('chains', 'components', 'Drivetrain', 'Chains', false, '', 7),
  ('shifters', 'components', 'Drivetrain', 'Shifters', false, '', 8),
  ('derailleurs', 'components', 'Drivetrain', 'Derailleurs', false, '', 9),
  ('brake-pads', 'components', 'Brakes', 'Brake Pads', false, '', 10),
  ('disc-brake-rotors', 'components', 'Brakes', 'Disc Brake Rotors', false, '', 11),
  ('brake-cables-hoses', 'components', 'Brakes', 'Brake Cables & Hoses', false, '', 12),
  ('handlebars', 'components', 'Cockpit & Contact Points', 'Handlebars', false, '', 13),
  ('stems', 'components', 'Cockpit & Contact Points', 'Stems', false, '', 14),
  ('headsets', 'components', 'Cockpit & Contact Points', 'Headsets', false, '', 15),
  ('bar-tape', 'components', 'Cockpit & Contact Points', 'Bar Tape', false, '', 16),
  ('saddles', 'components', 'Cockpit & Contact Points', 'Saddles', false, '', 17),
  ('seatposts', 'components', 'Cockpit & Contact Points', 'Seatposts', false, '', 18),
  ('seat-collars', 'components', 'Cockpit & Contact Points', 'Seat Collars', false, '', 19),
  ('pedals', 'components', 'Pedals', 'Pedals', false, '', 20),
  ('cleats', 'components', 'Pedals', 'Cleats', false, '', 21),
  ('cables', 'components', 'Cables, Spares & Small Parts', 'Cables', false, 'Use Other Components only as a fallback; avoid a vague ''Misc and others'' label.', 22),
  ('derailleur-hangers', 'components', 'Cables, Spares & Small Parts', 'Derailleur Hangers', false, 'Use Other Components only as a fallback; avoid a vague ''Misc and others'' label.', 23),
  ('replacement-parts', 'components', 'Cables, Spares & Small Parts', 'Replacement Parts', false, 'Use Other Components only as a fallback; avoid a vague ''Misc and others'' label.', 24),
  ('other-components', 'components', 'Cables, Spares & Small Parts', 'Other Components', false, 'Use Other Components only as a fallback; avoid a vague ''Misc and others'' label.', 25),
  ('road-wheels', 'wheels-tyres-tubes', 'Shop by Product', 'Road Wheels', false, '', 26),
  ('clincher-tyres', 'wheels-tyres-tubes', 'Shop by Product', 'Clincher Tyres', false, '', 27),
  ('tubeless-tyres', 'wheels-tyres-tubes', 'Shop by Product', 'Tubeless Tyres', false, '', 28),
  ('tubular-tyres', 'wheels-tyres-tubes', 'Shop by Product', 'Tubular Tyres', false, '', 29),
  ('inner-tubes', 'wheels-tyres-tubes', 'Shop by Product', 'Inner Tubes', false, '', 30),
  ('tubeless-sealant', 'wheels-tyres-tubes', 'Shop by Product', 'Tubeless Sealant', false, '', 31),
  ('tubeless-valves', 'wheels-tyres-tubes', 'Shop by Product', 'Tubeless Valves', false, '', 32),
  ('tubeless-rim-tape', 'wheels-tyres-tubes', 'Shop by Product', 'Tubeless Rim Tape', false, '', 33),
  ('wheel-accessories', 'wheels-tyres-tubes', 'Shop by Product', 'Wheel Accessories', false, '', 34),
  ('bike-computers', 'electronics', 'Shop by Product', 'Bike Computers', false, '', 35),
  ('heart-rate-monitors', 'electronics', 'Shop by Product', 'Heart Rate Monitors', false, '', 36),
  ('speed-cadence-sensors', 'electronics', 'Shop by Product', 'Speed & Cadence Sensors', false, '', 37),
  ('power-meters', 'electronics', 'Shop by Product', 'Power Meters', false, '', 38),
  ('front-lights', 'electronics', 'Shop by Product', 'Front Lights', false, '', 39),
  ('rear-lights', 'electronics', 'Shop by Product', 'Rear Lights', false, '', 40),
  ('radar-lights', 'electronics', 'Shop by Product', 'Radar Lights', false, '', 41),
  ('electronic-accessories', 'electronics', 'Shop by Product', 'Electronic Accessories', false, '', 42),
  ('jerseys', 'apparel', 'Shop by Product', 'Jerseys', false, '', 43),
  ('bib-shorts', 'apparel', 'Shop by Product', 'Bib Shorts', false, '', 44),
  ('waist-shorts', 'apparel', 'Shop by Product', 'Waist Shorts', false, '', 45),
  ('gilets-vests', 'apparel', 'Shop by Product', 'Gilets & Vests', false, '', 46),
  ('gloves', 'apparel', 'Shop by Product', 'Gloves', false, '', 47),
  ('socks', 'apparel', 'Shop by Product', 'Socks', false, '', 48),
  ('caps-hats', 'apparel', 'Shop by Product', 'Caps & Hats', false, '', 49),
  ('base-layers', 'apparel', 'Future Expansion', 'Base Layers', true, 'Add only when enough products are available.', 50),
  ('jackets', 'apparel', 'Future Expansion', 'Jackets', true, 'Add only when enough products are available.', 51),
  ('arm-leg-warmers', 'apparel', 'Future Expansion', 'Arm & Leg Warmers', true, 'Add only when enough products are available.', 52),
  ('casual-wear', 'apparel', 'Future Expansion', 'Casual Wear', true, 'Add only when enough products are available.', 53),
  ('road-helmets', 'helmets', 'Shop by Type', 'Road Helmets', false, '', 54),
  ('aero-helmets', 'helmets', 'Shop by Type', 'Aero Helmets', false, '', 55),
  ('tt-triathlon-helmets', 'helmets', 'Shop by Type', 'Time Trial & Triathlon Helmets', false, '', 56),
  ('helmet-accessories', 'helmets', 'Shop by Type', 'Helmet Accessories', false, '', 57),
  ('road-cycling-shoes', 'shoes', 'Shop by Type', 'Road Cycling Shoes', false, '', 58),
  ('triathlon-shoes', 'shoes', 'Shop by Type', 'Triathlon Shoes', false, '', 59),
  ('shoe-accessories', 'shoes', 'Shop by Type', 'Shoe Accessories', false, '', 60),
  ('footbeds-insoles', 'shoes', 'Shop by Type', 'Footbeds & Insoles', false, '', 61),
  ('cycling-glasses', 'accessories', 'Shop by Product', 'Cycling Glasses', false, '', 62),
  ('bags-storage', 'accessories', 'Shop by Product', 'Bags & Storage', false, '', 63),
  ('bottle-cages', 'accessories', 'Shop by Product', 'Bottle Cages', false, '', 64),
  ('hydration-systems', 'accessories', 'Shop by Product', 'Hydration Systems', false, '', 65),
  ('chamois-cream-rider-care', 'accessories', 'Shop by Product', 'Chamois Cream & Rider Care', false, '', 66),
  ('computer-mounts', 'accessories', 'Shop by Product', 'Computer Mounts', false, '', 67),
  ('bike-accessories', 'accessories', 'Shop by Product', 'Bike Accessories', false, '', 68),
  ('energy-gels', 'nutrition', 'Shop by Product', 'Energy Gels', false, '', 69),
  ('energy-bars', 'nutrition', 'Shop by Product', 'Energy Bars', false, '', 70),
  ('energy-chews', 'nutrition', 'Shop by Product', 'Energy Chews', false, '', 71),
  ('electrolytes-hydration', 'nutrition', 'Shop by Product', 'Electrolytes & Hydration', false, '', 72),
  ('protein-recovery', 'nutrition', 'Shop by Product', 'Protein & Recovery', false, '', 73),
  ('supplements', 'nutrition', 'Shop by Product', 'Supplements', false, '', 74),
  ('energy-shots', 'nutrition', 'Shop by Product', 'Energy Shots', false, '', 75),
  ('chain-lubricants', 'bike-care-maintenance', 'Shop by Product', 'Chain Lubricants', false, '', 76),
  ('cleaners-degreasers', 'bike-care-maintenance', 'Shop by Product', 'Cleaners & Degreasers', false, '', 77),
  ('cleaning-kits', 'bike-care-maintenance', 'Shop by Product', 'Cleaning Kits', false, '', 78),
  ('brushes', 'bike-care-maintenance', 'Shop by Product', 'Brushes', false, '', 79),
  ('grease-assembly-compounds', 'bike-care-maintenance', 'Shop by Product', 'Grease & Assembly Compounds', false, '', 80),
  ('workshop-tools', 'bike-care-maintenance', 'Shop by Product', 'Workshop Tools', false, '', 81),
  ('puncture-repair-kits', 'bike-care-maintenance', 'Shop by Product', 'Puncture Repair Kits', false, '', 82),
  ('tyre-levers', 'bike-care-maintenance', 'Shop by Product', 'Tyre Levers', false, '', 83)
on conflict (slug) do update set
  category_slug = excluded.category_slug, section = excluded.section,
  name = excluded.name, is_future = excluded.is_future,
  note = excluded.note, sort_order = excluded.sort_order;

-- ============================================================
-- PART 4 · Brands, their relevant categories and their menu links
-- ============================================================

insert into public.brands (slug, name, treatment, house, in_directory, note, sort_order) values
  ('100-percent', '100%', 'filter', false, true, 'Keep the official numeric brand styling.', 1),
  ('bmc', 'BMC', 'filter', false, true, '', 2),
  ('bont', 'Bont', 'filter', false, true, '', 3),
  ('cannondale', 'Cannondale', 'filter', false, true, '', 4),
  ('canyon', 'Canyon', 'filter', false, true, '', 5),
  ('cervelo', 'Cervélo', 'filter', false, true, 'Use the accented spelling where supported.', 6),
  ('cube', 'Cube', 'filter', false, true, '', 7),
  ('dmt', 'DMT', 'filter', false, true, '', 8),
  ('dynamic-bike-care', 'Dynamic Bike Care', 'filter', false, true, 'Do not use ''Dynamic care'' as a subcategory.', 9),
  ('fizik', 'Fizik', 'filter', false, true, '', 10),
  ('garmin', 'Garmin', 'filter', false, true, 'Do not label the category ''Computer Garmin''.', 11),
  ('giro', 'Giro', 'filter', false, true, '', 12),
  ('merida', 'Merida', 'filter', false, true, '', 13),
  ('met', 'MET', 'filter', false, true, 'Use uppercase brand styling.', 14),
  ('oakley', 'Oakley', 'filter', false, true, '', 15),
  ('pinarello', 'Pinarello', 'filter', false, true, '', 16),
  ('scicon', 'Scicon', 'filter', false, true, '', 17),
  ('scott', 'Scott', 'filter', false, true, '', 18),
  ('shimano', 'Shimano', 'filter', false, true, 'Can appear across relevant product filters.', 19),
  ('specialized', 'Specialized', 'direct', false, true, 'Client-approved placement under Road Bikes & Framesets; also relevant to helmets and shoes.', 20),
  ('s-works', 'S-Works', 'direct', false, true, 'Client-approved standalone link alongside Specialized. Elsewhere it stays a Specialized collection.', 21),
  ('sweet-protection', 'Sweet Protection', 'filter', false, true, '', 22),
  ('trek', 'Trek', 'filter', false, true, '', 23),
  ('xlab', 'XLAB', 'direct', false, true, 'Client-approved under Road Bikes & Framesets; also listed under accessories/hydration.', 24),
  ('mr-rider', 'MR.RIDER', 'filter', true, true, 'The club''s own label.', 25)
on conflict (slug) do update set
  name = excluded.name, treatment = excluded.treatment, house = excluded.house,
  in_directory = true, note = excluded.note, sort_order = excluded.sort_order;

insert into public.brand_categories (brand_slug, category_slug, subcategory_slug) values
  ('100-percent', 'accessories', 'cycling-glasses'),
  ('bmc', 'road-bikes-framesets', null),
  ('bont', 'shoes', null),
  ('cannondale', 'road-bikes-framesets', null),
  ('canyon', 'road-bikes-framesets', null),
  ('cervelo', 'road-bikes-framesets', null),
  ('cube', 'road-bikes-framesets', null),
  ('dmt', 'shoes', null),
  ('dynamic-bike-care', 'bike-care-maintenance', null),
  ('fizik', 'helmets', null),
  ('fizik', 'shoes', null),
  ('garmin', 'electronics', null),
  ('giro', 'helmets', null),
  ('merida', 'road-bikes-framesets', null),
  ('met', 'helmets', null),
  ('oakley', 'accessories', 'cycling-glasses'),
  ('pinarello', 'road-bikes-framesets', null),
  ('scicon', 'accessories', 'cycling-glasses'),
  ('scott', 'road-bikes-framesets', null),
  ('shimano', 'shoes', null),
  ('shimano', 'components', null),
  ('specialized', 'road-bikes-framesets', null),
  ('specialized', 'helmets', null),
  ('specialized', 'shoes', null),
  ('s-works', 'road-bikes-framesets', null),
  ('sweet-protection', 'helmets', null),
  ('trek', 'road-bikes-framesets', null),
  ('xlab', 'road-bikes-framesets', null),
  ('xlab', 'accessories', null),
  ('mr-rider', 'apparel', null),
  ('mr-rider', 'nutrition', null)
on conflict (brand_slug, category_slug) do update set
  subcategory_slug = excluded.subcategory_slug;

insert into public.brand_placements (category_slug, brand_slug, section, note, sort_order) values
  ('road-bikes-framesets', 'cannondale', 'Shop by Brand', 'Client-approved direct brand placement.', 1),
  ('road-bikes-framesets', 'cervelo', 'Shop by Brand', 'Client-approved direct brand placement.', 2),
  ('road-bikes-framesets', 's-works', 'Shop by Brand', 'Client-approved direct brand placement.', 3),
  ('road-bikes-framesets', 'specialized', 'Shop by Brand', 'Client-approved direct brand placement.', 4),
  ('road-bikes-framesets', 'pinarello', 'Shop by Brand', 'Client-approved direct brand placement.', 5),
  ('road-bikes-framesets', 'cube', 'Shop by Brand', 'Client-approved direct brand placement.', 6),
  ('road-bikes-framesets', 'trek', 'Shop by Brand', 'Client-approved direct brand placement.', 7),
  ('road-bikes-framesets', 'canyon', 'Shop by Brand', 'Client-approved direct brand placement.', 8),
  ('road-bikes-framesets', 'xlab', 'Shop by Brand', 'Client-approved direct brand placement.', 9),
  ('road-bikes-framesets', 'bmc', 'Shop by Brand', 'Client-approved direct brand placement.', 10),
  ('road-bikes-framesets', 'scott', 'Shop by Brand', 'Client-approved direct brand placement.', 11),
  ('road-bikes-framesets', 'merida', 'Shop by Brand', 'Client-approved direct brand placement.', 12),
  ('electronics', 'garmin', 'Shop by Brand', 'Garmin is a brand link/filter inside Electronics, not the category name.', 1),
  ('helmets', 'fizik', 'Shop by Brand', 'S-Works stays a Specialized collection/filter here.', 1),
  ('helmets', 'giro', 'Shop by Brand', 'S-Works stays a Specialized collection/filter here.', 2),
  ('helmets', 'met', 'Shop by Brand', 'S-Works stays a Specialized collection/filter here.', 3),
  ('helmets', 'specialized', 'Shop by Brand', 'S-Works stays a Specialized collection/filter here.', 4),
  ('helmets', 'sweet-protection', 'Shop by Brand', 'S-Works stays a Specialized collection/filter here.', 5),
  ('shoes', 'bont', 'Shop by Brand', 'S-Works stays a Specialized collection/filter here.', 1),
  ('shoes', 'dmt', 'Shop by Brand', 'S-Works stays a Specialized collection/filter here.', 2),
  ('shoes', 'fizik', 'Shop by Brand', 'S-Works stays a Specialized collection/filter here.', 3),
  ('shoes', 'shimano', 'Shop by Brand', 'S-Works stays a Specialized collection/filter here.', 4),
  ('shoes', 'specialized', 'Shop by Brand', 'S-Works stays a Specialized collection/filter here.', 5),
  ('accessories', '100-percent', 'Eyewear Brands', '', 1),
  ('accessories', 'oakley', 'Eyewear Brands', '', 2),
  ('accessories', 'scicon', 'Eyewear Brands', '', 3),
  ('accessories', 'xlab', 'Other Brands', 'XLAB also sits under accessories/hydration, not only Bikes & Framesets.', 4),
  ('bike-care-maintenance', 'dynamic-bike-care', 'Shop by Brand', 'Dynamic Bike Care is a brand, not a product category.', 1)
on conflict (category_slug, brand_slug, section) do update set
  note = excluded.note, sort_order = excluded.sort_order;

-- ============================================================
-- PART 5 · products gains a product type and collection tags
--
-- collections lets one product appear under extra brand
-- collections (e.g. an S-Works item filed under Specialized)
-- without duplicating the product record.
-- ============================================================

alter table public.products add column if not exists subcategory text;
alter table public.products add column if not exists collections text[] not null default '{}';

-- ============================================================
-- PART 6 · Move existing stock onto the new taxonomy
-- ============================================================

-- 6a · Category slugs: old → client-approved, with a sensible default
--      product type. Re-file anything that lands on a fallback type.
update public.products p
set category    = m.new_cat,
    subcategory = coalesce(p.subcategory, m.new_sub)
from (values
  ('drivetrain',       'components',            'groupsets'),
  ('parts',            'components',            'replacement-parts'),
  ('components',       'components',            'other-components'),
  ('tyres',            'wheels-tyres-tubes',    'clincher-tyres'),
  ('road-bikes',       'road-bikes-framesets',  'road-bikes'),
  ('frame-sets',       'road-bikes-framesets',  'framesets'),
  ('bike-maintenance', 'bike-care-maintenance', 'workshop-tools'),
  ('accessories',      'accessories',           'bike-accessories'),
  ('apparel',          'apparel',               'jerseys'),
  ('helmets',          'helmets',               'road-helmets'),
  ('shoes',            'shoes',                 'road-cycling-shoes'),
  ('nutrition',        'nutrition',             'energy-gels')
) as m(old_cat, new_cat, new_sub)
where p.category = m.old_cat;

-- 6b · products.brand becomes a brand slug. Known names first —
--      including the misspellings listed on the Naming Corrections sheet.
update public.products p
set brand = m.slug
from (values
  ('100%',                '100-percent'),
  ('cervélo',             'cervelo'),
  ('cervelo',             'cervelo'),
  ('s works',             's-works'),
  ('s-works',             's-works'),
  ('sworks',              's-works'),
  ('sweet protection',    'sweet-protection'),
  ('dynamic care',        'dynamic-bike-care'),
  ('dynamic bike care',   'dynamic-bike-care'),
  ('mr.rider',            'mr-rider'),
  ('mr rider',            'mr-rider')
) as m(match, slug)
where lower(trim(p.brand)) = m.match;

-- 6c · Anything still free-text becomes a slug.
update public.products p
set brand = trim(both '-' from lower(regexp_replace(p.brand, '[^a-zA-Z0-9]+', '-', 'g')))
where p.brand is not null
  and not exists (select 1 from public.brands b where b.slug = p.brand);

-- 6d · Register brands the sheet does not list so the foreign key holds.
--      in_directory = false keeps them off /brands and out of the menus.
insert into public.brands (slug, name, in_directory, sort_order)
select distinct p.brand,
       initcap(replace(p.brand, '-', ' ')),
       false,
       900
from public.products p
where p.brand is not null
  and p.brand <> ''
  and not exists (select 1 from public.brands b where b.slug = p.brand)
on conflict (slug) do nothing;

-- 6e · Retire the category slugs the restructure replaced. Any category
--      still holding stock is left alone rather than failing the migration.
delete from public.categories c
where c.slug not in (
  'road-bikes-framesets', 'components', 'wheels-tyres-tubes', 'electronics',
  'apparel', 'helmets', 'shoes', 'accessories', 'nutrition', 'bike-care-maintenance'
)
and not exists (select 1 from public.products p where p.category = c.slug);

-- 6f · Lock the new columns down now that every row is mapped.
do $$
begin
  if not exists (
    select 1 from pg_constraint
    where conrelid = 'public.products'::regclass and conname = 'products_brand_fkey'
  ) then
    alter table public.products
      add constraint products_brand_fkey foreign key (brand)
      references public.brands(slug) on update cascade;
  end if;

  if not exists (
    select 1 from pg_constraint
    where conrelid = 'public.products'::regclass and conname = 'products_subcategory_fkey'
  ) then
    alter table public.products
      add constraint products_subcategory_fkey foreign key (subcategory)
      references public.subcategories(slug) on update cascade;
  end if;

  -- Only enforce NOT NULL once nothing is left unmapped.
  if not exists (select 1 from public.products where subcategory is null) then
    alter table public.products alter column subcategory set not null;
  end if;
end $$;

create index if not exists products_subcategory_idx on public.products (subcategory);
create index if not exists products_brand_idx       on public.products (brand);

-- ============================================================
-- PART 7 · Views and row-level security
-- ============================================================

-- The views were created with select * before subcategory/collections
-- existed, so refresh them to pick the new columns up.
create or replace view public.daily_listings
with (security_invoker = on) as
  select * from public.products where listed_at >= current_date - 1;

create or replace view public.clearance_items
with (security_invoker = on) as
  select * from public.products where clearance = true and compare_at is not null;

alter table public.brands           enable row level security;
alter table public.subcategories    enable row level security;
alter table public.brand_categories enable row level security;
alter table public.brand_placements enable row level security;

drop policy if exists "public read brands" on public.brands;
create policy "public read brands" on public.brands for select using (true);

drop policy if exists "public read subcategories" on public.subcategories;
create policy "public read subcategories" on public.subcategories for select using (true);

drop policy if exists "public read brand categories" on public.brand_categories;
create policy "public read brand categories" on public.brand_categories for select using (true);

drop policy if exists "public read brand placements" on public.brand_placements;
create policy "public read brand placements" on public.brand_placements for select using (true);

-- Admin write access, matching migration 09. Skipped if 08 has not run yet.
do $$
declare
  t text;
begin
  if to_regprocedure('public.is_super_admin()') is null then
    raise notice 'public.is_super_admin() not found — skipping admin write policies (run 08_superadmin.sql, then re-run this file).';
    return;
  end if;

  foreach t in array array['brands', 'subcategories', 'brand_categories', 'brand_placements']
  loop
    execute format('drop policy if exists "admins write %1$s" on public.%1$I', t);
    execute format(
      'create policy "admins write %1$s" on public.%1$I for all to authenticated '
      'using (public.is_super_admin()) with check (public.is_super_admin())', t);
  end loop;
end $$;

-- ============================================================
-- PART 8 · DEMO CATALOG (optional)
--
-- Replaces migration 01's 48 placeholder products with a
-- 101-item catalog that covers every one of the 83 product
-- types and every brand on the client's list, so the menus,
-- filters and brand pages all resolve to real stock.
--
-- SKIP THIS PART if the shop already holds your own stock:
-- delete everything from here to "commit;" before running.
-- ============================================================

-- 8a · Remove migration 01's demo rows (only these exact ids).
delete from public.products where id in (
  'acc-1','acc-2','acc-3','acc-4','app-1','app-2','app-3','app-4',
  'hel-1','hel-2','hel-3','hel-4','drv-1','drv-2','drv-3','drv-4',
  'nut-1','nut-2','nut-3','nut-4','prt-1','prt-2','prt-3','prt-4',
  'tyr-1','tyr-2','tyr-3','tyr-4','sho-1','sho-2','sho-3','sho-4',
  'bik-1','bik-2','bik-3','bik-4','frm-1','frm-2','frm-3','frm-4',
  'cmp-1','cmp-2','cmp-3','cmp-4','mnt-1','mnt-2','mnt-3','mnt-4'
);

-- 8b · The client-approved demo catalog. listed_at is relative to the
--      day you run this, so Daily Listings starts populated.
insert into public.products
  (id, name, brand, category, subcategory, collections, price, compare_at, condition, stock, listed_at, featured, clearance) values
  ('rbf-1', 'S-Works Tarmac SL8 Disc', 's-works', 'road-bikes-framesets', 'road-bikes', '{"specialized"}', 12500, null, 'new', 2, current_date - 0, true, false),
  ('rbf-2', 'Cervélo S5 Disc Ultegra Di2', 'cervelo', 'road-bikes-framesets', 'road-bikes', '{}', 8900, null, 'new', 3, current_date - 4, false, false),
  ('rbf-3', 'Pinarello Dogma F Frameset', 'pinarello', 'road-bikes-framesets', 'framesets', '{}', 6400, null, 'new', 2, current_date - 2, false, false),
  ('rbf-4', 'Trek Émonda SLR Frameset', 'trek', 'road-bikes-framesets', 'framesets', '{}', 4200, null, 'new', 4, current_date - 11, false, false),
  ('rbf-5', 'Canyon Ultimate CF SLX', 'canyon', 'road-bikes-framesets', 'road-bikes', '{}', 5600, null, 'new', 3, current_date - 7, false, false),
  ('rbf-6', 'BMC Teammachine SLR One', 'bmc', 'road-bikes-framesets', 'road-bikes', '{}', 7300, null, 'new', 1, current_date - 15, false, false),
  ('rbf-7', 'Cannondale SuperSix EVO 3', 'cannondale', 'road-bikes-framesets', 'road-bikes', '{}', 3950, 4600, 'new', 2, current_date - 21, false, true),
  ('rbf-8', 'Scott Addict RC 20', 'scott', 'road-bikes-framesets', 'road-bikes', '{}', 4750, null, 'new', 3, current_date - 9, false, false),
  ('rbf-9', 'Merida Reacto 6000', 'merida', 'road-bikes-framesets', 'road-bikes', '{}', 3450, null, 'new', 4, current_date - 18, false, false),
  ('rbf-10', 'Cube Litening C:68X Frameset', 'cube', 'road-bikes-framesets', 'framesets', '{}', 3100, null, 'new', 3, current_date - 5, false, false),
  ('rbf-11', 'Allez Sprint Frameset', 'specialized', 'road-bikes-framesets', 'framesets', '{}', 2400, 2900, 'new', 2, current_date - 33, false, true),
  ('rbf-12', 'Trek Madone SLR 9', 'trek', 'road-bikes-framesets', 'road-bikes', '{}', 6200, null, 'pre-owned', 1, current_date - 1, false, false),
  ('cmp-1', 'Dura-Ace R9200 Groupset', 'shimano', 'components', 'groupsets', '{}', 3800, null, 'new', 4, current_date - 0, true, false),
  ('cmp-2', 'Ultegra R8100 Crankset 172.5', 'shimano', 'components', 'cranksets', '{}', 480, null, 'new', 9, current_date - 6, false, false),
  ('cmp-3', 'Chainring & Spider Set 52/36', 'shimano', 'components', 'chainrings-spiders', '{}', 210, null, 'new', 12, current_date - 12, false, false),
  ('cmp-4', 'Ultegra 11-30 Cassette', 'shimano', 'components', 'cassettes', '{}', 165, null, 'new', 18, current_date - 3, false, false),
  ('cmp-5', 'Dura-Ace 12-Speed Chain', 'shimano', 'components', 'chains', '{}', 72, null, 'new', 40, current_date - 1, false, false),
  ('cmp-6', 'Di2 Shifter Pair', 'shimano', 'components', 'shifters', '{}', 640, null, 'new', 6, current_date - 14, false, false),
  ('cmp-7', 'Ultegra Rear Derailleur', 'shimano', 'components', 'derailleurs', '{}', 320, null, 'new', 8, current_date - 8, false, false),
  ('cmp-8', 'Resin Disc Brake Pads', 'shimano', 'components', 'brake-pads', '{}', 34, null, 'new', 55, current_date - 2, false, false),
  ('cmp-9', 'Centerlock Rotor 160mm', 'shimano', 'components', 'disc-brake-rotors', '{}', 58, null, 'new', 30, current_date - 9, false, false),
  ('cmp-10', 'Hydraulic Brake Hose Kit', 'shimano', 'components', 'brake-cables-hoses', '{}', 44, null, 'new', 22, current_date - 19, false, false),
  ('cmp-11', 'Aerofly II Handlebars', 'specialized', 'components', 'handlebars', '{}', 285, null, 'new', 10, current_date - 4, false, false),
  ('cmp-12', 'Alloy Stem 100mm', 'specialized', 'components', 'stems', '{}', 95, null, 'new', 24, current_date - 16, false, false),
  ('cmp-13', 'Integrated Headset Kit', 'cannondale', 'components', 'headsets', '{}', 78, null, 'new', 14, current_date - 22, false, false),
  ('cmp-14', 'Fizik Vento Bar Tape', 'fizik', 'components', 'bar-tape', '{}', 32, null, 'new', 48, current_date - 0, false, false),
  ('cmp-15', 'Fizik Antares R3 Saddle', 'fizik', 'components', 'saddles', '{}', 189, null, 'new', 11, current_date - 5, false, false),
  ('cmp-16', 'Zero-Offset Carbon Seatpost', 'trek', 'components', 'seatposts', '{}', 240, 300, 'new', 6, current_date - 30, false, true),
  ('cmp-17', 'Alloy Seat Collar 34.9', 'trek', 'components', 'seat-collars', '{}', 26, null, 'new', 35, current_date - 25, false, false),
  ('cmp-18', 'Dura-Ace SPD-SL Pedals', 'shimano', 'components', 'pedals', '{}', 265, null, 'new', 13, current_date - 1, false, false),
  ('cmp-19', 'SPD-SL Cleat Set', 'shimano', 'components', 'cleats', '{}', 28, null, 'new', 60, current_date - 7, false, false),
  ('cmp-20', 'Shift Cable & Housing Set', 'shimano', 'components', 'cables', '{}', 38, null, 'new', 42, current_date - 13, false, false),
  ('cmp-21', 'Universal UDH Derailleur Hanger', 'canyon', 'components', 'derailleur-hangers', '{}', 24, null, 'new', 50, current_date - 10, false, false),
  ('cmp-22', 'Frame Bolt & Fixing Kit', 'bmc', 'components', 'replacement-parts', '{}', 19, null, 'new', 44, current_date - 27, false, false),
  ('cmp-23', 'Workshop Small Parts Bin', 'bmc', 'components', 'other-components', '{}', 45, null, 'new', 16, current_date - 35, false, false),
  ('wtt-1', 'Roval Rapide CLX II Wheelset', 'specialized', 'wheels-tyres-tubes', 'road-wheels', '{}', 2600, null, 'new', 4, current_date - 0, true, false),
  ('wtt-2', 'Turbo Cotton 26c Clincher', 'specialized', 'wheels-tyres-tubes', 'clincher-tyres', '{}', 78, null, 'new', 36, current_date - 3, false, false),
  ('wtt-3', 'S-Works Mondo 28c Tubeless', 's-works', 'wheels-tyres-tubes', 'tubeless-tyres', '{"specialized"}', 85, null, 'new', 30, current_date - 1, false, false),
  ('wtt-4', 'Tubular Race Tyre 25c', 'specialized', 'wheels-tyres-tubes', 'tubular-tyres', '{}', 96, 120, 'new', 12, current_date - 40, false, true),
  ('wtt-5', 'Latex Inner Tube 700×25', 'specialized', 'wheels-tyres-tubes', 'inner-tubes', '{}', 16, null, 'new', 80, current_date - 5, false, false),
  ('wtt-6', 'Tubeless Sealant 1L', 'specialized', 'wheels-tyres-tubes', 'tubeless-sealant', '{}', 34, null, 'new', 45, current_date - 2, false, false),
  ('wtt-7', 'Alloy Tubeless Valves 60mm', 'specialized', 'wheels-tyres-tubes', 'tubeless-valves', '{}', 22, null, 'new', 52, current_date - 11, false, false),
  ('wtt-8', 'Tubeless Rim Tape 25mm ×10m', 'specialized', 'wheels-tyres-tubes', 'tubeless-rim-tape', '{}', 18, null, 'new', 48, current_date - 17, false, false),
  ('wtt-9', 'Wheel Bag Set (Pair)', 'specialized', 'wheels-tyres-tubes', 'wheel-accessories', '{}', 145, null, 'new', 9, current_date - 8, false, false),
  ('ele-1', 'Garmin Edge 1050', 'garmin', 'electronics', 'bike-computers', '{}', 749, null, 'new', 8, current_date - 0, true, false),
  ('ele-2', 'Garmin HRM-Pro Plus', 'garmin', 'electronics', 'heart-rate-monitors', '{}', 130, null, 'new', 26, current_date - 4, false, false),
  ('ele-3', 'Garmin Speed & Cadence Sensor 2', 'garmin', 'electronics', 'speed-cadence-sensors', '{}', 70, null, 'new', 34, current_date - 9, false, false),
  ('ele-4', 'Garmin Rally RS200 Power Meter', 'garmin', 'electronics', 'power-meters', '{}', 1099, null, 'new', 5, current_date - 2, false, false),
  ('ele-5', 'Front Light 1200 Lumen', 'garmin', 'electronics', 'front-lights', '{}', 120, null, 'new', 20, current_date - 6, false, false),
  ('ele-6', 'Rear Light 100 Lumen', 'garmin', 'electronics', 'rear-lights', '{}', 60, null, 'new', 28, current_date - 12, false, false),
  ('ele-7', 'Garmin Varia RCT715 Radar Light', 'garmin', 'electronics', 'radar-lights', '{}', 399, null, 'new', 7, current_date - 1, false, false),
  ('ele-8', 'Charging & Mount Cable Kit', 'garmin', 'electronics', 'electronic-accessories', '{}', 29, 39, 'new', 30, current_date - 26, false, true),
  ('app-1', 'SL Air Jersey', 'specialized', 'apparel', 'jerseys', '{}', 145, null, 'new', 26, current_date - 0, true, false),
  ('app-2', 'SL Race Bib Shorts', 'specialized', 'apparel', 'bib-shorts', '{}', 195, null, 'new', 20, current_date - 3, false, false),
  ('app-3', 'RBX Waist Shorts', 'specialized', 'apparel', 'waist-shorts', '{}', 95, null, 'new', 18, current_date - 10, false, false),
  ('app-4', 'Deflect Wind Gilet', 'specialized', 'apparel', 'gilets-vests', '{}', 110, 145, 'new', 9, current_date - 24, false, true),
  ('app-5', 'Grail Long Finger Gloves', 'specialized', 'apparel', 'gloves', '{}', 55, null, 'new', 30, current_date - 5, false, false),
  ('app-6', 'Club Tall Socks', 'mr-rider', 'apparel', 'socks', '{}', 22, null, 'new', 60, current_date - 1, false, false),
  ('app-7', 'Club Cotton Cap', 'mr-rider', 'apparel', 'caps-hats', '{}', 32, null, 'new', 44, current_date - 7, false, false),
  ('hel-1', 'S-Works Prevail 3', 'specialized', 'helmets', 'road-helmets', '{"s-works"}', 325, null, 'new', 6, current_date - 0, true, false),
  ('hel-2', 'Giro Eclipse Spherical', 'giro', 'helmets', 'aero-helmets', '{}', 285, null, 'new', 10, current_date - 4, false, false),
  ('hel-3', 'MET Trenta 3K Carbon', 'met', 'helmets', 'road-helmets', '{}', 340, null, 'new', 7, current_date - 8, false, false),
  ('hel-4', 'Sweet Protection Falconer 2Vi', 'sweet-protection', 'helmets', 'road-helmets', '{}', 289, null, 'new', 9, current_date - 13, false, false),
  ('hel-5', 'Fizik Kudo Aero Helmet', 'fizik', 'helmets', 'aero-helmets', '{}', 260, null, 'new', 8, current_date - 2, false, false),
  ('hel-6', 'S-Works TT 5 Helmet', 'specialized', 'helmets', 'tt-triathlon-helmets', '{"s-works"}', 420, null, 'new', 4, current_date - 6, false, false),
  ('hel-7', 'Giro Aerohead II TT', 'giro', 'helmets', 'tt-triathlon-helmets', '{}', 380, null, 'new', 5, current_date - 16, false, false),
  ('hel-8', 'Helmet Pad & Strap Kit', 'met', 'helmets', 'helmet-accessories', '{}', 24, 32, 'new', 26, current_date - 29, false, true),
  ('sho-1', 'S-Works Torch Road Shoes', 'specialized', 'shoes', 'road-cycling-shoes', '{"s-works"}', 450, null, 'new', 5, current_date - 0, true, false),
  ('sho-2', 'Bont Vaypor S', 'bont', 'shoes', 'road-cycling-shoes', '{}', 420, null, 'new', 6, current_date - 5, false, false),
  ('sho-3', 'DMT KR1 Knit Road Shoes', 'dmt', 'shoes', 'road-cycling-shoes', '{}', 380, null, 'new', 7, current_date - 9, false, false),
  ('sho-4', 'Fizik Vento Infinito Carbon 2', 'fizik', 'shoes', 'road-cycling-shoes', '{}', 400, null, 'new', 8, current_date - 3, false, false),
  ('sho-5', 'Shimano RC903 S-Phyre', 'shimano', 'shoes', 'road-cycling-shoes', '{}', 425, null, 'new', 4, current_date - 12, false, false),
  ('sho-6', 'Bont Riot TR+ Triathlon', 'bont', 'shoes', 'triathlon-shoes', '{}', 230, null, 'new', 9, current_date - 7, false, false),
  ('sho-7', 'Shimano TR9 Tri Shoes', 'shimano', 'shoes', 'triathlon-shoes', '{}', 350, 420, 'new', 5, current_date - 31, false, true),
  ('sho-8', 'Toe Cover & Cleat Bolt Kit', 'shimano', 'shoes', 'shoe-accessories', '{}', 26, null, 'new', 40, current_date - 15, false, false),
  ('sho-9', 'Custom Carbon Footbeds', 'bont', 'shoes', 'footbeds-insoles', '{}', 65, null, 'new', 22, current_date - 2, false, false),
  ('acc-1', 'Oakley Sutro Lite Sweep', 'oakley', 'accessories', 'cycling-glasses', '{}', 210, null, 'new', 14, current_date - 0, true, false),
  ('acc-2', '100% Speedcraft SL', '100-percent', 'accessories', 'cycling-glasses', '{}', 185, null, 'new', 18, current_date - 4, false, false),
  ('acc-3', 'Scicon Aerowing Lamon', 'scicon', 'accessories', 'cycling-glasses', '{}', 235, null, 'new', 11, current_date - 6, false, false),
  ('acc-4', 'Scicon Aerocomfort Bike Bag', 'scicon', 'accessories', 'bags-storage', '{}', 495, null, 'new', 6, current_date - 10, false, false),
  ('acc-5', 'S-Works Carbon Bottle Cage', 'specialized', 'accessories', 'bottle-cages', '{"s-works"}', 65, null, 'new', 25, current_date - 2, false, false),
  ('acc-6', 'XLAB Torpedo Versa 500', 'xlab', 'accessories', 'hydration-systems', '{}', 90, null, 'new', 16, current_date - 8, false, false),
  ('acc-7', 'XLAB Delta Wing 400 Rear Hydration', 'xlab', 'accessories', 'hydration-systems', '{}', 130, 165, 'new', 7, current_date - 28, false, true),
  ('acc-8', 'Chamois Cream 150ml', 'specialized', 'accessories', 'chamois-cream-rider-care', '{}', 28, null, 'new', 48, current_date - 3, false, false),
  ('acc-9', 'Garmin Out-Front Computer Mount', 'garmin', 'accessories', 'computer-mounts', '{}', 45, null, 'new', 32, current_date - 1, false, false),
  ('acc-10', 'Frame Protection & Bell Kit', 'specialized', 'accessories', 'bike-accessories', '{}', 24, null, 'new', 38, current_date - 20, false, false),
  ('nut-1', 'Race Energy Gel — Box of 24', 'mr-rider', 'nutrition', 'energy-gels', '{}', 52, null, 'new', 60, current_date - 0, false, false),
  ('nut-2', 'Oat & Date Energy Bars ×12', 'mr-rider', 'nutrition', 'energy-bars', '{}', 30, null, 'new', 55, current_date - 2, false, false),
  ('nut-3', 'Energy Chews ×20', 'mr-rider', 'nutrition', 'energy-chews', '{}', 34, null, 'new', 48, current_date - 6, false, false),
  ('nut-4', 'Electrolyte Mix 1kg', 'mr-rider', 'nutrition', 'electrolytes-hydration', '{}', 36, null, 'new', 42, current_date - 4, false, false),
  ('nut-5', 'Recovery Protein 2kg', 'mr-rider', 'nutrition', 'protein-recovery', '{}', 62, null, 'new', 26, current_date - 9, false, false),
  ('nut-6', 'Daily Rider Supplement Pack', 'mr-rider', 'nutrition', 'supplements', '{}', 45, 58, 'new', 20, current_date - 23, false, true),
  ('nut-7', 'Caffeine Energy Shots ×12', 'mr-rider', 'nutrition', 'energy-shots', '{}', 38, null, 'new', 36, current_date - 1, false, false),
  ('bcm-1', 'Dynamic Dry Chain Lube 100ml', 'dynamic-bike-care', 'bike-care-maintenance', 'chain-lubricants', '{}', 16, null, 'new', 80, current_date - 0, false, false),
  ('bcm-2', 'Dynamic Bike Cleaner 1L', 'dynamic-bike-care', 'bike-care-maintenance', 'cleaners-degreasers', '{}', 20, null, 'new', 65, current_date - 3, false, false),
  ('bcm-3', 'Dynamic Cleaning Kit Pro', 'dynamic-bike-care', 'bike-care-maintenance', 'cleaning-kits', '{}', 89, null, 'new', 18, current_date - 7, false, false),
  ('bcm-4', 'Drivetrain Brush Set', 'dynamic-bike-care', 'bike-care-maintenance', 'brushes', '{}', 24, null, 'new', 40, current_date - 11, false, false),
  ('bcm-5', 'Carbon Assembly Paste 100g', 'dynamic-bike-care', 'bike-care-maintenance', 'grease-assembly-compounds', '{}', 22, null, 'new', 44, current_date - 5, false, false),
  ('bcm-6', 'Workshop Torque Wrench Set', 'shimano', 'bike-care-maintenance', 'workshop-tools', '{}', 145, 185, 'new', 12, current_date - 27, false, true),
  ('bcm-7', 'Puncture Repair Kit', 'dynamic-bike-care', 'bike-care-maintenance', 'puncture-repair-kits', '{}', 14, null, 'new', 70, current_date - 1, false, false),
  ('bcm-8', 'Carbon Tyre Levers ×3', 'dynamic-bike-care', 'bike-care-maintenance', 'tyre-levers', '{}', 12, null, 'new', 90, current_date - 14, false, false)
on conflict (id) do nothing;

-- 8c · Drop brands that came in from the old demo data and are now unused.
delete from public.brands b
where b.in_directory = false
  and not exists (select 1 from public.products p where p.brand = b.slug);

commit;

-- ------------------------------------------------------------
-- After running
--   · /shop, the mega-menu, /brands and the admin product form all
--     read the new structure automatically.
--   · Anything that landed on a fallback product type
--     ('other-components', 'replacement-parts') is worth re-filing
--     from /admin — the sheet asks for Other Components to be used
--     sparingly.
--   · Check for leftovers:
--       select category, subcategory, count(*) from public.products
--       group by 1, 2 order by 1, 2;
--       select * from public.brands where in_directory = false;
-- ------------------------------------------------------------
