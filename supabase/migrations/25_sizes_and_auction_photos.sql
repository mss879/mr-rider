-- ============================================================
-- MR.RIDER · Migration 25 · SIZES, AUCTION PHOTOS, AUCTION CURRENCY
--
-- Three client requests:
--
--   1. Sizes with their own stock. Bikes, helmets and shoes come in
--      sizes, and "Stock on hand: 3" does not say which. Products get a
--      `variants` list — [{"size": "54", "stock": 1}, ...] — that the
--      admin fills in by hand. When a product has sizes, its `stock` is
--      the total of them, worked out here by a trigger, so every page
--      that already reads `stock` (In stock / N left / Out of stock,
--      and the menu hiding empty aisles) keeps working unchanged.
--      Products without sizes are untouched and keep a plain stock count.
--
--   2. Photos on auction lots — up to 5, like products. They go in the
--      existing public `product-images` bucket (migration 13), in
--      folders named auction-<lot id>, so no new bucket or storage
--      policy is needed: the admin can already upload there.
--
--   3. Auction prices in LKR, with a currency picker per lot. Every
--      existing lot is set to LKR; the amounts are NOT converted — edit
--      each lot's current bid in /admin → Auction if they were entered
--      in another currency.
--
-- Depends on: 04 (auction), 13 (product images), 20 (views).
-- Idempotent: safe to run more than once. Deletes nothing.
-- ============================================================

begin;

-- ------------------------------------------------------------
-- PART 1 · Product sizes
-- ------------------------------------------------------------

alter table public.products
  add column if not exists variants jsonb not null default '[]'::jsonb;

comment on column public.products.variants is
  'Sizes, each with its own stock: [{"size": "54", "stock": 1}, ...]. Empty = no sizes. When not empty, products.stock is the total (trigger products_variants_sync).';

do $$
begin
  if not exists (
    select 1 from pg_constraint
    where conrelid = 'public.products'::regclass
      and conname = 'products_variants_is_array'
  ) then
    alter table public.products
      add constraint products_variants_is_array
      check (jsonb_typeof(variants) = 'array');
  end if;
end $$;

-- Tidies whatever the form sends — trims sizes, drops blank ones, turns
-- the stock into a whole number of 0 or more — then sets the product's
-- stock to the total. A product with no sizes keeps the stock it was given.
create or replace function public.products_variants_sync()
returns trigger
language plpgsql
set search_path = public
as $$
declare
  clean jsonb;
begin
  if new.variants is null or jsonb_typeof(new.variants) <> 'array' then
    new.variants := '[]'::jsonb;
  end if;

  select coalesce(
           jsonb_agg(jsonb_build_object('size', s, 'stock', q) order by ord),
           '[]'::jsonb
         )
  into clean
  from (
    select
      left(btrim(e->>'size'), 40) as s,
      greatest(0, least(100000, coalesce(
        case
          when jsonb_typeof(e->'stock') = 'number' then floor((e->>'stock')::numeric)::int
          when btrim(e->>'stock') ~ '^[0-9]{1,6}$' then btrim(e->>'stock')::int
        end,
        0))) as q,
      ord
    from jsonb_array_elements(new.variants) with ordinality as t(e, ord)
    where jsonb_typeof(e) = 'object'
      and nullif(btrim(e->>'size'), '') is not null
  ) x;

  new.variants := clean;

  if jsonb_array_length(clean) > 0 then
    select coalesce(sum((e->>'stock')::int), 0)
    into new.stock
    from jsonb_array_elements(clean) e;
  end if;

  return new;
end;
$$;

drop trigger if exists products_variants_sync on public.products;
create trigger products_variants_sync
  before insert or update on public.products
  for each row execute function public.products_variants_sync();

-- The two views are `select *`, and Postgres fixes a view's column list
-- when it is created, so they are recreated to carry the new column.
-- Same definitions as migration 20.
create or replace view public.daily_listings
with (security_invoker = on) as
  select *
  from public.products
  where daily_listing = true
    and listed_at >= current_date - 1;

comment on view public.daily_listings is
  'Menu item: Daily Listings. Opted-in products listed today or yesterday. security_invoker keeps products'' RLS in force.';

create or replace view public.clearance_items
with (security_invoker = on) as
  select * from public.products where clearance = true;

-- ------------------------------------------------------------
-- PART 2 · Auction photos
-- ------------------------------------------------------------

alter table public.auction_lots
  add column if not exists images text[] not null default '{}';

comment on column public.auction_lots.images is
  'Up to 5 lot photos — object paths in the product-images bucket (auction-<lot id>/...), or absolute URLs. images[1] is the main shot.';

do $$
begin
  if not exists (
    select 1 from pg_constraint
    where conrelid = 'public.auction_lots'::regclass
      and conname = 'auction_lots_images_max_5'
  ) then
    alter table public.auction_lots
      add constraint auction_lots_images_max_5
      check (coalesce(array_length(images, 1), 0) <= 5);
  end if;
end $$;

-- ------------------------------------------------------------
-- PART 3 · Auction currency
-- ------------------------------------------------------------

alter table public.auction_lots
  add column if not exists currency text not null default 'LKR';

comment on column public.auction_lots.currency is
  'ISO 4217 code the current bid is shown in. LKR unless the admin picks another.';

do $$
begin
  if not exists (
    select 1 from pg_constraint
    where conrelid = 'public.auction_lots'::regclass
      and conname = 'auction_lots_currency_code'
  ) then
    alter table public.auction_lots
      add constraint auction_lots_currency_code
      check (currency ~ '^[A-Z]{3}$');
  end if;
end $$;

-- Rupee amounts run to seven figures; numeric(10,2) tops out just under
-- 100 million, which is fine, but bids are whole rupees in practice and
-- the extra headroom costs nothing.
alter table public.auction_lots alter column current_bid type numeric(14,2);
alter table public.auction_bids alter column amount type numeric(14,2);

commit;

-- ============================================================
-- Check it landed (run these after — 1 row, 2 rows, 1 row):
--
--   select column_name from information_schema.columns
--    where table_name = 'products' and column_name = 'variants';
--
--   select column_name from information_schema.columns
--    where table_name = 'auction_lots' and column_name in ('images', 'currency');
--
--   select tgname from pg_trigger where tgname = 'products_variants_sync';
-- ============================================================
