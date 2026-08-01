-- ============================================================
-- MR.RIDER · Migration 03 · COACHING
-- Menu item: /coaching (training programs + international pool)
-- Depends on: nothing — can run standalone
-- ============================================================

create table if not exists public.programs (
  id     text primary key,
  name   text not null,
  weeks  int  not null check (weeks > 0),
  level  text not null,
  focus  text not null default '',
  price  numeric(10,2) not null check (price >= 0)
);

create table if not exists public.coaches (
  id          text primary key,
  name        text not null,
  country     text not null,
  code        text not null,           -- 3-letter country code shown on the card
  discipline  text not null,
  languages   text not null default 'EN',
  slots       int  not null default 0  -- 0 = waitlist
);

alter table public.programs enable row level security;
alter table public.coaches  enable row level security;

create policy "public read programs" on public.programs
  for select using (true);

create policy "public read coaches" on public.coaches
  for select using (true);

-- ---------- seed: 4 training programs ----------
insert into public.programs (id, name, weeks, level, focus, price) values
  ('p1', 'First 1,000K', 8,  'Beginner',     'Build the habit. Four structured rides a week, zero guesswork.',        149),
  ('p2', 'Climb Lab',    12, 'Intermediate', 'Threshold work and low-cadence strength for long gradients.',           239),
  ('p3', 'Crit Engine',  10, 'Advanced',     'Repeat-sprint capacity, cornering craft and race-day tactics.',         219),
  ('p4', 'Winter Block', 16, 'All levels',   'Indoor base miles plus strength — arrive at spring already fit.',       299)
on conflict (id) do nothing;

-- ---------- seed: 8 coaches / 8 countries ----------
insert into public.coaches (id, name, country, code, discipline, languages, slots) values
  ('c1', 'Mateo Vidal',    'Spain',       'ESP', 'Climbing',            'EN / ES', 2),
  ('c2', 'Anouk de Vries', 'Netherlands', 'NED', 'Time Trial',          'EN / NL', 3),
  ('c3', 'Kenji Sato',     'Japan',       'JPN', 'Track & Sprint',      'EN / JA', 0),
  ('c4', 'Lena Fischer',   'Germany',     'GER', 'Endurance',           'EN / DE', 4),
  ('c5', 'Tumi Adebayo',   'Nigeria',     'NGA', 'Sprint Power',        'EN',      2),
  ('c6', 'Clara Moreau',   'France',      'FRA', 'Road Race Craft',     'EN / FR', 1),
  ('c7', 'Harriet Cole',   'Australia',   'AUS', 'Nutrition & Fueling', 'EN',      5),
  ('c8', 'Diego Fuentes',  'Colombia',    'COL', 'Altitude Blocks',     'EN / ES', 0)
on conflict (id) do nothing;
