-- ============================================================
-- MR.RIDER · Migration 01 · SHOP
-- Menu item: /shop  (also feeds the homepage grids; migrations
-- 02 (Daily Listings) and 05 (Clearance) build views on top of
-- this, so run this file FIRST.)
-- ============================================================

create table if not exists public.categories (
  slug        text primary key,
  name        text not null,
  blurb       text not null default '',
  sort_order  int  not null default 0
);

create table if not exists public.products (
  id          text primary key,
  name        text not null,
  brand       text not null,
  category    text not null references public.categories(slug),
  price       numeric(10,2) not null check (price >= 0),
  compare_at  numeric(10,2) check (compare_at is null or compare_at > price),
  condition   text not null default 'new' check (condition in ('new', 'pre-owned')),
  stock       int  not null default 0 check (stock >= 0),
  listed_at   date not null default current_date,
  featured    boolean not null default false,
  clearance   boolean not null default false,
  created_at  timestamptz not null default now()
);

create index if not exists products_category_idx  on public.products (category);
create index if not exists products_listed_at_idx on public.products (listed_at desc);

alter table public.categories enable row level security;
alter table public.products   enable row level security;

-- Catalog is publicly readable for now. When the membership gate goes
-- live (see 07_membership_gate.sql) these two policies get replaced
-- with members-only versions.
create policy "public read categories" on public.categories
  for select using (true);

create policy "public read products" on public.products
  for select using (true);

-- ---------- seed: 12 categories ----------
insert into public.categories (slug, name, blurb, sort_order) values
  ('accessories',      'Accessories',      'Lights, cages, tape, bags',   1),
  ('apparel',          'Apparel',          'Jerseys, bibs, layers',       2),
  ('helmets',          'Helmets',          'Aero, road, commute',         3),
  ('drivetrain',       'Drivetrain',       'Chains, cassettes, cranks',   4),
  ('nutrition',        'Nutrition',        'Gels, mixes, bars',           5),
  ('parts',            'Parts',            'Small parts, hard to find',   6),
  ('tyres',            'Tyres',            'Race, training, gravel',      7),
  ('shoes',            'Shoes',            'Road, track, winter',         8),
  ('road-bikes',       'Road Bikes',       'Complete race builds',        9),
  ('frame-sets',       'Frame Sets',       'Carbon, steel, track',       10),
  ('components',       'Components',       'Wheels, meters, bars',       11),
  ('bike-maintenance', 'Bike Maintenance', 'Tools, lube, stands',        12)
on conflict (slug) do nothing;

-- ---------- seed: 48 products ----------
-- listed_at is relative to the day you run this file, so Daily
-- Listings starts populated.
insert into public.products
  (id, name, brand, category, price, compare_at, condition, stock, listed_at, featured, clearance) values
  -- accessories
  ('acc-1', 'Grip Tape 3.2 Bar Wrap',   'VELOCORE',     'accessories', 32,   null, 'new', 24, current_date - 3,  false, false),
  ('acc-2', 'Ti Bottle Cage',           'KROM',         'accessories', 58,   null, 'new', 11, current_date,      false, false),
  ('acc-3', 'Beacon 900 Front Light',   'PACELINE',     'accessories', 89,   null, 'new', 7,  current_date - 12, false, false),
  ('acc-4', 'Roll-Top Saddle Bag',      'RIDGELINE',    'accessories', 44,   60,   'new', 15, current_date - 6,  false, true),
  -- apparel
  ('app-1', 'Club Aero Jersey',         'MR.RIDER',     'apparel',     120,  null, 'new', 30, current_date,      true,  false),
  ('app-2', 'Race Bib Shorts',          'VELOCORE',     'apparel',     165,  null, 'new', 18, current_date - 9,  false, false),
  ('app-3', 'Windbreak Gilet',          'RIDGELINE',    'apparel',     98,   130,  'new', 9,  current_date - 22, false, true),
  ('app-4', 'Team Skinsuit',            'MR.RIDER',     'apparel',     240,  null, 'new', 6,  current_date - 1,  false, false),
  -- helmets
  ('hel-1', 'Vortex Aero Helmet',       'PACELINE',     'helmets',     289,  null, 'new', 5,  current_date - 5,  true,  false),
  ('hel-2', 'Ventis Road Helmet',       'PACELINE',     'helmets',     179,  null, 'new', 21, current_date - 18, false, false),
  ('hel-3', 'Grimpeur SL Helmet',       'VELOCORE',     'helmets',     219,  null, 'new', 13, current_date - 1,  false, false),
  ('hel-4', 'Metro Commute Helmet',     'KROM',         'helmets',     95,   129,  'new', 40, current_date - 34, false, true),
  -- drivetrain
  ('drv-1', '12-Speed Race Chain',      'FERRUM WORKS', 'drivetrain',  62,   null, 'new', 33, current_date - 2,  false, false),
  ('drv-2', '11-30 Alloy Cassette',     'FERRUM WORKS', 'drivetrain',  148,  null, 'new', 14, current_date - 27, false, false),
  ('drv-3', 'Hollow Crankset 172.5',    'VELOCORE',     'drivetrain',  385,  null, 'new', 8,  current_date - 8,  false, false),
  ('drv-4', 'Rear Mech Cage Kit',       'ALTO LAB',     'drivetrain',  76,   98,   'new', 19, current_date - 33, false, true),
  -- nutrition
  ('nut-1', 'Race Gel — Box of 24',     'FUELHAUS',     'nutrition',   49,   null, 'new', 50, current_date,      false, false),
  ('nut-2', 'Electrolyte Mix 1kg',      'FUELHAUS',     'nutrition',   34,   null, 'new', 42, current_date - 5,  false, false),
  ('nut-3', 'Recovery Protein 2kg',     'FUELHAUS',     'nutrition',   58,   null, 'new', 28, current_date - 16, false, false),
  ('nut-4', 'Oat Ride Bars ×12',        'FUELHAUS',     'nutrition',   27,   null, 'new', 60, current_date - 1,  false, false),
  -- parts
  ('prt-1', 'Ceramic Bottom Bracket',   'ALTO LAB',     'parts',       189,  null, 'new', 10, current_date - 10, false, false),
  ('prt-2', 'Carbon Brake Pads',        'FERRUM WORKS', 'parts',       42,   null, 'new', 36, current_date - 4,  false, false),
  ('prt-3', 'Zero-Offset Seatpost',     'VELOCORE',     'parts',       210,  260,  'new', 7,  current_date - 30, false, true),
  ('prt-4', 'CNC Stem 100mm',           'KROM',         'parts',       129,  null, 'new', 16, current_date,      false, false),
  -- tyres
  ('tyr-1', '28c Tubeless Race Tyre',   'TREADLINE',    'tyres',       74,   null, 'new', 44, current_date - 2,  false, false),
  ('tyr-2', '25c Clincher Tyre',        'TREADLINE',    'tyres',       54,   null, 'new', 51, current_date - 19, false, false),
  ('tyr-3', '40c Gravel Tyre',          'TREADLINE',    'tyres',       68,   null, 'new', 25, current_date - 7,  false, false),
  ('tyr-4', 'TT Tubular 23c',           'TREADLINE',    'tyres',       96,   120,  'new', 12, current_date - 45, false, true),
  -- shoes
  ('sho-1', 'Podium Carbon Shoes',      'VELOCORE',     'shoes',       320,  null, 'new', 3,  current_date - 3,  true,  false),
  ('sho-2', 'Lace-Up Road Shoes',       'RIDGELINE',    'shoes',       145,  null, 'new', 20, current_date - 11, false, false),
  ('sho-3', 'Winter Road Boots',        'RIDGELINE',    'shoes',       189,  240,  'new', 8,  current_date - 60, false, true),
  ('sho-4', 'Track Sprint Shoes',       'VELOCORE',     'shoes',       275,  null, 'new', 5,  current_date - 1,  false, false),
  -- road bikes
  ('bik-1', 'SL9 Disc Race Bike',       'VELOCORE',     'road-bikes',  6800, null, 'new', 2,  current_date,      true,  false),
  ('bik-2', 'RC Pro Ultra Build',       'RIDGELINE',    'road-bikes',  4200, null, 'new', 3,  current_date - 14, false, false),
  ('bik-3', 'Alloy Crit Racer',         'FERRUM WORKS', 'road-bikes',  1950, null, 'new', 4,  current_date - 8,  false, false),
  ('bik-4', 'Endurance GT Disc',        'PACELINE',     'road-bikes',  2850, 3400, 'pre-owned', 1, current_date - 21, false, true),
  -- frame sets
  ('frm-1', 'SL9 Frameset',             'VELOCORE',     'frame-sets',  2900, null, 'new', 4,  current_date - 4,  false, false),
  ('frm-2', 'Track Frameset',           'FERRUM WORKS', 'frame-sets',  1450, null, 'new', 2,  current_date - 1,  false, false),
  ('frm-3', 'Steel Classic Frameset',   'FERRUM WORKS', 'frame-sets',  1150, null, 'new', 5,  current_date - 26, false, false),
  ('frm-4', 'TT Frameset',              'VELOCORE',     'frame-sets',  3200, 3900, 'pre-owned', 1, current_date - 39, false, true),
  -- components
  ('cmp-1', '50mm Carbon Wheelset',     'ALTO LAB',     'components',  1390, null, 'new', 6,  current_date - 6,  false, false),
  ('cmp-2', 'Dual-Side Power Meter',    'ALTO LAB',     'components',  649,  null, 'new', 9,  current_date - 2,  false, false),
  ('cmp-3', 'Integrated Aero Bar',      'VELOCORE',     'components',  420,  null, 'new', 12, current_date - 17, false, false),
  ('cmp-4', 'Ceramic Pulley Cage',      'ALTO LAB',     'components',  165,  null, 'new', 14, current_date,      false, false),
  -- bike maintenance
  ('mnt-1', 'Dry Lube 120ml',           'KROM',         'bike-maintenance', 14,  null, 'new', 80, current_date - 3,  false, false),
  ('mnt-2', 'Torque Wrench Set',        'KROM',         'bike-maintenance', 119, null, 'new', 22, current_date - 9,  false, false),
  ('mnt-3', 'Pro Repair Stand',         'KROM',         'bike-maintenance', 240, 310,  'new', 10, current_date - 28, false, true),
  ('mnt-4', 'Tubeless Sealant 1L',      'TREADLINE',    'bike-maintenance', 26,  null, 'new', 47, current_date - 1,  false, false)
on conflict (id) do nothing;
