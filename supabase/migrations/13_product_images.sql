-- ============================================================
-- MR.RIDER · Migration 13 · PRODUCT IMAGES
--
-- Adds photography to the catalog: a public Storage bucket for the
-- files and a products.images column holding up to five entries per
-- product. images[1] is the card shot; the rest are gallery/hover
-- images. Admins upload from /admin → Products.
--
-- Each entry is normally a bucket object path ('rbf-1/8f2c….webp').
-- A full https:// URL is also accepted, so an externally hosted
-- image can be pasted in without being re-uploaded.
--
-- Depends on: 01_shop_products.sql (products), 08_superadmin.sql
--             (is_super_admin, for the write policies).
-- Idempotent: safe to run more than once.
-- ============================================================

begin;

-- ============================================================
-- PART 1 · products.images (max 5)
-- ============================================================

alter table public.products
  add column if not exists images text[] not null default '{}';

comment on column public.products.images is
  'Up to 5 product photos. Bucket object paths in product-images, or absolute URLs. images[1] is the primary/card image.';

do $$
begin
  if not exists (
    select 1 from pg_constraint
    where conrelid = 'public.products'::regclass
      and conname = 'products_images_max_5'
  ) then
    -- array_length is NULL for an empty array, hence the coalesce.
    alter table public.products
      add constraint products_images_max_5
      check (coalesce(array_length(images, 1), 0) <= 5);
  end if;
end $$;

-- The catalog views were created with select *, so refresh them to
-- expose the new column.
create or replace view public.daily_listings
with (security_invoker = on) as
  select * from public.products where listed_at >= current_date - 1;

create or replace view public.clearance_items
with (security_invoker = on) as
  select * from public.products where clearance = true and compare_at is not null;

-- ============================================================
-- PART 2 · The storage bucket
--
-- public = true so product photos are served straight from the CDN
-- without signed URLs. Uploading still requires the admin session
-- (PART 3) — public only affects reads.
-- ============================================================

insert into storage.buckets (id, name, public, file_size_limit, allowed_mime_types)
values (
  'product-images',
  'product-images',
  true,
  5242880,                                  -- 5 MB per file
  array['image/jpeg', 'image/png', 'image/webp', 'image/avif']
)
on conflict (id) do update set
  public            = excluded.public,
  file_size_limit   = excluded.file_size_limit,
  allowed_mime_types = excluded.allowed_mime_types;

-- ============================================================
-- PART 3 · Bucket access
--
-- Anyone may read; only the superadmin may add, replace or delete.
-- ============================================================

drop policy if exists "public read product images" on storage.objects;
create policy "public read product images" on storage.objects
  for select
  using (bucket_id = 'product-images');

do $$
begin
  if to_regprocedure('public.is_super_admin()') is null then
    raise notice 'public.is_super_admin() not found — skipping admin upload policies (run 08_superadmin.sql, then re-run this file).';
    return;
  end if;

  execute 'drop policy if exists "admins upload product images" on storage.objects';
  execute $p$
    create policy "admins upload product images" on storage.objects
      for insert to authenticated
      with check (bucket_id = 'product-images' and public.is_super_admin())
  $p$;

  execute 'drop policy if exists "admins update product images" on storage.objects';
  execute $p$
    create policy "admins update product images" on storage.objects
      for update to authenticated
      using (bucket_id = 'product-images' and public.is_super_admin())
      with check (bucket_id = 'product-images' and public.is_super_admin())
  $p$;

  execute 'drop policy if exists "admins delete product images" on storage.objects';
  execute $p$
    create policy "admins delete product images" on storage.objects
      for delete to authenticated
      using (bucket_id = 'product-images' and public.is_super_admin())
  $p$;
end $$;

commit;

-- ------------------------------------------------------------
-- After running
--   · /admin → Products → Edit shows an image field: pick up to 5
--     files, reorder with ← →, first one is the card shot.
--   · Removing an image deletes the file from the bucket when you
--     press Save; pressing Cancel throws away anything uploaded
--     during that edit instead. Deleting a product deletes its files.
--   · Products with no images keep the hatched placeholder.
--
--   Check what is stored:
--     select id, name, array_length(images, 1) as photos
--     from public.products where images <> '{}' order by id;
--
--   Find bucket files no row points at (orphans):
--     select o.name
--     from storage.objects o
--     where o.bucket_id = 'product-images'
--       and not exists (
--         select 1 from public.products p where o.name = any(p.images)
--       );
-- ------------------------------------------------------------
