# Migration 23, split for the Supabase SQL editor

The split copy of `../23_specialized_catalogue_import.sql`. The editor refuses
anything over roughly 1MB and the original is just over 1MB, so it is cut into
pieces that paste cleanly. The largest is about 380KB.

**Use these, or the single file — never both.** They do the same thing. If you
can connect to the database directly, the one file is simpler:

```bash
psql "$DATABASE_URL" -f supabase/migrations/23_specialized_catalogue_import.sql
```

## Order

Run them in filename order, one at a time, waiting for each to finish.

| File | What it does |
| --- | --- |
| `01_schema.sql` | Adds the four bike aisles (Mountain Bikes, E-Bikes, City & Active Bikes, Kids Bikes), their 12 product types, Gravel Wheels and MTB Wheels, and places Specialized / S-Works in the new aisles. |
| `02_products_01.sql` … `05_products_04.sql` | The 367 Specialized products. |
| `06_verify.sql` | Read-only checks. Every query has its expected answer in a comment above it. |

`01` must go first — the product files need the new aisles and product types
to exist, and will fail without them.

## Why the descriptions look like gibberish

Each description is written as `convert_from(decode('…', 'base64'), 'UTF8')`
and Postgres turns it back into the original HTML as it inserts. The Supabase
SQL editor misread one long quoted description (`relation "a" does not
exist`); base64 has no quotes, dashes or semicolons for it to trip on.

## Nothing here deletes

Unlike migration 17 there is no reset: these rows land next to the existing
catalogue. The 201 Specialized products the store already carries from
migration 17 were left out of the import entirely, so those rows are never
touched — `../../seed/specialized-duplicates.csv` lists each one against the
row it matched.

## If one fails

Re-run just that file. Each is wrapped in its own transaction, and the inserts
use `on conflict (id) do update`, so re-running is safe — it updates these 367
rows rather than duplicating them, and touches nothing else.

## Photos

The rows carry bucket paths like `turbo-levo-4-comp/1.webp`. The files are
already in `supabase/seed/product-images/` (gitignored), compressed to WebP at
1600px like the rest of the catalogue. Upload them:

```bash
SUPABASE_SERVICE_ROLE_KEY=<your-service-role-key> NEXT_PUBLIC_SUPABASE_URL=https://xxx.supabase.co node scripts/upload-product-images.mjs
```

It skips everything already in the bucket. Before or after the SQL, either
order works.
