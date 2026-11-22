# MR.RIDER — Supabase migrations

One migration per menu item. Each file is self-contained: schema + row-level
security + seed data.

## Run order

Run them **in numeric order** in the Supabase dashboard → **SQL Editor**
(paste a file, press Run, repeat):

| # | File | Menu item | Depends on |
|---|------|-----------|------------|
| 01 | `01_shop_products.sql` | Shop (categories + 48 products — superseded by 12) | — |
| 02 | `02_daily_listings.sql` | Daily Listings (view) | 01 |
| 03 | `03_coaching.sql` | Coaching (programs + coaches) | — |
| 04 | `04_auction.sql` | Auction (lots + bids scaffold) | — |
| 05 | `05_clearance_market.sql` | Clearance Market (view) | 01 |
| 06 | `06_contact.sql` | Contact (form messages) | — |
| 07 | `07_membership_gate.sql` | Membership gate prep (profiles + trigger) | — |
| 08 | `08_superadmin.sql` | Superadmin (admin@mrrider.lk) + approval powers | 07, 06 |
| 09 | `09_admin_content.sql` | Admin write access — manage products, coaching, auction from /admin | 01, 03, 04, 08 |
| 10 | `10_superadmin_repair.sql` | Repair: creates/promotes the admin profile if the user predates 07/08 | 07, 08 |
| 11 | `11_membership_applications.sql` | /apply form → applications + client profiles on approval | 08 |
| 12 | `12_category_restructure.sql` | Client-approved product navigation: 10 categories, 83 product types, 25 brands | 01, 09 |
| 13 | `13_product_images.sql` | Product photography: `product-images` Storage bucket + `products.images` (max 5) | 01, 08 |
| 14 | `14_product_inquiries.sql` | Inquiry inbox: threads, chat messages, `inquiry-files` bucket, RLS + Realtime | 07, 08 |
| 15 | `15_pricing_retired.sql` | No prices on the floor: `price` defaults to 0, Clearance follows the flag | 01 |
| 16 | `16_road_bikes_framesets_split.sql` | Road Bikes and Framesets become two separate categories (10 → 11) | 12 |
| 17 | `17_spoken_catalogue_import.sql` | The real catalogue — 1,400+ products, replacing the demo stock | 12, 16 |
| 18 | `18_product_images_webp.sql` | Product photography moves to WebP | 13 |
| 19 | `19_imported_brands_visible.sql` | Imported brands join the menus and `/brands` | 12, 17 |
| 20 | `20_client_change_requests.sql` | Application reason + address + photo, inquiry language, opt-in Daily Listings, manual running order | 01, 08, 11, 14 |
| 21 | `21_admin_product_log.sql` | QA BE-01: indexes behind the admin product log's search, sort and pages | 01, 12, 20 |
| 22 | `22_road_bikes_frameset_refile.sql` | QA BUG-03: eleven products moved between Road Bikes and Framesets | 12, 16, 17 |
| 23 | `23_specialized_catalogue_import.sql` | The Specialized NZ range — 367 products and four new bike aisles (Mountain, E-Bikes, City & Active, Kids). Adds only; deletes nothing | 12, 13, 15, 16, 17, 20 |
| 24 | `24_specialized_stock_floor.sql` | Every product from 23 starts at 10+ in stock (it arrived with Specialized NZ's warehouse numbers) | 23 |
| 25 | `25_sizes_and_auction_photos.sql` | Sizes with their own stock on products (`variants`), photos on auction lots, and a currency per lot (LKR by default) | 04, 13, 20 |

Every file is idempotent (`if not exists` / `on conflict do nothing`), so
re-running one is safe on its own. Two ordering caveats:

- **Re-running 12 → re-run 16 after it.** 12 recreates the combined
  `road-bikes-framesets` category and re-parents both product types back
  onto it.
- **Re-running 05, 12 or 13 → re-run 15 after it.** All three create
  `clearance_items` with the old `compare_at is not null` clause, which
  empties the Clearance Market now that stock carries no prices.

Run **15 before deploying the price-free build** — the admin product form
stops sending a price, and `products.price` is NOT NULL with no default
until 15 adds one.

## Migration 12 — read before running

Migration 12 implements the client-approved category breakdown. It is the one
file that **rewrites existing rows**, so skim it first:

- **PART 6** remaps `products.category` from the old 12 slugs onto the new 10,
  backfills `products.subcategory`, and converts `products.brand` from a
  free-text name (`VELOCORE`) to a brand slug (`velocore`). Brands that aren't
  on the client's list are auto-registered with `in_directory = false`, so they
  keep working but stay out of the menus and the `/brands` page.
- **PART 8** replaces migration 01's 48 demo products with a 101-item catalog
  covering every product type and brand. **Skip it** — delete from the PART 8
  header down to `commit;` — if the shop already holds real stock.

After running, re-file anything that landed on a fallback product type:

```sql
select category, subcategory, count(*) from public.products group by 1, 2 order by 1, 2;
select * from public.brands where in_directory = false;
```

New tables: `subcategories` (product types), `brands`, `brand_categories`
(which categories a brand is relevant to) and `brand_placements` (where a brand
link renders in the menu).

## Migration 23 — the Specialized import

Just over 1MB, so it is also split for the SQL editor in
`23_specialized_catalogue_import_parts/` (see the README there). It adds four
categories — Mountain Bikes, E-Bikes, City & Active Bikes and Kids Bikes —
which `src/lib/taxonomy.ts` mirrors, so ship that code change alongside it. Its
photos are already compressed in `seed/product-images/`; run
`scripts/upload-product-images.mjs` to put them in the bucket.

## After running

Nothing else to do — the frontend reads `NEXT_PUBLIC_SUPABASE_URL` /
`NEXT_PUBLIC_SUPABASE_ANON_KEY` from `.env.local` and switches from local
mock data to live tables automatically. Until the migrations are run, the
site serves the built-in mock data and logs a `[db] …` warning in the dev
server console.

## Managing content

- **Add stock**: insert into `products` with `listed_at = current_date` —
  it appears in Shop and today's Daily Listings immediately. `category`,
  `subcategory` and `brand` must be slugs that exist in `categories`,
  `subcategories` and `brands`.
- **One product, several brand collections**: set `collections` (e.g.
  `'{specialized}'` on an S-Works item) instead of duplicating the row. SQL
  only — the admin form's picker for this was removed in QA round 2 (BUG-02);
  stored values still drive the shop's brand rail and the mega-menu.
- **Sizes**: bikes, helmets, shoes and clothing can carry sizes, each with
  its own stock, from /admin → Products → Edit → Sizes. Stored in
  `products.variants` as `[{"size": "54", "stock": 1}, …]`; when a product
  has sizes, a trigger (migration 25) sets `products.stock` to their total,
  so "In stock / N left / Out of stock" and the menu keep working. The
  product page shows the sizes and the rider's pick goes into their inquiry.
- **Product descriptions** are plain text — no HTML. A blank line starts a
  paragraph, a short line on its own is a heading, `- ` makes a bullet and
  `Label: value` bolds the label (`src/lib/description.ts`). The imported
  supplier HTML is converted the same way on display and in the admin form.
- **Product photos**: up to 5 per product, uploaded from /admin → Products →
  Edit. `images[1]` is the card shot; `images[2]` swaps in on hover. Files live
  in the public `product-images` bucket and are stored as object paths — an
  absolute `https://` URL is also accepted if the image is hosted elsewhere.
  Removing an image deletes the file on **Save**; **Cancel** discards anything
  uploaded during that edit. Deleting a product deletes its files.
- **Clearance / Sale**: set `clearance = true` on any product — it appears on
  /clearance (and /sale). There are no prices, so no discount to sort by;
  the rail is ordered newest first.
- **Inquiries**: threads live in `inquiries` / `inquiry_messages` and are
  answered from /admin → Inquiry Inbox. Attachments sit in the private
  `inquiry-files` bucket, keyed `<inquiry-id>/<uuid>.<ext>`. Nothing here is
  deleted by the app — the conversation is the record.
- **Auction**: managed from /admin → Auction; countdowns render from
  `ends_at`. Each lot has up to 5 photos (in the `product-images` bucket under
  `auction-<lot id>/`) and a `currency` — LKR unless another is picked.
- **Contact messages**: read them in Table Editor → `contact_messages`
  (write-only from the site; no public read access).
- **Membership approvals**: handled by the superadmin. Create the admin
  account in dashboard → Authentication → Users → Add user with email
  `admin@mrrider.lk` (migration 08 auto-flags it as superadmin). Approve a
  member by setting their `profiles.status` to `'active'` — via Table
  Editor now, via the admin panel in the next phase.
