-- ============================================================
-- MR.RIDER · Migration 20 · CLIENT CHANGE REQUESTS
--
-- Everything the club asked for that needs a column behind it:
--
--   PART 1  membership_applications — the "why" becomes a chosen
--           reason plus optional notes, and the form now collects a
--           shipping-standard address and a photo of the applicant.
--   PART 2  clients — the same fields, carried across on approval.
--   PART 3  inquiries.language — Sinhala or English, chosen by the
--           rider, used to route the thread to the right person.
--   PART 4  products.daily_listing — Daily Listings becomes opt-in
--           instead of "anything listed in the last two days".
--           products.sort_position — manual running order, newest
--           first for anything left unnumbered.
--   PART 5  applicant-photos — private bucket for PART 1's photo.
--
-- Depends on: 01 (products), 11 (applications + clients +
--             approve_application), 14 (inquiries), 08 (is_super_admin).
-- Idempotent: safe to run more than once.
-- ============================================================

begin;

-- ============================================================
-- PART 1 · Membership applications
--
-- `message` was the free-text "why should we let you in", and was
-- required. It becomes an OPTIONAL notes box sitting under a required
-- `reason` picked from a fixed list, so the admin can compare
-- applications instead of reading six paragraphs each.
--
-- The old NOT-NULL-and-non-empty check has to go for that to work.
-- Existing rows keep their text; nothing is rewritten.
-- ============================================================

alter table public.membership_applications
  add column if not exists reason        text not null default '',
  add column if not exists address_line1 text not null default '',
  add column if not exists address_line2 text not null default '',
  add column if not exists city          text not null default '',
  add column if not exists state         text not null default '',
  add column if not exists postal_code   text not null default '',
  -- ISO 3166-1 alpha-2. A code rather than a display name so the value
  -- survives translation and matches what a courier's API expects.
  add column if not exists country       text not null default '',
  -- Object path in the applicant-photos bucket (PART 5), never a URL.
  add column if not exists photo_path    text not null default '';

alter table public.membership_applications
  alter column message set default '';

do $$
begin
  -- Named by Postgres from the inline CHECK in migration 11.
  alter table public.membership_applications
    drop constraint if exists membership_applications_message_check;

  if not exists (
    select 1 from pg_constraint
    where conrelid = 'public.membership_applications'::regclass
      and conname = 'membership_applications_message_len'
  ) then
    alter table public.membership_applications
      add constraint membership_applications_message_len
      check (char_length(message) <= 5000);
  end if;

  if not exists (
    select 1 from pg_constraint
    where conrelid = 'public.membership_applications'::regclass
      and conname = 'membership_applications_country_code'
  ) then
    -- '' stays legal so migration-11 rows remain valid.
    alter table public.membership_applications
      add constraint membership_applications_country_code
      check (country = '' or country ~ '^[A-Z]{2}$');
  end if;
end $$;

comment on column public.membership_applications.reason is
  'Chosen from a fixed list in src/lib/applications.ts. message is now optional free-text under it.';
comment on column public.membership_applications.country is
  'ISO 3166-1 alpha-2, or empty for rows predating migration 20.';

-- ============================================================
-- PART 2 · Client profiles carry the same detail
--
-- The address and photo are the point of collecting them — they have
-- to survive approval, or the admin has to go back to the application
-- every time they want to ship something.
-- ============================================================

alter table public.clients
  add column if not exists reason        text not null default '',
  add column if not exists address_line1 text not null default '',
  add column if not exists address_line2 text not null default '',
  add column if not exists city          text not null default '',
  add column if not exists state         text not null default '',
  add column if not exists postal_code   text not null default '',
  add column if not exists country       text not null default '',
  add column if not exists photo_path    text not null default '';

-- Same body as migration 11, plus the new columns. Still the only way
-- an application becomes a client, and still admin-only.
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
    insert into public.clients (
      application_id, name, email, phone, interest, reason,
      address_line1, address_line2, city, state, postal_code, country,
      photo_path
    )
    values (
      v_app.id, v_app.name, v_app.email, v_app.phone, v_app.interest, v_app.reason,
      v_app.address_line1, v_app.address_line2, v_app.city, v_app.state,
      v_app.postal_code, v_app.country, v_app.photo_path
    )
    returning id into v_client;
  end if;

  update public.membership_applications
  set status = 'approved'
  where id = app_id;

  return v_client;
end;
$$;

-- ============================================================
-- PART 3 · Inquiry language
--
-- The rider picks Sinhala or English when they open the thread. The
-- notify route reads this to decide which mailbox the club gets the
-- alert on, and which language the acknowledgement is written in.
-- ============================================================

alter table public.inquiries
  add column if not exists language text not null default 'en';

do $$
begin
  if not exists (
    select 1 from pg_constraint
    where conrelid = 'public.inquiries'::regclass
      and conname = 'inquiries_language_check'
  ) then
    alter table public.inquiries
      add constraint inquiries_language_check
      check (language in ('en', 'si'));
  end if;
end $$;

comment on column public.inquiries.language is
  'Rider''s chosen language: en | si. Routes the admin alert and picks the acknowledgement template.';

-- ============================================================
-- PART 4 · Daily Listings becomes opt-in, plus a manual running order
--
-- Before this, Daily Listings was every product with listed_at inside
-- a two-day window — so restocking anything put it back on the drop.
-- Now a product has to be flagged for it as well.
--
-- sort_position is deliberately NULLABLE: a number means "pin me
-- here", null means "fall back to newest first". Making it NOT NULL
-- with a default would force the club to number the whole catalogue
-- to get any control at all.
-- ============================================================

alter table public.products
  add column if not exists daily_listing  boolean not null default false,
  add column if not exists sort_position  int;

comment on column public.products.daily_listing is
  'Opt in to the Daily Listings drop. The view also still requires listed_at to be inside the window.';
comment on column public.products.sort_position is
  'Manual running order, ascending. NULL = unpinned, ordered newest first behind everything pinned.';

-- Keep today's drop exactly as it is. Without this the migration would
-- empty Daily Listings the moment it runs.
update public.products
set daily_listing = true
where listed_at >= current_date - 1
  and daily_listing = false;

create index if not exists products_sort_position_idx
  on public.products (sort_position nulls last, created_at desc);

-- select * — recreated so the view exposes the two new columns.
create or replace view public.daily_listings
with (security_invoker = on) as
  select *
  from public.products
  where daily_listing = true
    and listed_at >= current_date - 1;

comment on view public.daily_listings is
  'Menu item: Daily Listings. Opted-in products listed today or yesterday. security_invoker keeps products'' RLS in force.';

create or replace view public.clearance_items
with (security_invoker = on) as
  select * from public.products where clearance = true;

-- ============================================================
-- PART 5 · Applicant photos
--
-- PRIVATE. This is a photograph of a person attached to their home
-- address — it must never be readable from a URL the way product
-- photography is. The admin views it through a short-lived signed URL.
--
-- Insert is open to `anon` because /apply is a public form and the
-- site holds no service-role key. That is the same trust boundary as
-- the "anyone can apply" INSERT policy in migration 11; the mime
-- allowlist and the 3MB cap are what keep it from being a general
-- purpose file drop. Reads stay admin-only, so nothing uploaded here
-- can be fetched back by whoever put it there.
-- ============================================================

insert into storage.buckets (id, name, public, file_size_limit, allowed_mime_types)
values (
  'applicant-photos',
  'applicant-photos',
  false,
  3145728,                                  -- 3 MB; the form downscales first
  array['image/jpeg', 'image/png', 'image/webp']
)
on conflict (id) do update set
  public             = excluded.public,
  file_size_limit    = excluded.file_size_limit,
  allowed_mime_types = excluded.allowed_mime_types;

do $$
begin
  if to_regprocedure('public.is_super_admin()') is null then
    raise notice 'public.is_super_admin() not found — skipping applicant-photos policies (run 08_superadmin.sql, then re-run this file).';
    return;
  end if;

  execute 'drop policy if exists "applicants upload a photo" on storage.objects';
  execute $p$
    create policy "applicants upload a photo" on storage.objects
      for insert to anon, authenticated
      with check (bucket_id = 'applicant-photos')
  $p$;

  execute 'drop policy if exists "admins read applicant photos" on storage.objects';
  execute $p$
    create policy "admins read applicant photos" on storage.objects
      for select to authenticated
      using (bucket_id = 'applicant-photos' and public.is_super_admin())
  $p$;

  execute 'drop policy if exists "admins delete applicant photos" on storage.objects';
  execute $p$
    create policy "admins delete applicant photos" on storage.objects
      for delete to authenticated
      using (bucket_id = 'applicant-photos' and public.is_super_admin())
  $p$;
end $$;

commit;

-- ------------------------------------------------------------
-- After running
--   · /apply collects reason + address + photo.
--   · Approving an application carries all of it onto the client.
--   · Daily Listings only shows products with the box ticked:
--
--       select id, name, listed_at from public.products
--       where daily_listing = true order by listed_at desc;
--
--   · Orphaned applicant photos (application deleted, file left):
--       select o.name from storage.objects o
--       where o.bucket_id = 'applicant-photos'
--         and not exists (
--           select 1 from public.membership_applications a
--           where a.photo_path = o.name
--         );
-- ------------------------------------------------------------
