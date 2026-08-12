-- ============================================================
-- MR.RIDER · Migration 14 · PRODUCT INQUIRIES (the inquiry inbox)
--
-- The shop floor carries no prices. Instead every product has a
-- REQUEST INQUIRY button, and only riders with an account may use
-- it. Each request opens a thread; the admin answers it from
-- /admin → Inquiry Inbox. Both sides can attach images and PDFs.
-- Threads are never deleted — the conversation is the record.
--
--   inquiries          one thread per request (product snapshot +
--                      rider identity + unread bookkeeping)
--   inquiry_messages   the chat itself, with attachments
--   inquiry-files      private Storage bucket for those attachments
--
-- Depends on: 01_shop_products.sql (products, for the server-side
--             product snapshot), 13_product_images.sql
--             (products.images), 07_membership_gate.sql (profiles +
--             the sign-up trigger) and 08_superadmin.sql
--             (is_super_admin).
-- Idempotent: safe to run more than once.
-- ============================================================

begin;

-- ============================================================
-- PART 1 · The threads
--
-- The product is stored as a SNAPSHOT (id + name + brand + first
-- image) rather than a foreign key: retiring a product from the
-- catalog must never erase the conversation about it.
-- ============================================================

create table if not exists public.inquiries (
  id                  uuid primary key default gen_random_uuid(),
  user_id             uuid not null references auth.users(id) on delete cascade,
  -- stamped from auth.users / profiles by a trigger, never by the client
  member_name         text not null default '',
  member_email        text not null default '',
  -- product snapshot
  product_id          text not null,
  product_name        text not null,
  product_brand       text not null default '',
  product_category    text not null default '',
  product_subcategory text not null default '',
  product_image       text not null default '',
  status              text not null default 'open'
                        check (status in ('open', 'closed')),
  created_at          timestamptz not null default now(),
  last_message_at     timestamptz not null default now(),
  last_sender_role    text not null default 'member'
                        check (last_sender_role in ('member', 'admin')),
  -- Kept by the trigger below. A thread whose first message failed to send
  -- (every attachment rejected, say) would otherwise sit in the admin's
  -- queue forever with nothing in it — the inboxes only list threads that
  -- actually carry a conversation.
  message_count       int not null default 0,
  -- "everything up to this moment has been seen by that side"
  admin_read_at       timestamptz,
  member_read_at      timestamptz
);

comment on table public.inquiries is
  'One thread per product inquiry. product_* is a snapshot so the thread outlives the catalog row.';

create index if not exists inquiries_user_idx
  on public.inquiries (user_id, last_message_at desc);
create index if not exists inquiries_activity_idx
  on public.inquiries (last_message_at desc);
create index if not exists inquiries_product_idx
  on public.inquiries (product_id);

-- ============================================================
-- PART 2 · The messages
--
-- attachments is a JSON array of
--   { "path": "<inquiry-id>/<uuid>.pdf", "name": "quote.pdf",
--     "mime": "application/pdf", "size": 51244 }
-- pointing at objects in the inquiry-files bucket (PART 6).
-- ============================================================

create table if not exists public.inquiry_messages (
  id          bigint generated always as identity primary key,
  inquiry_id  uuid not null references public.inquiries(id) on delete cascade,
  sender_id   uuid references auth.users(id) on delete set null,
  sender_role text not null check (sender_role in ('member', 'admin')),
  body        text not null default '' check (char_length(body) <= 5000),
  attachments jsonb not null default '[]'::jsonb,
  created_at  timestamptz not null default now(),
  -- Claimed once, by claim_message_notification() below, so a message can
  -- only ever produce one email no matter how often the notify route is
  -- called. Doubles as the backlog for a sweeper: anything still null that
  -- is older than a few minutes never reached anyone.
  notified_at timestamptz
);

alter table public.inquiry_messages
  add column if not exists notified_at timestamptz;

alter table public.inquiries
  add column if not exists message_count int not null default 0;

do $$
begin
  if not exists (
    select 1 from pg_constraint
    where conrelid = 'public.inquiry_messages'::regclass
      and conname = 'inquiry_messages_has_content'
  ) then
    -- A message is either words, files, or both — never nothing.
    -- Compared as jsonb rather than with jsonb_array_length so a
    -- non-array value can never raise inside the constraint.
    alter table public.inquiry_messages
      add constraint inquiry_messages_has_content
      check (btrim(body) <> '' or attachments <> '[]'::jsonb);
  end if;

  if not exists (
    select 1 from pg_constraint
    where conrelid = 'public.inquiry_messages'::regclass
      and conname = 'inquiry_messages_attachments_array'
  ) then
    alter table public.inquiry_messages
      add constraint inquiry_messages_attachments_array
      check (jsonb_typeof(attachments) = 'array');
  end if;
end $$;

create index if not exists inquiry_messages_thread_idx
  on public.inquiry_messages (inquiry_id, created_at);

-- ============================================================
-- PART 3 · Helpers
--
-- Security-definer so the policies below never recurse into the
-- row-level security of the tables they are checking.
-- ============================================================

create or replace function public.owns_inquiry(p_inquiry uuid)
returns boolean
language sql
security definer
set search_path = public
stable
as $$
  select exists (
    select 1 from public.inquiries i
    where i.id = p_inquiry
      and i.user_id = (select auth.uid())
  );
$$;

-- NOTHING a rider types decides who they are or what they are asking
-- about. Identity comes from the auth record and the product snapshot
-- comes from the catalog, so a thread cannot be opened under someone
-- else's name, cannot point the reply notifications at another mailbox,
-- and cannot put attacker-chosen text into the subject line of an email
-- the club sends from its own domain.
create or replace function public.stamp_inquiry()
returns trigger
language plpgsql
security definer
set search_path = public
as $$
declare
  v_email text;
  v_name  text;
  v_p_name text;
  v_p_brand text;
  v_p_cat  text;
  v_p_sub  text;
  v_p_img  text;
begin
  select coalesce(u.email, '') into v_email
  from auth.users u where u.id = new.user_id;

  select nullif(btrim(p.full_name), '') into v_name
  from public.profiles p where p.id = new.user_id;

  new.member_email := coalesce(v_email, '');
  new.member_name  := coalesce(v_name, split_part(coalesce(v_email, ''), '@', 1));

  select p.name,
         coalesce(p.brand, ''),
         coalesce(p.category, ''),
         coalesce(p.subcategory, ''),
         coalesce(p.images[1], '')
    into v_p_name, v_p_brand, v_p_cat, v_p_sub, v_p_img
  from public.products p
  where p.id = new.product_id;

  if found then
    new.product_name        := v_p_name;
    new.product_brand       := v_p_brand;
    new.product_category    := v_p_cat;
    new.product_subcategory := v_p_sub;
    new.product_image       := v_p_img;
  else
    -- No catalog row (the site is still on its built-in demo data):
    -- keep what was sent, but strip control characters and cap the
    -- length so it cannot be used to compose an email header.
    new.product_name :=
      left(regexp_replace(coalesce(new.product_name, ''), '[[:cntrl:]]', ' ', 'g'), 120);
    new.product_brand :=
      left(regexp_replace(coalesce(new.product_brand, ''), '[[:cntrl:]]', ' ', 'g'), 80);
    new.product_category :=
      left(regexp_replace(coalesce(new.product_category, ''), '[[:cntrl:]]', ' ', 'g'), 80);
    new.product_subcategory :=
      left(regexp_replace(coalesce(new.product_subcategory, ''), '[[:cntrl:]]', ' ', 'g'), 80);
    new.product_image := left(coalesce(new.product_image, ''), 500);
  end if;

  return new;
end;
$$;

drop trigger if exists on_inquiry_created on public.inquiries;
create trigger on_inquiry_created
  before insert on public.inquiries
  for each row execute function public.stamp_inquiry();

-- Superseded by stamp_inquiry(); dropped so a re-run leaves nothing behind.
drop function if exists public.stamp_inquiry_member();

-- Every message moves the thread to the top of the inbox, records
-- who spoke last and marks the thread read for the sender (your own
-- message is never unread to you). A reply on a closed thread
-- reopens it.
create or replace function public.touch_inquiry()
returns trigger
language plpgsql
security definer
set search_path = public
as $$
begin
  update public.inquiries
  set last_message_at  = new.created_at,
      last_sender_role = new.sender_role,
      message_count    = message_count + 1,
      status           = 'open',
      admin_read_at    = case when new.sender_role = 'admin'
                              then new.created_at else admin_read_at end,
      member_read_at   = case when new.sender_role = 'member'
                              then new.created_at else member_read_at end
  where id = new.inquiry_id;
  return new;
end;
$$;

drop trigger if exists on_inquiry_message on public.inquiry_messages;
create trigger on_inquiry_message
  after insert on public.inquiry_messages
  for each row execute function public.touch_inquiry();

-- One message, one email. The notify route is a public endpoint, so
-- without this a signed-in rider could replay the same message id and
-- pour unlimited mail into the club's inbox from the club's own verified
-- sender. The claim is a single atomic UPDATE: whoever flips notified_at
-- from null wins, everyone after gets false and sends nothing.
create or replace function public.claim_message_notification(p_message bigint)
returns boolean
language plpgsql
security definer
set search_path = public
as $$
declare
  v_claimed bigint;
begin
  update public.inquiry_messages m
  set notified_at = now()
  where m.id = p_message
    and m.notified_at is null
    -- Only the author of a message may announce it.
    and m.sender_id = (select auth.uid())
  returning m.id into v_claimed;

  return v_claimed is not null;
end;
$$;

-- Read receipts. Members get no UPDATE policy on inquiries at all,
-- so this is the only way either side can move its own marker —
-- and it cannot touch anything else on the row.
create or replace function public.mark_inquiry_read(p_inquiry uuid)
returns void
language plpgsql
security definer
set search_path = public
as $$
begin
  if public.is_super_admin() then
    update public.inquiries set admin_read_at = now() where id = p_inquiry;
  elsif exists (
    select 1 from public.inquiries
    where id = p_inquiry and user_id = (select auth.uid())
  ) then
    update public.inquiries set member_read_at = now() where id = p_inquiry;
  else
    raise exception 'inquiry % is not yours', p_inquiry;
  end if;
end;
$$;

-- ============================================================
-- PART 4 · Row-level security — threads
--
-- A rider sees only their own threads and may only open one for
-- themselves. The admin sees everything and is the only side that
-- can open / close a thread.
-- ============================================================

alter table public.inquiries enable row level security;

drop policy if exists "members read own inquiries" on public.inquiries;
create policy "members read own inquiries" on public.inquiries
  for select to authenticated
  using (user_id = (select auth.uid()));

drop policy if exists "members open inquiries" on public.inquiries;
create policy "members open inquiries" on public.inquiries
  for insert to authenticated
  with check (user_id = (select auth.uid()));

drop policy if exists "admins read inquiries" on public.inquiries;
create policy "admins read inquiries" on public.inquiries
  for select to authenticated
  using (public.is_super_admin());

drop policy if exists "admins update inquiries" on public.inquiries;
create policy "admins update inquiries" on public.inquiries
  for update to authenticated
  using (public.is_super_admin())
  with check (public.is_super_admin());

-- ============================================================
-- PART 5 · Row-level security — messages
--
-- Both sides read the whole thread they are part of. Neither side
-- can post as the other: sender_role and sender_id are pinned to
-- who you actually are.
-- ============================================================

alter table public.inquiry_messages enable row level security;

drop policy if exists "participants read messages" on public.inquiry_messages;
create policy "participants read messages" on public.inquiry_messages
  for select to authenticated
  using (public.is_super_admin() or public.owns_inquiry(inquiry_id));

drop policy if exists "members write messages" on public.inquiry_messages;
create policy "members write messages" on public.inquiry_messages
  for insert to authenticated
  with check (
    sender_role = 'member'
    and sender_id = (select auth.uid())
    and public.owns_inquiry(inquiry_id)
  );

drop policy if exists "admins write messages" on public.inquiry_messages;
create policy "admins write messages" on public.inquiry_messages
  for insert to authenticated
  with check (
    sender_role = 'admin'
    and sender_id = (select auth.uid())
    and public.is_super_admin()
  );

-- ============================================================
-- PART 6 · Attachments bucket
--
-- PRIVATE, unlike product-images: a quote or an invoice inside a
-- thread is between the club and that rider. The app hands out
-- short-lived signed URLs instead.
--
-- Files are keyed <inquiry-id>/<uuid>.<ext>, which is what the
-- policies below read back out of the object name.
-- ============================================================

insert into storage.buckets (id, name, public, file_size_limit, allowed_mime_types)
values (
  'inquiry-files',
  'inquiry-files',
  false,
  10485760,                                 -- 10 MB per file
  array[
    'image/jpeg', 'image/png', 'image/webp', 'image/avif', 'image/gif',
    'application/pdf'
  ]
)
on conflict (id) do update set
  public             = excluded.public,
  file_size_limit    = excluded.file_size_limit,
  allowed_mime_types = excluded.allowed_mime_types;

do $$
begin
  if to_regprocedure('public.is_super_admin()') is null then
    raise notice 'public.is_super_admin() not found — skipping inquiry-files policies (run 08_superadmin.sql, then re-run this file).';
    return;
  end if;

  -- The inquiry id is compared as TEXT, so an object dropped in a
  -- folder that is not a uuid simply fails to match instead of
  -- raising a cast error inside the policy.
  execute 'drop policy if exists "participants read inquiry files" on storage.objects';
  execute $p$
    create policy "participants read inquiry files" on storage.objects
      for select to authenticated
      using (
        bucket_id = 'inquiry-files'
        and (
          public.is_super_admin()
          or exists (
            select 1 from public.inquiries i
            where i.id::text = split_part(name, '/', 1)
              and i.user_id = (select auth.uid())
          )
        )
      )
  $p$;

  execute 'drop policy if exists "participants upload inquiry files" on storage.objects';
  execute $p$
    create policy "participants upload inquiry files" on storage.objects
      for insert to authenticated
      with check (
        bucket_id = 'inquiry-files'
        and (
          public.is_super_admin()
          or exists (
            select 1 from public.inquiries i
            where i.id::text = split_part(name, '/', 1)
              and i.user_id = (select auth.uid())
          )
        )
      )
  $p$;

  -- Housekeeping only — the admin can bin an orphaned upload.
  execute 'drop policy if exists "admins delete inquiry files" on storage.objects';
  execute $p$
    create policy "admins delete inquiry files" on storage.objects
      for delete to authenticated
      using (bucket_id = 'inquiry-files' and public.is_super_admin())
  $p$;
end $$;

-- ============================================================
-- PART 7 · Realtime
--
-- So an open thread updates the moment the other side sends,
-- without waiting for the poll. RLS still applies to the stream.
-- ============================================================

do $$
begin
  if exists (select 1 from pg_publication where pubname = 'supabase_realtime') then
    if not exists (
      select 1 from pg_publication_tables
      where pubname = 'supabase_realtime'
        and schemaname = 'public' and tablename = 'inquiry_messages'
    ) then
      alter publication supabase_realtime add table public.inquiry_messages;
    end if;

    if not exists (
      select 1 from pg_publication_tables
      where pubname = 'supabase_realtime'
        and schemaname = 'public' and tablename = 'inquiries'
    ) then
      alter publication supabase_realtime add table public.inquiries;
    end if;
  else
    raise notice 'publication supabase_realtime not found — the inbox falls back to polling.';
  end if;
end $$;

commit;

-- ------------------------------------------------------------
-- After running
--   · Riders create an account at /account, then every product
--     card carries "Request inquiry".
--   · The admin answers at /admin → Inquiry Inbox.
--   · Email alerts are optional and live outside the database —
--     set RESEND_API_KEY, RESEND_FROM and INQUIRY_ADMIN_EMAIL in
--     .env.local. Without them the thread still saves; only the
--     email is skipped.
--
--   Open threads waiting on the club:
--     select product_name, member_email, last_message_at
--     from public.inquiries
--     where status = 'open' and last_sender_role = 'member'
--       and (admin_read_at is null or last_message_at > admin_read_at)
--     order by last_message_at desc;
--
--   Attachments that no message points at (orphans):
--     select o.name
--     from storage.objects o
--     where o.bucket_id = 'inquiry-files'
--       and not exists (
--         select 1 from public.inquiry_messages m,
--                     jsonb_array_elements(m.attachments) a
--         where a ->> 'path' = o.name
--       );
-- ------------------------------------------------------------
