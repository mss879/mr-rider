-- ============================================================
-- MR.RIDER · Migration 04 · AUCTION
-- Menu item: /auction
-- Depends on: nothing — can run standalone
-- ============================================================

create table if not exists public.auction_lots (
  id           text primary key,
  lot_no       text not null unique,
  name         text not null,
  spec         text not null default '',
  condition    text not null default 'PRE-OWNED',
  current_bid  numeric(10,2) not null default 0 check (current_bid >= 0),
  bids_count   int  not null default 0 check (bids_count >= 0),
  ends_at      timestamptz not null,
  created_at   timestamptz not null default now()
);

-- Bid history — ready for the membership phase. The frontend shows
-- lots read-only until member login ships; inserting bids will be a
-- members-only action.
create table if not exists public.auction_bids (
  id          bigint generated always as identity primary key,
  lot_id      text not null references public.auction_lots(id) on delete cascade,
  bidder      uuid references auth.users(id) on delete set null,
  amount      numeric(10,2) not null check (amount > 0),
  created_at  timestamptz not null default now()
);

create index if not exists auction_bids_lot_idx on public.auction_bids (lot_id, created_at desc);

alter table public.auction_lots enable row level security;
alter table public.auction_bids enable row level security;

create policy "public read lots" on public.auction_lots
  for select using (true);

-- auction_bids has RLS enabled and NO policies yet: fully locked.
-- The membership phase adds insert/select policies for approved members.

-- ---------- seed: 5 live lots ----------
-- ends_at is relative to when you run this file, so the countdowns
-- start live. Re-run the updates below to restart a demo.
insert into public.auction_lots
  (id, lot_no, name, spec, condition, current_bid, bids_count, ends_at) values
  ('l1', '01', 'Team-Issue SL9 Frameset',    '54cm · race-used one season · workshop inspected',            'RACE-USED', 1240, 18, now() + interval '6 hours 24 minutes'),
  ('l2', '02', '1989 Steel Classic Racer',   'Columbus SLX tubing · original chrome fork · collector grade', 'PRE-OWNED', 890,  31, now() + interval '2 hours 8 minutes'),
  ('l3', '03', '50mm Carbon Wheelset',       'Rim brake · new bearings fitted · true and tensioned',         'RACE-USED', 410,  12, now() + interval '1 day 4 hours'),
  ('l4', '04', 'Dual-Side Power Crank',      '172.5mm · fresh battery seals · calibration verified',         'PRE-OWNED', 305,  9,  now() + interval '2 days 12 hours'),
  ('l5', '05', 'Founders Club Jersey #001',  'Size M · first run · numbered 1 of 1',                         'NEW',       150,  22, now() + interval '5 hours 40 minutes')
on conflict (id) do nothing;

-- Demo tip: restart the countdowns any time with e.g.
--   update public.auction_lots set ends_at = now() + interval '6 hours' where id = 'l1';
