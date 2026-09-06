-- ============================================================
-- MR.RIDER · Migration 17 · CATALOGUE — FILE 10 OF 10 · VERIFY
--
-- Read-only. Run this last to confirm the import landed whole.
-- ============================================================

-- Expect 1423.
select count(*) as products from public.products;

-- Expect all eleven aisles.
select c.name as aisle, count(*) as products, count(distinct p.subcategory) as types
from public.products p
join public.categories c on c.slug = p.category
group by c.name, c.sort_order order by c.sort_order;

-- Expect no rows: a product filed against a type that does not exist.
select p.id, p.category, p.subcategory
from public.products p
left join public.subcategories s on s.slug = p.subcategory
where s.slug is null;

-- Expect no rows: a product whose type belongs to a different aisle.
select p.id, p.category, p.subcategory
from public.products p
join public.subcategories s on s.slug = p.subcategory
where s.category_slug <> p.category;

-- Expect no rows: a brand that was never registered.
select p.id, p.brand
from public.products p
left join public.brands b on b.slug = p.brand
where b.slug is null;

-- Expect 1417 — the rest have no photography on the supplier site.
select count(*) as with_photos from public.products where images <> '{}';

-- The Clearance Market. Expect 159.
select count(*) as clearance from public.clearance_items;

-- BUG-03 tripwire. The checks above only prove a product's TYPE matches its
-- AISLE — they cannot see a product filed consistently but wrongly, which is
-- how seven framesets, two shoes and a bag of derailleur hangers ended up in
-- Road Bikes. Expect no rows AFTER 22_road_bikes_frameset_refile.sql; before
-- it, expect seven. Read the copy before moving anything: 'BMC Speedmachine
-- 01 FOUR' and 'Diverge STR Expert' say "frameset" in their description and
-- are complete bikes.
select p.id, p.name
from public.products p
where p.category = 'road-bikes' and p.name ilike '%frameset%'
order by p.id;
