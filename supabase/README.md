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

Every file is idempotent (`if not exists` / `on conflict do nothing`), so
re-running one is safe.

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
  `'{specialized}'` on an S-Works item) instead of duplicating the row.
- **Product photos**: up to 5 per product, uploaded from /admin → Products →
  Edit. `images[1]` is the card shot; `images[2]` swaps in on hover. Files live
  in the public `product-images` bucket and are stored as object paths — an
  absolute `https://` URL is also accepted if the image is hosted elsewhere.
  Removing an image deletes the file on **Save**; **Cancel** discards anything
  uploaded during that edit. Deleting a product deletes its files.
- **Clearance / Sale**: set `clearance = true` and a `compare_at` price on any
  product — it appears on /clearance (and /sale) sorted by discount.
- **Auction**: insert into `auction_lots`; countdowns render from `ends_at`.
- **Contact messages**: read them in Table Editor → `contact_messages`
  (write-only from the site; no public read access).
- **Membership approvals**: handled by the superadmin. Create the admin
  account in dashboard → Authentication → Users → Add user with email
  `admin@mrrider.lk` (migration 08 auto-flags it as superadmin). Approve a
  member by setting their `profiles.status` to `'active'` — via Table
  Editor now, via the admin panel in the next phase.
