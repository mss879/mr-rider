-- ============================================================
-- MR.RIDER · Migration 19 · IMPORTED BRANDS GO IN THE DIRECTORY
--
-- Migration 17 registered the 79 brands that arrived with the
-- supplier catalogue as in_directory = false, so someone could
-- decide whether they belonged on /brands before they appeared
-- there. That decision is made: they all carry stock, so they
-- all show.
--
-- The storefront reads its brand list from src/lib/taxonomy.ts,
-- not from this table, and those 79 entries have been added
-- there too. This keeps the database saying the same thing as
-- the code rather than quietly disagreeing with it.
--
-- The house label stays out of the client directory listing —
-- that is what brands.house is for, and /brands renders it in
-- its own block.
--
-- Depends on: 12_category_restructure.sql, 17_spoken_catalogue_import.sql.
-- Idempotent: safe to run more than once.
-- ============================================================

begin;

update public.brands b
set in_directory = true
where b.in_directory = false
  and exists (select 1 from public.products p where p.brand = b.slug);

commit;

-- ------------------------------------------------------------
-- After running
--
--   Expect 0 — every brand holding stock is now listed:
--     select count(*) from public.brands b
--     where b.in_directory = false
--       and exists (select 1 from public.products p where p.brand = b.slug);
--
--   Brands carrying no stock (left hidden on purpose, and none
--   are expected from the import):
--     select slug, name from public.brands b
--     where not exists (select 1 from public.products p where p.brand = b.slug)
--     order by slug;
--
--   What the directory now holds:
--     select count(*) from public.brands where in_directory and not house;
-- ------------------------------------------------------------
