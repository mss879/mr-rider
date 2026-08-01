# MR.RIDER — Supabase migrations

One migration per menu item. Each file is self-contained: schema + row-level
security + seed data.

## Run order

Run them **in numeric order** in the Supabase dashboard → **SQL Editor**
(paste a file, press Run, repeat):

| # | File | Menu item | Depends on |
|---|------|-----------|------------|
| 01 | `01_shop_products.sql` | Shop (categories + 48 products) | — |
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

Every file is idempotent (`if not exists` / `on conflict do nothing`), so
re-running one is safe.

## After running

Nothing else to do — the frontend reads `NEXT_PUBLIC_SUPABASE_URL` /
`NEXT_PUBLIC_SUPABASE_ANON_KEY` from `.env.local` and switches from local
mock data to live tables automatically. Until the migrations are run, the
site serves the built-in mock data and logs a `[db] …` warning in the dev
server console.

## Managing content

- **Add stock**: insert into `products` with `listed_at = current_date` —
  it appears in Shop and today's Daily Listings immediately.
- **Clearance**: set `clearance = true` and a `compare_at` price on any
  product — it appears on /clearance sorted by discount.
- **Auction**: insert into `auction_lots`; countdowns render from `ends_at`.
- **Contact messages**: read them in Table Editor → `contact_messages`
  (write-only from the site; no public read access).
- **Membership approvals**: handled by the superadmin. Create the admin
  account in dashboard → Authentication → Users → Add user with email
  `admin@mrrider.lk` (migration 08 auto-flags it as superadmin). Approve a
  member by setting their `profiles.status` to `'active'` — via Table
  Editor now, via the admin panel in the next phase.
