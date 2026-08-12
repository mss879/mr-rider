-- ============================================================
-- MR.RIDER · Migration 15 · PRICING RETIRED
--
-- The client does not want prices on the floor. The storefront no
-- longer renders a price, filters or sorts by one, or shows a
-- discount badge, and /admin no longer asks for one — riders open
-- an inquiry instead (migration 14).
--
-- The columns are DELIBERATELY LEFT IN PLACE. Nothing is dropped,
-- so historic figures survive and the decision is reversible; they
-- are simply no longer supplied or shown. This migration only
-- clears the two things that would otherwise break once prices
-- stop being entered:
--
--   1. products.price is NOT NULL — an insert without a price
--      would fail. It now defaults to 0.
--   2. clearance_items only listed rows that had a compare-at
--      price — with no prices the Clearance Market would empty
--      out. It now follows the clearance flag alone.
--
-- RUN THIS BEFORE DEPLOYING THE PRICE-FREE BUILD. The admin product
-- form no longer sends a price, and products.price is NOT NULL with no
-- default until PART 1 below — so on the old schema every "Add new
-- product" save fails with a not-null violation on a column the form
-- does not show.
--
-- Re-running 05, 12 or 13 puts the old clearance_items definition back
-- (they all create it with `compare_at is not null`), which empties the
-- Clearance Market. Re-run this file afterwards.
--
-- Depends on: 01_shop_products.sql (products + clearance_items).
-- Idempotent: safe to run more than once.
-- ============================================================

begin;

-- ============================================================
-- PART 1 · Stock can be added without a price
-- ============================================================

alter table public.products alter column price set default 0;

comment on column public.products.price is
  'RETIRED — the storefront shows no prices and /admin no longer asks for one. Kept for historic rows; defaults to 0.';

comment on column public.products.compare_at is
  'RETIRED — was the sale strike-through. No longer entered or rendered; the clearance flag alone drives the Clearance Market.';

-- ============================================================
-- PART 2 · Clearance follows the flag, not the discount
--
-- Was: clearance = true AND compare_at is not null.
-- ============================================================

create or replace view public.clearance_items
with (security_invoker = on) as
  select * from public.products where clearance = true;

comment on view public.clearance_items is
  'Clearance Market / Sale. Driven by products.clearance only — there are no prices to discount from.';

commit;

-- ------------------------------------------------------------
-- After running
--   · Add stock with no price at all (any live category slug — run 16
--     first if you want to file it under road-bikes / framesets):
--       insert into public.products (id, name, brand, category, subcategory, stock, listed_at)
--       values ('cmp-99', 'Dura-Ace Chainring 54T', 'shimano',
--               'components', 'chainrings-spiders', 1, current_date);
--   · Put an item in the Clearance Market with just the flag:
--       update public.products set clearance = true where id = 'cmp-99';
--
--   Rolling pricing back on is a UI change, not a data one — the
--   figures already stored are untouched:
--     select id, name, price, compare_at from public.products
--     where price > 0 order by id;
--
-- ONE THING THIS DOES NOT DO
--   The old figures stay readable through the public API. RLS filters
--   rows, not columns, so anyone holding the anon key (it ships in the
--   browser bundle) can still ask for them:
--     https://<project>.supabase.co/rest/v1/products?select=name,price
--   Column-level REVOKE is not a fix on its own: /admin reads products
--   with select *, and the admin session is just another `authenticated`
--   user, so revoking there breaks the back office too.
--   If the client wants the numbers gone rather than merely hidden,
--   run this once — it is destructive and deliberately not automatic:
--     -- update public.products set price = 0, compare_at = null;
-- ------------------------------------------------------------
