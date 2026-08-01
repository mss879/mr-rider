-- ============================================================
-- MR.RIDER · Migration 02 · DAILY LISTINGS
-- Menu item: /daily-listings
-- Depends on: 01_shop_products.sql
--
-- Daily listings are a live window over the products table:
-- everything listed today or yesterday. New rows inserted into
-- products with listed_at = current_date appear here instantly.
-- ============================================================

create or replace view public.daily_listings
with (security_invoker = on) as
  select *
  from public.products
  where listed_at >= current_date - 1;

comment on view public.daily_listings is
  'Menu item: Daily Listings. Products listed today or yesterday. security_invoker keeps products'' RLS in force.';

-- ------------------------------------------------------------
-- Demo tip: the seed dates in migration 01 are fixed on the day
-- you run it. To refresh the demo drop later, re-run:
--
--   update public.products set listed_at = current_date
--     where id in ('acc-2','app-1','nut-1','prt-4','bik-1','cmp-4');
--   update public.products set listed_at = current_date - 1
--     where id in ('app-4','hel-3','nut-4','sho-4','frm-2','mnt-4');
-- ------------------------------------------------------------
