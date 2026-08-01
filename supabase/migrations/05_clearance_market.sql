-- ============================================================
-- MR.RIDER · Migration 05 · CLEARANCE MARKET
-- Menu item: /clearance
-- Depends on: 01_shop_products.sql
--
-- Clearance is a live window over products: everything flagged
-- clearance = true with a compare_at price. Flag any product and
-- it appears on /clearance with the discount badge automatically.
-- ============================================================

create or replace view public.clearance_items
with (security_invoker = on) as
  select *
  from public.products
  where clearance = true
    and compare_at is not null;

comment on view public.clearance_items is
  'Menu item: MR.Rider Clearance Market. Products flagged clearance with a compare_at price; frontend sorts by biggest discount.';
