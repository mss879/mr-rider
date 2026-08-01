-- ============================================================
-- MR.RIDER · Migration 07 · MEMBERSHIP GATE (prep)
-- The club-entry model: sign up → pay dues → admin approval.
-- Depends on: nothing — can run standalone
--
-- This file preps the schema for the login phase. The frontend
-- auth UI (sign-up, sign-in, member dashboard, admin approval)
-- ships in the next build; running this now costs nothing and
-- means zero schema changes later.
-- ============================================================

create type public.membership_status as enum ('pending', 'paid', 'active', 'rejected');

create table if not exists public.profiles (
  id          uuid primary key references auth.users(id) on delete cascade,
  full_name   text not null default '',
  rides       text not null default '',   -- "what do you ride" from the application
  status      public.membership_status not null default 'pending',
  is_admin    boolean not null default false,
  created_at  timestamptz not null default now()
);

alter table public.profiles enable row level security;

-- Members see only their own profile. Status and is_admin changes are
-- made by the club admin via the Supabase dashboard (or a service-role
-- admin panel in the next phase) — there is deliberately no update
-- policy here, so users cannot approve themselves.
create policy "read own profile" on public.profiles
  for select to authenticated
  using ((select auth.uid()) = id);

-- Auto-create a profile row whenever someone signs up.
create or replace function public.handle_new_user()
returns trigger
language plpgsql
security definer
set search_path = public
as $$
begin
  insert into public.profiles (id, full_name)
  values (new.id, coalesce(new.raw_user_meta_data ->> 'full_name', ''));
  return new;
end;
$$;

drop trigger if exists on_auth_user_created on auth.users;
create trigger on_auth_user_created
  after insert on auth.users
  for each row execute function public.handle_new_user();

-- ------------------------------------------------------------
-- WHEN THE GATE GOES LIVE (next phase), replace the public read
-- policies from migration 01 with members-only versions, e.g.:
--
--   drop policy "public read products" on public.products;
--   create policy "members read products" on public.products
--     for select to authenticated
--     using (exists (
--       select 1 from public.profiles pr
--       where pr.id = (select auth.uid()) and pr.status = 'active'
--     ));
--
-- Same pattern for categories, coaches, programs and auction_lots.
-- ------------------------------------------------------------
