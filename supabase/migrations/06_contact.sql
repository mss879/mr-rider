-- ============================================================
-- MR.RIDER · Migration 06 · CONTACT
-- Menu item: /contact
-- Depends on: nothing — can run standalone
--
-- The contact form writes here. Messages are write-only from the
-- site (no select policy), read them in the Supabase dashboard:
-- Table Editor → contact_messages.
-- ============================================================

create table if not exists public.contact_messages (
  id          bigint generated always as identity primary key,
  name        text not null check (char_length(name) between 1 and 200),
  email       text not null check (email ~ '^\S+@\S+\.\S+$'),
  topic       text not null default 'Something else',
  message     text not null check (char_length(message) between 1 and 5000),
  created_at  timestamptz not null default now()
);

alter table public.contact_messages enable row level security;

-- Anyone may send a message; nobody may read them through the API.
create policy "anyone can send a message" on public.contact_messages
  for insert to anon, authenticated
  with check (true);
