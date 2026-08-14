#!/usr/bin/env node
/**
 * Deletes objects in the product-images bucket that no product points at.
 *
 *   node scripts/prune-orphan-images.mjs            # dry run, deletes nothing
 *   node scripts/prune-orphan-images.mjs --delete   # actually removes them
 *
 * Orphans accumulate when photography is replaced rather than added — the
 * WebP pass in scripts/compress-product-images.mjs leaves the original .jpg
 * and .png objects behind, still billed for, pointed at by nothing.
 *
 * RUN MIGRATION 18 FIRST. The set of "referenced" paths is read from
 * products.images, so if the database still points at .jpg/.png while the
 * bucket holds .webp, every good file looks like an orphan. The script
 * refuses to run in that state rather than trusting you to remember.
 *
 * Two more guards, because this deletes things:
 *   · Dry run is the default. Nothing goes until you pass --delete.
 *   · It aborts if more than half the bucket looks orphaned, which is the
 *     signature of a bad comparison rather than a real cleanup. --force
 *     overrides, but read the listing first.
 */
import { createClient } from "@supabase/supabase-js";

const BUCKET = "product-images";
const DELETE = process.argv.includes("--delete");
const FORCE = process.argv.includes("--force");

const url = process.env.NEXT_PUBLIC_SUPABASE_URL ?? process.env.SUPABASE_URL;
const key = process.env.SUPABASE_SERVICE_ROLE_KEY;
if (!url || !key) {
  console.error("Need NEXT_PUBLIC_SUPABASE_URL and SUPABASE_SERVICE_ROLE_KEY.");
  process.exit(1);
}
const db = createClient(url, key, { auth: { persistSession: false } });

// ---- what the catalogue actually references --------------------------------
const referenced = new Set();
let from = 0;
for (;;) {
  const { data, error } = await db
    .from("products")
    .select("images")
    .range(from, from + 999);
  if (error) {
    console.error(`Could not read products: ${error.message}`);
    process.exit(1);
  }
  for (const row of data) for (const p of row.images ?? []) referenced.add(p);
  if (data.length < 1000) break;
  from += 1000;
}
console.log(`${referenced.size} image paths referenced by products`);

const stale = [...referenced].filter((p) => !/\.webp$/i.test(p));
if (stale.length && !FORCE) {
  console.error(
    `\n${stale.length} of those still point at non-WebP files, e.g.\n` +
      stale.slice(0, 3).map((p) => `  ${p}`).join("\n") +
      "\n\nThat means migration 18 has not been run yet. Run it first —\n" +
      "pruning now would delete the WebP files the bucket just received.\n" +
      "  supabase/migrations/18_product_images_webp.sql",
  );
  process.exit(1);
}

// ---- what is actually in the bucket ----------------------------------------
const { data: folders, error: fe } = await db.storage.from(BUCKET).list("", { limit: 100000 });
if (fe) {
  console.error(`Could not list the bucket: ${fe.message}`);
  process.exit(1);
}
const dirs = folders.filter((f) => f.id === null).map((f) => f.name);
const objects = [];
for (let i = 0; i < dirs.length; i += 12) {
  const batch = dirs.slice(i, i + 12);
  const res = await Promise.all(
    batch.map((d) => db.storage.from(BUCKET).list(d, { limit: 1000 })),
  );
  res.forEach((r, j) => {
    for (const f of r.data ?? []) {
      objects.push({ path: `${batch[j]}/${f.name}`, size: f.metadata?.size ?? 0 });
    }
  });
}
console.log(`${objects.length} objects in the bucket`);

const orphans = objects.filter((o) => !referenced.has(o.path));
const mb = (n) => (n / 1024 / 1024).toFixed(0);
const freed = orphans.reduce((s, o) => s + o.size, 0);

if (!orphans.length) {
  console.log("Nothing to prune — every object is referenced.");
  process.exit(0);
}

const byExt = {};
for (const o of orphans) {
  const e = o.path.split(".").pop().toLowerCase();
  byExt[e] = (byExt[e] ?? 0) + 1;
}
console.log(
  `\n${orphans.length} orphaned objects · ${mb(freed)}MB\n` +
    Object.entries(byExt).map(([e, n]) => `  .${e}  ${n}`).join("\n"),
);

if (orphans.length > objects.length / 2 && !FORCE) {
  console.error(
    `\nAborting: that is more than half the bucket, which usually means the\n` +
      "comparison is wrong rather than the bucket being full of junk.\n" +
      "Check the paths above, then re-run with --force if they really are stale.",
  );
  process.exit(1);
}

if (!DELETE) {
  console.log("\nDry run — nothing deleted. Re-run with --delete to remove them.");
  process.exit(0);
}

let removed = 0;
for (let i = 0; i < orphans.length; i += 100) {
  const batch = orphans.slice(i, i + 100).map((o) => o.path);
  const { error } = await db.storage.from(BUCKET).remove(batch);
  if (error) {
    console.error(`\nStopped after ${removed}: ${error.message}`);
    process.exitCode = 1;
    break;
  }
  removed += batch.length;
  process.stdout.write(`  removed ${removed}/${orphans.length}\r`);
}
console.log(`\nRemoved ${removed} objects · ${mb(freed)}MB freed`);
