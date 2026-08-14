# Catalogue seed — migration 17

Everything migration 17 (`17_spoken_catalogue_import.sql`) needs that does not
fit in a `.sql` file: the product photography and the record of what was left
behind.

| File | Committed | What it is |
| --- | --- | --- |
| `product-images.json` | yes | 4,665 entries pairing each source image URL with the exact bucket path migration 17 wrote into `products.images`. |
| `product-images/` | **no** (gitignored) | The downloaded photos, laid out as `<product-id>/<n>.<ext>`. ~745MB — their home is the Storage bucket, not the repo. |
| `skipped-products.csv` | yes | The 73 supplier products deliberately not imported, with the reason for each. |
| `image-failures.json` | only if written | Any image that would not download or upload. Absent means everything succeeded. |

## Running the import

Order matters — the photos have to exist in the bucket before the catalogue
rows point at them, or every product falls back to the hatched placeholder.

**1 · Get the images onto disk.** Skip if you already have `product-images/`.

```bash
node scripts/fetch-product-images.mjs
```

**2 · Compress them.** The supplier ships 4000px originals; the storefront
never renders a product larger than about 800px.

```bash
node scripts/compress-product-images.mjs
```

Re-encodes everything as WebP capped at 1600px — 738MB down to 185MB, a 75%
saving, with no visible difference. Needs `cwebp` (`brew install webp`). This
changes every extension to `.webp`, which is what migration 18 exists to
record — run that migration once, after the first compression pass.

**3 · Upload them into the bucket.** Needs the `service_role` key from
Supabase → Project Settings → API. It is a full-access secret: pass it for the
one command rather than putting it in `.env.local`, which Next inlines.

```bash
SUPABASE_SERVICE_ROLE_KEY=eyJ... NEXT_PUBLIC_SUPABASE_URL=https://xxx.supabase.co node scripts/upload-product-images.mjs
```

**4 · Run the migrations.** It opens with a `begin`, so a failure anywhere rolls
the whole thing back.

The file is 2.4MB, which the Supabase SQL editor rejects ("Query is too large
to be run via the SQL Editor"). Either connect to the database directly:

```bash
psql "$DATABASE_URL" -f supabase/migrations/17_spoken_catalogue_import.sql
```

…or paste the pre-split copy in `../migrations/17_spoken_catalogue_import_parts/`
into the editor, in filename order. Same statements, ten files, largest is
452KB. See the README in that folder.

Then run `18_product_images_webp.sql` — it is a few lines and pastes into the
editor without trouble. It repoints `products.images` at the `.webp` files
step 2 produced. Skip it only if you skipped step 2.

All three scripts are safe to re-run: they skip what is already done, so an
interrupted run picks up where it stopped.

## What migration 17 changes

- Adds `products.description` — the schema had no column for product copy.
- Adds 12 product types under **existing** categories (MTB/gravel tyres, MTB
  and kids' helmets, MTB/gravel shoes, MTB apparel, skinsuits, bib tights,
  racks & storage, pumps & inflation) and takes the four "Future Expansion"
  types live now that they have stock. The eleven-aisle menu is untouched.
- Registers 79 new brands with `in_directory = false`, so `/brands` still
  shows only the client's original 25 until someone says otherwise.
- **Deletes every row in `public.products`** and replaces it with 1,423 real
  products. Inquiry threads are unaffected — migration 14 stores the product
  as a snapshot rather than a foreign key, exactly so this is safe.

## What was skipped, and why

73 supplier products have no aisle on the MR.RIDER floor: Indoor Trainers (43),
E-Bikes (21), Kids Bikes (5), MTB Bikes (3) and one gift card. Carrying them
would have meant inventing top-level categories the client has not approved.
They are listed in `skipped-products.csv` — importing them later is a matter of
adding the categories and re-running the scrape for those handles.
