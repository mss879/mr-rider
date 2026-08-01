-- ============================================================
-- MR.RIDER · Migration 11 · MEMBERSHIP APPLICATIONS + CLIENTS
-- Depends on: 08 (is_super_admin)
--
-- The /apply form writes to membership_applications (name, email,
-- phone, interest, "why should we let you in"). The admin reviews
-- every answer in the Applications tab. Approving an application
-- creates a CLIENT PROFILE (clients table) carrying the client's
-- name and interest. The contact page stays separate — its
-- messages show under the Enquiries tab.
-- ============================================================

create table if not exists public.membership_applications (
  id          bigint generated always as identity primary key,
  name        text not null check (char_length(name) between 1 and 200),
  email       text not null check (email ~ '^\S+@\S+\.\S+$'),
  phone       text not null check (char_length(phone) between 5 and 40),
  interest    text not null default '',
  message     text not null check (char_length(message) between 1 and 5000),
  status      text not null default 'new' check (status in ('new', 'approved', 'rejected')),
  created_at  timestamptz not null default now()
);

alter table public.membership_applications enable row level security;

-- Anyone may apply; only the admin may read or decide.
create policy "anyone can apply" on public.membership_applications
  for insert to anon, authenticated
  with check (true);

create policy "admins read applications" on public.membership_applications
  for select to authenticated using (public.is_super_admin());

create policy "admins update applications" on public.membership_applications
  for update to authenticated
  using (public.is_super_admin()) with check (public.is_super_admin());

-- ---------- client profiles (created on approval) ----------
create table if not exists public.clients (
  id              uuid primary key default gen_random_uuid(),
  application_id  bigint unique references public.membership_applications(id) on delete set null,
  name            text not null,
  email           text not null,
  phone           text not null default '',
  interest        text not null default '',
  status          text not null default 'active' check (status in ('active', 'suspended')),
  created_at      timestamptz not null default now()
);

alter table public.clients enable row level security;

create policy "admins read clients" on public.clients
  for select to authenticated using (public.is_super_admin());
create policy "admins insert clients" on public.clients
  for insert to authenticated with check (public.is_super_admin());
create policy "admins update clients" on public.clients
  for update to authenticated
  using (public.is_super_admin()) with check (public.is_super_admin());
create policy "admins delete clients" on public.clients
  for delete to authenticated using (public.is_super_admin());

-- ---------- atomic approval ----------
-- Creates the client profile from the application (once) and marks
-- the application approved. Called by the admin dashboard.
create or replace function public.approve_application(app_id bigint)
returns uuid
language plpgsql
security definer
set search_path = public
as $$
declare
  v_app    public.membership_applications;
  v_client uuid;
begin
  if not public.is_super_admin() then
    raise exception 'only the club admin can approve applications';
  end if;

  select * into v_app from public.membership_applications where id = app_id;
  if not found then
    raise exception 'application % not found', app_id;
  end if;

  select id into v_client from public.clients where application_id = app_id;
  if v_client is null then
    insert into public.clients (application_id, name, email, phone, interest)
    values (v_app.id, v_app.name, v_app.email, v_app.phone, v_app.interest)
    returning id into v_client;
  end if;

  update public.membership_applications
  set status = 'approved'
  where id = app_id;

  return v_client;
end;
$$;
