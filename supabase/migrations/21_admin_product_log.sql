-- ============================================================
-- MR.RIDER · Migration 21 · ADMIN PRODUCT LOG (QA handoff BE-01)
--
-- The admin's Products tab used to fetch every row and render all of
-- them. At 1,400+ products that is the tab nobody opens. It is now a
-- LOG: an ILIKE search box, a "Date listed" sort picker, and 50 rows
-- a page — all three answered by Postgres rather than the browser.
--
-- This file is the index work that keeps those three fast. NOTHING
-- HERE IS REQUIRED FOR THE FEATURE TO WORK: without it the planner
-- sequential-scans the table, which at today's row count costs single
-- -digit milliseconds. Run it anyway — a search box fires a query per
-- keystroke, and the catalogue only grows.
--
--   PART 1  pg_trgm, so `ILIKE '%bar tape%'` can use an index at all.
--   PART 2  trigram indexes on the four searched columns.
--   PART 3  composite indexes matching the sort picker's orderings.
--
-- Depends on: 01 (products), 12 (subcategory), 20 (sort_position).
-- Idempotent: safe to run more than once.
-- Non-breaking: adds indexes only. No column, view, policy or row is
-- touched, so it can be run against a live database at any time and
-- needs no coordination with a deploy.
-- ============================================================

begin;

-- ============================================================
-- PART 1 · Trigram matching
--
-- The search is a CONTAINS search — an admin types "domane" to find
-- "Trek Domane SL6 Frameset". A leading wildcard means a btree index
-- is useless: btrees are ordered by prefix, and `%domane%` has no
-- prefix to seek on, so the planner has no choice but to read every
-- row. pg_trgm indexes the three-character shingles of a string
-- instead, which is what makes the middle of a value findable.
--
-- Schema: Supabase keeps extensions in `extensions`, not `public`.
-- Installing into `public` works but puts operator classes in the
-- same namespace as the app's own objects, which the Supabase linter
-- flags. If pg_trgm is already installed anywhere, this is a no-op.
-- ============================================================

create extension if not exists pg_trgm with schema extensions;

-- ============================================================
-- PART 2 · Indexes for the search box
--
-- Four columns, matching SEARCH_COLUMNS in
-- src/components/admin/AdminProducts.tsx. Keep the two lists in step:
-- adding a column there without an index here is what turns the
-- search box back into a table scan.
--
-- `description` is deliberately absent from both. Searching inside
-- long copy makes "carbon" match half the shop, and the trigram index
-- for it would be the largest object in the database.
--
-- gin over gist: this is a read-mostly catalogue where lookup speed
-- matters and write amplification does not.
--
-- The operator class `gin_trgm_ops` has to be reachable on the
-- search_path, and where that is depends on which schema PART 1 (or
-- an earlier install) put the extension in — hence the lookup rather
-- than a hardcoded `extensions.gin_trgm_ops`.
-- ============================================================

do $$
declare
  v_schema text;
begin
  select n.nspname into v_schema
  from pg_extension e
  join pg_namespace n on n.oid = e.extnamespace
  where e.extname = 'pg_trgm';

  if v_schema is null then
    raise notice 'pg_trgm not installed — skipping trigram indexes. The admin search still works, it just scans the table.';
    return;
  end if;

  execute format('set local search_path = public, %I', v_schema);

  execute 'create index if not exists products_name_trgm_idx
             on public.products using gin (name gin_trgm_ops)';
  execute 'create index if not exists products_brand_trgm_idx
             on public.products using gin (brand gin_trgm_ops)';
  execute 'create index if not exists products_subcategory_trgm_idx
             on public.products using gin (subcategory gin_trgm_ops)';
  -- id is the slug an admin copies out of a URL or an inquiry thread.
  execute 'create index if not exists products_id_trgm_idx
             on public.products using gin (id gin_trgm_ops)';
end $$;

-- ============================================================
-- PART 3 · Indexes for the sort picker
--
-- Every ordering the picker offers ends `, id asc`. That tie-break is
-- not decoration: two products listed on the same day have no defined
-- order without it, so Postgres is free to return them differently on
-- each query — and with 50-row pages that means a row can appear on
-- both page 3 and page 4, or on neither. The indexes carry the same
-- two columns so the ordering is read off the index rather than sorted.
--
-- Only the DESCENDING variants are built. Postgres can walk a btree
-- backwards, so `(listed_at desc, id asc)` also answers
-- `order by listed_at asc, id desc` — but not the mixed
-- `listed_at asc, id asc` the "oldest" option asks for. At this row
-- count that residual sort is cheaper than a second index to maintain
-- on every write; revisit if the catalogue passes six figures.
--
-- Not created here, because they already exist:
--   · products_listed_at_idx     (listed_at desc)         — 01
--   · products_brand_idx         (brand)                  — 12
--   · products_sort_position_idx (sort_position nulls last,
--                                 created_at desc)        — 20, and
--     its leading column is what the "Club running order" option sorts
--     on, so that ordering is already covered.
-- ============================================================

create index if not exists products_listed_at_id_idx
  on public.products (listed_at desc, id);

create index if not exists products_created_at_id_idx
  on public.products (created_at desc, id);

create index if not exists products_name_id_idx
  on public.products (name, id);

commit;

-- ------------------------------------------------------------
-- After running
--
--   · /admin → Products has a search box, a sort picker and pages.
--   · Confirm the search is index-backed rather than scanning
--     (look for "Bitmap Index Scan on products_name_trgm_idx"):
--
--       explain analyze
--       select * from public.products
--       where name ilike '%domane%' or brand ilike '%domane%'
--          or subcategory ilike '%domane%' or id ilike '%domane%'
--       order by listed_at desc, id
--       limit 50;
--
--     A "Seq Scan" here is not a failure — it is the planner deciding
--     the whole table is cheaper than the index, which is the right
--     call on a small catalogue. It will switch over as rows grow.
--
--   · Size of what this added:
--
--       select indexrelname, pg_size_pretty(pg_relation_size(indexrelid))
--       from pg_stat_user_indexes
--       where relname = 'products' order by 1;
--
-- To undo (nothing else depends on any of these):
--
--   drop index if exists public.products_name_trgm_idx,
--                        public.products_brand_trgm_idx,
--                        public.products_subcategory_trgm_idx,
--                        public.products_id_trgm_idx,
--                        public.products_listed_at_id_idx,
--                        public.products_created_at_id_idx,
--                        public.products_name_id_idx;
-- ------------------------------------------------------------
