-- ============================================================
-- MR.RIDER · Migration 09 · ADMIN CONTENT CONTROL
-- Depends on: 01 (shop), 03 (coaching), 04 (auction), 08 (is_super_admin)
--
-- Lets the superadmin manage every element of the site from the
-- /admin dashboard: products, categories, programs, coaches and
-- auction lots. Public visitors keep read-only access; only the
-- admin@mrrider.lk session can write.
-- ============================================================

-- PRODUCTS (Shop · Daily Listings · Clearance all feed from here)
create policy "admins insert products" on public.products
  for insert to authenticated with check (public.is_super_admin());
create policy "admins update products" on public.products
  for update to authenticated
  using (public.is_super_admin()) with check (public.is_super_admin());
create policy "admins delete products" on public.products
  for delete to authenticated using (public.is_super_admin());

-- CATEGORIES
create policy "admins insert categories" on public.categories
  for insert to authenticated with check (public.is_super_admin());
create policy "admins update categories" on public.categories
  for update to authenticated
  using (public.is_super_admin()) with check (public.is_super_admin());
create policy "admins delete categories" on public.categories
  for delete to authenticated using (public.is_super_admin());

-- TRAINING PROGRAMS
create policy "admins insert programs" on public.programs
  for insert to authenticated with check (public.is_super_admin());
create policy "admins update programs" on public.programs
  for update to authenticated
  using (public.is_super_admin()) with check (public.is_super_admin());
create policy "admins delete programs" on public.programs
  for delete to authenticated using (public.is_super_admin());

-- COACHES
create policy "admins insert coaches" on public.coaches
  for insert to authenticated with check (public.is_super_admin());
create policy "admins update coaches" on public.coaches
  for update to authenticated
  using (public.is_super_admin()) with check (public.is_super_admin());
create policy "admins delete coaches" on public.coaches
  for delete to authenticated using (public.is_super_admin());

-- AUCTION LOTS
create policy "admins insert lots" on public.auction_lots
  for insert to authenticated with check (public.is_super_admin());
create policy "admins update lots" on public.auction_lots
  for update to authenticated
  using (public.is_super_admin()) with check (public.is_super_admin());
create policy "admins delete lots" on public.auction_lots
  for delete to authenticated using (public.is_super_admin());
