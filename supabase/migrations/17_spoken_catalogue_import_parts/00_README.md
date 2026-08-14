# Migration 17, split for the Supabase SQL editor

The `17` is the migration number — this is the split copy of
`../17_spoken_catalogue_import.sql`, not a count of files. **There are ten
files here**: one schema file, eight product files and a verify file.

The editor refuses anything over roughly 1MB and the original is 2.4MB. These
are the same statements in the same order, cut into pieces that paste cleanly.
The largest is 452KB.

**Use these, or the single big file — never both.** They do the same thing.
If you can connect to the database directly, the one file is simpler:

```bash
psql "$DATABASE_URL" -f supabase/migrations/17_spoken_catalogue_import.sql
```

## Order

Run them in filename order, one at a time, waiting for each to finish.

| File | What it does |
| --- | --- |
| `01_schema_and_reset.sql` | Adds `products.description`, the 12 new product types and the 79 new brands, then **deletes every existing product**. |
| `02_products_01.sql` … `09_products_08.sql` | The 1,423 products, 200 per file. |
| `10_verify.sql` | Read-only checks. Every query has its expected answer in a comment above it. |

`01` must go first — the product files need the description column, the new
types and the new brands to exist, and will fail without them.

## If one fails

Re-run just that file. Each is wrapped in its own transaction, so a failure
rolls that file back and leaves everything else alone. The inserts use
`on conflict (id) do update`, so re-running a file that partly succeeded is
safe — it updates rather than duplicating.

The one file to be careful with is `01`: it contains the delete. Running it
again after loading products wipes them and you start the product files over.
Nothing else is destructive.

## Photos

None of this puts images in place. The rows carry bucket paths like
`s-works-torch/1.jpg`, which resolve once the files are in the
`product-images` bucket:

```bash
SUPABASE_SERVICE_ROLE_KEY=eyJ... NEXT_PUBLIC_SUPABASE_URL=https://xxx.supabase.co node scripts/upload-product-images.mjs
```

Order does not matter — run it before or after the SQL. Until it has run,
products show the hatched placeholder; afterwards the photos appear on their
own with no need to touch the SQL again. See `../../seed/README.md`.
