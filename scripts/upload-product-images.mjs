#!/usr/bin/env node
/**
 * Uploads supabase/seed/product-images/ into the `product-images` bucket
 * created by migration 13, using the exact object paths migration 17 wrote
 * into products.images (<product-id>/<n>.<ext>).
 *
 *   node scripts/upload-product-images.mjs
 *
 * Needs the SERVICE ROLE key, not the anon key: the bucket's write policies
 * are admin-only, and the service role is the one credential that bypasses
 * them. It is a full-access secret — keep it out of .env.local (which Next
 * inlines) and off the client. Pass it for the one command instead:
 *
 *   SUPABASE_SERVICE_ROLE_KEY=eyJ... node scripts/upload-product-images.mjs
 *
 * Safe to re-run: anything already in the bucket is skipped, so an
 * interrupted run picks up where it stopped. --force replaces instead.
 */
import { createClient } from "@supabase/supabase-js";
import { readdir, readFile, stat } from "node:fs/promises";
import { join, extname, relative } from "node:path";
import { fileURLToPath } from "node:url";

const ROOT = join(fileURLToPath(new URL(".", import.meta.url)), "..");
const SEED = join(ROOT, "supabase/seed/product-images");
const BUCKET = "product-images";
const CONCURRENCY = 6;
const MAX_BYTES = 5 * 1024 * 1024; // matches the bucket's file_size_limit

const FORCE = process.argv.includes("--force");
const TYPES = {
  ".jpg": "image/jpeg",
  ".jpeg": "image/jpeg",
  ".png": "image/png",
  ".webp": "image/webp",
  ".avif": "image/avif",
};

const url = process.env.NEXT_PUBLIC_SUPABASE_URL ?? process.env.SUPABASE_URL;
const key = process.env.SUPABASE_SERVICE_ROLE_KEY;

if (!url || !key) {
  console.error(
    "Missing credentials.\n" +
      "  NEXT_PUBLIC_SUPABASE_URL     – Supabase → Project Settings → API → Project URL\n" +
      "  SUPABASE_SERVICE_ROLE_KEY    – same page, `service_role` secret\n\n" +
      "Example:\n" +
      "  NEXT_PUBLIC_SUPABASE_URL=https://xxx.supabase.co \\\n" +
      "  SUPABASE_SERVICE_ROLE_KEY=eyJ... \\\n" +
      "  node scripts/upload-product-images.mjs",
  );
  process.exit(1);
}

const db = createClient(url, key, { auth: { persistSession: false } });

/** Every file under supabase/seed/product-images, as bucket-relative paths. */
async function collect(dir) {
  const out = [];
  for (const entry of await readdir(dir, { withFileTypes: true })) {
    const full = join(dir, entry.name);
    if (entry.isDirectory()) out.push(...(await collect(full)));
    else if (entry.name !== ".DS_Store") out.push(full);
  }
  return out;
}

/** Object paths already in the bucket, so a re-run only sends what is missing. */
async function existing() {
  const seen = new Set();
  const { data: folders, error } = await db.storage
    .from(BUCKET)
    .list("", { limit: 100000 });
  if (error) {
    console.warn(`Could not list the bucket (${error.message}) — uploading everything.`);
    return seen;
  }
  let done = 0;
  const queue = folders.filter((f) => f.id === null).map((f) => f.name);
  while (queue.length) {
    const batch = queue.splice(0, CONCURRENCY);
    await Promise.all(
      batch.map(async (folder) => {
        const { data } = await db.storage.from(BUCKET).list(folder, { limit: 1000 });
        for (const file of data ?? []) seen.add(`${folder}/${file.name}`);
      }),
    );
    done += batch.length;
    if (done % 300 === 0) process.stdout.write(`  scanned ${done}/${folders.length} folders\r`);
  }
  return seen;
}

const files = await collect(SEED).catch(() => []);
if (!files.length) {
  console.error(
    `No images in ${relative(ROOT, SEED)}.\n` +
      "Run the download step first, or check the path.",
  );
  process.exit(1);
}

console.log(`${files.length} files on disk. Checking what is already uploaded…`);
const already = FORCE ? new Set() : await existing();
const todo = files.filter((f) => !already.has(relative(SEED, f)));
console.log(
  `${already.size} already in the bucket · ${todo.length} to upload` +
    (FORCE ? " (--force: replacing)" : ""),
);

let ok = 0;
let skipped = 0;
const failures = [];

async function send(file) {
  const path = relative(SEED, file);
  const ext = extname(file).toLowerCase();
  const contentType = TYPES[ext];

  if (!contentType) {
    failures.push({ path, error: `unsupported file type "${ext}"` });
    return;
  }
  const { size } = await stat(file);
  if (size === 0) {
    failures.push({ path, error: "empty file" });
    return;
  }
  if (size > MAX_BYTES) {
    failures.push({ path, error: `${(size / 1024 / 1024).toFixed(1)}MB exceeds the 5MB bucket limit` });
    return;
  }

  const body = await readFile(file);
  for (let attempt = 1; attempt <= 3; attempt++) {
    const { error } = await db.storage
      .from(BUCKET)
      .upload(path, body, { contentType, upsert: true });
    if (!error) {
      ok++;
      if (ok % 200 === 0) process.stdout.write(`  uploaded ${ok}/${todo.length}\r`);
      return;
    }
    if (error.message?.includes("already exists")) {
      skipped++;
      return;
    }
    if (attempt === 3) failures.push({ path, error: error.message });
    else await new Promise((r) => setTimeout(r, 800 * attempt));
  }
}

const queue = [...todo];
await Promise.all(
  Array.from({ length: CONCURRENCY }, async () => {
    while (queue.length) await send(queue.pop());
  }),
);

console.log(`\nUploaded ${ok} · skipped ${skipped} · failed ${failures.length}`);
if (failures.length) {
  console.log("\nFailures:");
  for (const f of failures.slice(0, 25)) console.log(`  ${f.path} — ${f.error}`);
  if (failures.length > 25) console.log(`  …and ${failures.length - 25} more`);
  process.exitCode = 1;
} else {
  console.log(
    "\nDone. Check the storefront — any product still showing the hatched\n" +
      "placeholder has no rows in products.images:\n" +
      "  select count(*) from public.products where images = '{}';",
  );
}
