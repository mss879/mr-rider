-- ============================================================
-- MR.RIDER · Migration 08 · SUPERADMIN
-- Depends on: 07_membership_gate.sql
--
-- The club is run by one superadmin: admin@mrrider.lk
-- Membership approvals are handled by this account.
--
-- HOW TO CREATE THE ADMIN USER (SQL cannot set passwords safely):
--   Supabase dashboard → Authentication → Users → Add user
--   → email: admin@mrrider.lk → set a strong password.
-- The trigger below flags that account as superadmin the moment
-- it is created (and the backfill at the bottom covers the case
-- where it already exists).
-- ============================================================

-- Keep the member's email on the profile so the admin panel can
-- list applications without joining auth.users.
alter table public.profiles add column if not exists email text not null default '';

-- Recreate the sign-up trigger: copy the email across and
-- auto-promote the superadmin account.
create or replace function public.handle_new_user()
returns trigger
language plpgsql
security definer
set search_path = public
as $$
begin
  insert into public.profiles (id, full_name, email, is_admin)
  values (
    new.id,
    coalesce(new.raw_user_meta_data ->> 'full_name', ''),
    coalesce(new.email, ''),
    coalesce(new.email, '') = 'admin@mrrider.lk'
  );
  return new;
end;
$$;

-- Security-definer helper so admin policies never recurse into
-- profiles' own RLS.
create or replace function public.is_super_admin()
returns boolean
language sql
security definer
set search_path = public
stable
as $$
  select coalesce(
    (select is_admin from public.profiles where id = auth.uid()),
    false
  );
$$;

-- Admin powers: see every profile, approve / reject applications.
-- (Members can still only read their own row — policy from 07.)
create policy "admins read all profiles" on public.profiles
  for select to authenticated
  using (public.is_super_admin());

create policy "admins update profiles" on public.profiles
  for update to authenticated
  using (public.is_super_admin())
  with check (public.is_super_admin());

-- Admins may also read contact messages (membership applications)
-- through the API once the admin panel ships.
create policy "admins read messages" on public.contact_messages
  for select to authenticated
  using (public.is_super_admin());

-- Backfill: if admin@mrrider.lk was created BEFORE this migration
-- ran, promote it now.
update public.profiles p
set is_admin = true,
    email    = u.email
from auth.users u
where p.id = u.id
  and u.email = 'admin@mrrider.lk';

-- ------------------------------------------------------------
-- Approving a member (until the admin panel UI ships):
--   update public.profiles set status = 'active' where email = 'rider@example.com';
-- Rejecting:
--   update public.profiles set status = 'rejected' where email = 'rider@example.com';
-- ------------------------------------------------------------
