-- ============================================================
-- MR.RIDER · Migration 22 · ROAD BIKES / FRAMESETS RE-FILE
--                           (QA round 2 · ticket BUG-03)
--
-- Client: "Selecting the 'Road Bikes' category is incorrectly
-- pulling 'Framesets' into the results grid. Fix the logic so
-- 'Road Bikes' only shows complete, fully-built bikes."
--
-- It is not the logic. /shop filters on an exact category match
-- (ShopBrowser.tsx) and the mega-menu builds its Road Bikes
-- panel straight from products.category (db.ts
-- getNavAvailability), so both show precisely what this table
-- says. The table is wrong: migration 17 imported ten products
-- into 'road-bikes' that do not belong there, and left one
-- complete bike sitting in 'framesets'.
--
-- Eleven rows move. Nothing else in the catalogue is touched.
--
--   7 framesets      road-bikes  ->  framesets
--   1 complete bike  framesets   ->  road-bikes
--   2 gravel shoes   road-bikes  ->  shoes / gravel-shoes
--   1 spare part     road-bikes  ->  components / derailleur-hangers
--
-- Road Bikes goes 40 -> 31, all complete builds.
-- Framesets  goes  3 ->  9, all bare frames.
--
-- PAIRS WITH A ONE-LINE CODE CHANGE: src/lib/taxonomy.ts adds
-- 'framesets' to the LOOK brand, because both of LOOK's
-- road-bikes products are the track frames PART 1 moves. Without
-- it /brands lists LOOK under no bike aisle at all. See the note
-- at the foot of this file.
--
-- WHY EXPLICIT IDS AND NOT `name ilike '%frameset%'`
--   A heuristic on this catalogue is actively unsafe:
--
--   · 'bmc-speedmachine-01-four' opens its copy with the
--     heading <h4>Frameset</h4> and then specs a SHIMANO 105
--     Di2 groupset, AR 27 wheels and Pirelli tyres. It is a
--     complete bike. A description match moves it wrongly.
--   · 'diverge-str-expert' says "starts with our FACT 11r
--     carbon frameset ... built with SRAM's Rival eTap AXS
--     Eagle groupset". Same trap.
--   · 'allez-2' says "Based on production frame set weights".
--     A looser match catches that too.
--   · 'crux-5-comp-sram-rival-xplr', 'crux-comp', 'crux-expert'
--     and every Tarmac / Diverge / Aethos build must stay put.
--   · A name match would leave 'bmc-derailleur-hangers' and the
--     two Fizik shoes in Road Bikes, because it has no opinion
--     about anything not called a frameset — and it cannot see
--     the reverse error at all, since '2027 Cervelo S5 Shimano
--     Ultegra' is a complete bike whose name gives no hint that
--     it is currently filed as a frame.
--
--   Every id below was read against its own supplier copy in
--   migration 17. The rule used: a frameset lists a frame, a
--   fork and a seatpost; a complete bike lists a groupset,
--   wheels and tyres.
--
-- WHY THE EXISTING VERIFY DID NOT CATCH THIS
--   17_spoken_catalogue_import_parts/10_verify.sql already asks
--   for "a product whose type belongs to a different aisle" and
--   correctly returns no rows: every bad row is internally
--   CONSISTENT (a shoe filed as road-bikes / road-bikes). No
--   foreign key or check constraint can see this — only reading
--   the product can. PART 4 leaves a tripwire for next time.
--
-- Depends on: 12_category_restructure.sql (derailleur-hangers),
--             16_road_bikes_framesets_split.sql (the two aisles),
--             17_spoken_catalogue_import.sql (gravel-shoes, and
--             the rows themselves).
-- Idempotent: safe to run more than once. Every statement keys
-- on an explicit id and writes a fixed value, so a second run
-- rewrites the same answer.
-- Non-breaking: eleven UPDATEs, no schema change. Safe against a
-- live database at any time — the storefront picks it up on its
-- next read, no deploy needed.
-- ============================================================

begin;

-- ============================================================
-- PART 1 · Seven bare frames leave Road Bikes
--
-- BUG-03, the half the client actually reported. Each of these
-- is a frame, a fork and a seatpost with no groupset and no
-- wheels. The two LOOK entries are track framesets — 895
-- Vitesse and T20 Sprint — frames before they are anything.
-- ============================================================

update public.products
set category    = 'framesets',
    subcategory = 'framesets'
where id in (
  '2026-teammachine-slr-01-frameset',            -- 2026 Teammachine SLR 01 Frameset           · bmc
  'crux-5-frameset-fact-10r-carbon',             -- Crux 5 Frameset - FACT 10r Carbon          · specialized
  'look-895-vitesse-frameset',                   -- Look 895 Vitesse Frameset                  · look
  'look-t20-sprint-frameset',                    -- Look T20 Sprint Frameset                   · look
  's-works-crux-5-frameset-fact-12r-carbon',     -- S-Works Crux 5 Frameset - FACT 12r Carbon  · s-works
  's-works-crux-frameset',                       -- S-Works Crux Frameset                      · s-works
  's-works-tarmac-sl9-frameset-fact-12r-carbon'  -- S-Works Tarmac SL9 Frameset - FACT 12r     · s-works
);

-- ============================================================
-- PART 2 · One complete bike leaves Framesets
--
-- BUG-03 in reverse, and the reason a name heuristic could
-- never have finished the job. '2027 Cervelo S5 Shimano
-- Ultegra' is a built bike — the copy specs the HB19 one-piece
-- bar/stem and the Reserve 57|64 wheelset. The frame-only twin
-- of the same model, '2027-cervelo-s5-frameset', is a separate
-- row and correctly stays where it is; so does
-- '2024-bmc-teammachine-r-01-mod', which really is a module.
--
-- Knock-on, and it is expected: '2027-cervelo-s5-frameset' has
-- stock 0, so once this row leaves, Cervélo has no in-stock
-- frameset and getNavAvailability (which skips stock <= 0) stops
-- listing the brand under Framesets. Say so in the QA reply
-- before someone files it as a new bug.
-- ============================================================

update public.products
set category    = 'road-bikes',
    subcategory = 'road-bikes'
where id = '2027-cervelo-s5-shimano-ultegra';

-- ============================================================
-- PART 3 · Three products that are not bikes at all
--
-- Also filed under road-bikes by the import, which is why the
-- Road Bikes mega-menu currently lists "Fizik" and "BMC
-- Derailleur Hangers" as bike MODELS: SiteHeader.brandSections
-- reads getNavAvailability().models, built straight from
-- products.category and products.name.
--
--   Fizik Terra Atlas Army / Black · a SHOE, not a saddle. The
--     copy calls it "a true all-terrain, all-road cycling shoe",
--     L6 BOA Fit System, X5 nylon outsole, 355g. Terra is
--     fizik's off-road line, and migration 17 already files its
--     sibling — the Terra X4 Powerstrap — under
--     shoes / gravel-shoes, so these two join it rather than
--     inventing a placement.
--
--   BMC Derailleur Hangers · a fitment list of replacement
--     hangers (#36 MY12 Timemachine … #82 Shimano direct
--     mount). components / derailleur-hangers is the
--     client-approved home for exactly this; migration 12
--     created the type with the note "Use Other Components only
--     as a fallback". The import put nothing in it, so this row
--     is also what puts the type on the rail.
--
-- Guarded, unlike PARTS 1 and 2: these two targets live outside
-- the aisles migration 16 guarantees and products.subcategory
-- is a foreign key, so a database missing either type gets a
-- notice and a skip rather than an aborted file.
-- ============================================================

do $$
declare
  v_missing text;
begin
  if to_regclass('public.subcategories') is null then
    raise notice 'public.subcategories not found — run 12_category_restructure.sql first, then re-run this file. PARTS 1 and 2 have already been applied.';
    return;
  end if;

  -- EXECUTE for the same reason migration 16 uses it: the probe only
  -- parses once the table is known to be there.
  execute $q$
    select string_agg(t.slug, ', ')
    from (values ('gravel-shoes'), ('derailleur-hangers')) as t(slug)
    where not exists (select 1 from public.subcategories s where s.slug = t.slug)
  $q$ into v_missing;

  if v_missing is not null then
    raise notice 'product type(s) % not found — run 12_category_restructure.sql and 17_spoken_catalogue_import.sql, then re-run this file. PARTS 1 and 2 have already been applied.', v_missing;
    return;
  end if;

  update public.products
  set category    = 'shoes',
      subcategory = 'gravel-shoes'
  where id in (
    'fizik-terra-atlas-army',    -- Fizik Terra Atlas Army  · fizik
    'fizik-terra-atlas-black-1'  -- Fizik Terra Atlas Black · fizik
  );

  update public.products
  set category    = 'components',
      subcategory = 'derailleur-hangers'
  where id = 'bmc-derailleur-hangers';
end $$;

-- ============================================================
-- PART 4 · Tripwire, not a rule
--
-- The heuristic that must not drive the UPDATEs above is still
-- worth having as a REPORT. It changes nothing — it only names
-- anything that reads like a frameset and is not filed as one,
-- for a human to look at. This is the check that would have
-- caught the import on the day it ran.
--
-- NOTE ON READING IT: the Supabase SQL editor does not surface
-- RAISE NOTICE, and returns only the last statement's result.
-- Run this file with `psql -f` to see the notice, or ignore it
-- there and run the SELECTs under "After running" instead.
-- ============================================================

do $$
declare
  v_odd text;
begin
  select string_agg(p.id, ', ' order by p.id)
  into v_odd
  from public.products p
  where p.category = 'road-bikes'
    and p.name ilike '%frameset%';

  if v_odd is null then
    raise notice 'BUG-03 clear: Road Bikes holds no product named "frameset".';
  else
    raise notice 'BUG-03: Road Bikes still holds product(s) named "frameset": %. Read the supplier copy and re-file by id — this file never guesses.', v_odd;
  end if;
end $$;

commit;

-- ------------------------------------------------------------
-- After running
--   · Road Bikes carries complete builds only, and its
--     brand → model menu stops offering LOOK framesets, Fizik
--     shoes and BMC derailleur hangers as road bike models.
--   · Framesets carries every bare frame in the catalogue.
--   · Derailleur Hangers appears under Components for the first
--     time; Gravel Shoes goes from 9 products to 11.
--   · Cervélo leaves the Framesets brand list — its only
--     remaining frameset is out of stock. Expected, see PART 2.
--
--   The four counts, expect 31 / 9 / 11 / 1:
--     select category, subcategory, count(*)
--     from public.products
--     where (category, subcategory) in (
--       ('road-bikes','road-bikes'), ('framesets','framesets'),
--       ('shoes','gravel-shoes'), ('components','derailleur-hangers'))
--     group by 1, 2 order by 1, 2;
--
--   Expect no rows — nothing named "frameset" left in Road Bikes:
--     select id, name from public.products
--     where category = 'road-bikes' and name ilike '%frameset%';
--
--   Expect the eleven moved rows and nothing else:
--     select id, name, category, subcategory from public.products
--     where id in (
--       '2026-teammachine-slr-01-frameset','crux-5-frameset-fact-10r-carbon',
--       'look-895-vitesse-frameset','look-t20-sprint-frameset',
--       's-works-crux-5-frameset-fact-12r-carbon','s-works-crux-frameset',
--       's-works-tarmac-sl9-frameset-fact-12r-carbon',
--       '2027-cervelo-s5-shimano-ultegra','fizik-terra-atlas-army',
--       'fizik-terra-atlas-black-1','bmc-derailleur-hangers')
--     order by category, id;
--
--   Still expect no rows — every type still matches its aisle
--   (the check from 17's verify file):
--     select p.id, p.category, p.subcategory
--     from public.products p
--     join public.subcategories s on s.slug = p.subcategory
--     where s.category_slug <> p.category;
--
-- THE CODE CHANGE THAT GOES WITH THIS FILE
--   src/lib/taxonomy.ts adds 'framesets' to the LOOK brand.
--   LOOK's only two road-bikes products are the track frames
--   PART 1 moves, so without that line /brands shows LOOK under
--   no bike aisle at all: the Road Bikes card drops it for want
--   of stock, and the Framesets card never lists it because the
--   brand is not declared for that aisle. The mega-menu is fine
--   either way — it builds its panel from the catalogue.
--
-- IF MIGRATION 17 IS EVER RE-RUN
--   17 still carries the original, wrong categories and its
--   inserts end in `on conflict (id) do update set category =
--   excluded.category`. A re-import — or a re-run of a SINGLE
--   part file from 17_spoken_catalogue_import_parts/ — puts
--   those rows back where they were. RUN THIS FILE AGAIN
--   AFTERWARDS.
-- ------------------------------------------------------------
