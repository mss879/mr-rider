#!/usr/bin/env node
/**
 * Rebuilds supabase/seed/product-images/ from the committed manifest.
 *
 *   node scripts/fetch-product-images.mjs
 *
 * The image files themselves are gitignored — ~650MB of binaries belong in
 * the Storage bucket, not the repo — so this is how a fresh clone gets them
 * back before running scripts/upload-product-images.mjs.
 *
 * supabase/seed/product-images.json pairs every source URL with the exact
 * bucket path migration 17 wrote into products.images, so what lands here
 * always matches what the catalogue expects.
 *
 * Safe to re-run: existing files are left alone, so an interrupted run
 * resumes. Anything that will not download is reported at the end and
 * written to supabase/seed/image-failures.json.
 */
import { mkdir, readFile, writeFile, stat } from "node:fs/promises";
import { dirname, join } from "node:path";
import { fileURLToPath } from "node:url";

const ROOT = join(fileURLToPath(new URL(".", import.meta.url)), "..");
const DEST = join(ROOT, "supabase/seed/product-images");
const MANIFEST = join(ROOT, "supabase/seed/product-images.json");
const CONCURRENCY = 8;

let manifest;
try {
  manifest = JSON.parse(await readFile(MANIFEST, "utf8"));
} catch {
  console.error(`Could not read ${MANIFEST}. It ships with migration 17 — restore it from git.`);
  process.exit(1);
}

let done = 0;
let cached = 0;
const failures = [];

async function fetchOne({ url, path }) {
  const out = join(DEST, path);
  try {
    const { size } = await stat(out);
    if (size > 0) {
      cached++;
      return;
    }
  } catch {
    /* not on disk yet — fall through and download */
  }

  await mkdir(dirname(out), { recursive: true });
  for (let attempt = 1; attempt <= 4; attempt++) {
    try {
      const res = await fetch(url, {
        headers: { "User-Agent": "Mozilla/5.0" },
        signal: AbortSignal.timeout(45_000),
      });
      if (!res.ok) throw new Error(`HTTP ${res.status}`);
      const body = Buffer.from(await res.arrayBuffer());
      if (!body.length) throw new Error("empty response");
      await writeFile(out, body);
      done++;
      if (done % 250 === 0) {
        process.stdout.write(`  ${done} downloaded (${cached} already on disk)\r`);
      }
      return;
    } catch (err) {
      if (attempt === 4) failures.push({ path, url, error: String(err.message ?? err) });
      else await new Promise((r) => setTimeout(r, 1500 * attempt));
    }
  }
}

console.log(`${manifest.length} images in the manifest → ${DEST}`);
const queue = [...manifest];
await Promise.all(
  Array.from({ length: CONCURRENCY }, async () => {
    while (queue.length) await fetchOne(queue.pop());
  }),
);

console.log(`\nDownloaded ${done} · already on disk ${cached} · failed ${failures.length}`);

// The bucket rejects anything over 5MB. A handful of supplier PNGs are
// 4000px originals that blow past it, so flag them rather than letting the
// upload fail 21 times with no explanation.
const MAX_BYTES = 5 * 1024 * 1024;
const oversized = [];
for (const { path } of manifest) {
  try {
    const { size } = await stat(join(DEST, path));
    if (size > MAX_BYTES) oversized.push(path);
  } catch {
    /* missing files are already accounted for in `failures` */
  }
}
if (oversized.length) {
  console.log(
    `\n${oversized.length} file(s) exceed the bucket's 5MB limit and will be rejected.\n` +
      "Resample them in place — the paths stay valid, so the migration is unaffected:\n\n" +
      "  find supabase/seed/product-images -type f -size +5000k -exec \\\n" +
      '    sips --resampleHeightWidthMax 2000 {} --out {} \\;\n',
  );
}
if (failures.length) {
  await writeFile(
    join(ROOT, "supabase/seed/image-failures.json"),
    JSON.stringify(failures, null, 1),
  );
  console.log("Failures written to supabase/seed/image-failures.json");
  for (const f of failures.slice(0, 15)) console.log(`  ${f.path} — ${f.error}`);
  process.exitCode = 1;
} else {
  console.log("\nNext: upload them into the bucket —");
  console.log("  SUPABASE_SERVICE_ROLE_KEY=eyJ... node scripts/upload-product-images.mjs");
}
