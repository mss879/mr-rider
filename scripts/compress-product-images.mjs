#!/usr/bin/env node
/**
 * Re-encodes supabase/seed/product-images/ as WebP, capped at 1600px on the
 * long edge. Run it after fetch-product-images.mjs and before
 * upload-product-images.mjs.
 *
 *   node scripts/compress-product-images.mjs
 *
 * On the supplier catalogue this took 738MB down to 185MB — a 75% saving —
 * with no visible difference at the sizes the storefront renders. Some source
 * images are 4000px originals; the shop never shows a product larger than
 * about 800px.
 *
 * Files are replaced in place and the extension becomes .webp, which is why
 * migration 18 rewrites products.images to match. Run that migration once,
 * after the first compression pass.
 *
 * Safe to re-run: anything already WebP and already within the size cap is
 * left alone rather than being re-encoded (which would lose quality each
 * time).
 *
 * Needs `cwebp` (Google's encoder — macOS `sips` cannot write WebP):
 *   brew install webp
 */
import { readdir, stat, rename, unlink, readFile, writeFile } from "node:fs/promises";
import { execFile } from "node:child_process";
import { join, extname, relative } from "node:path";
import { fileURLToPath } from "node:url";
import { promisify } from "node:util";

const run = promisify(execFile);
const ROOT = join(fileURLToPath(new URL(".", import.meta.url)), "..");
const SEED = join(ROOT, "supabase/seed/product-images");
const MAX_EDGE = 1600;
const QUALITY = 82;
const CONCURRENCY = 8;

try {
  await run("cwebp", ["-version"]);
} catch {
  console.error("cwebp not found. Install it with:\n  brew install webp");
  process.exit(1);
}

async function collect(dir) {
  const out = [];
  for (const entry of await readdir(dir, { withFileTypes: true })) {
    if (entry.name.startsWith(".")) continue;
    const full = join(dir, entry.name);
    if (entry.isDirectory()) out.push(...(await collect(full)));
    else out.push(full);
  }
  return out;
}

const files = await collect(SEED).catch(() => []);
if (!files.length) {
  console.error(`No images in ${relative(ROOT, SEED)}. Run fetch-product-images.mjs first.`);
  process.exit(1);
}
console.log(`${files.length} files → WebP (max ${MAX_EDGE}px, q${QUALITY})`);

/** Long-edge dimensions, via sips — it reads every format macOS knows. */
async function dimensions(file) {
  try {
    const { stdout } = await run("sips", ["-g", "pixelWidth", "-g", "pixelHeight", file]);
    const w = Number(stdout.match(/pixelWidth:\s*(\d+)/)?.[1] ?? 0);
    const h = Number(stdout.match(/pixelHeight:\s*(\d+)/)?.[1] ?? 0);
    return { w, h };
  } catch {
    return { w: 0, h: 0 };
  }
}

let done = 0;
let skipped = 0;
let before = 0;
let after = 0;
const failed = [];

async function compress(src) {
  const size = (await stat(src)).size;
  const { w, h } = await dimensions(src);
  const isWebp = extname(src).toLowerCase() === ".webp";

  // Already WebP and already within the cap — re-encoding would only lose
  // quality for no gain.
  if (isWebp && w && h && Math.max(w, h) <= MAX_EDGE) {
    skipped++;
    before += size;
    after += size;
    return;
  }

  const dst = src.replace(/\.[^.]+$/, ".webp");
  const tmp = `${dst}.tmp`;
  const args = ["-quiet", "-q", String(QUALITY), "-metadata", "none"];
  // Only ever shrink: cwebp -resize will happily upscale a small image.
  if (w && h && Math.max(w, h) > MAX_EDGE) {
    args.push("-resize", ...(w >= h ? [String(MAX_EDGE), "0"] : ["0", String(MAX_EDGE)]));
  }

  try {
    await run("cwebp", [...args, src, "-o", tmp]);
  } catch {
    // AVIF and a few odd encodings need a trip through sips first.
    const aux = `${src}.aux.png`;
    try {
      await run("sips", ["-s", "format", "png", src, "--out", aux]);
      await run("cwebp", [...args, aux, "-o", tmp]);
      await unlink(aux);
    } catch (err) {
      failed.push({ file: relative(SEED, src), error: String(err.message ?? err).slice(0, 120) });
      return;
    }
  }

  const outSize = (await stat(tmp)).size;
  if (isWebp && outSize >= size) {
    await unlink(tmp);
    skipped++;
    before += size;
    after += size;
    return;
  }

  await rename(tmp, dst);
  if (dst !== src) await unlink(src);
  done++;
  before += size;
  after += outSize;
  if ((done + skipped) % 500 === 0) {
    process.stdout.write(`  ${done + skipped}/${files.length}\r`);
  }
}

const queue = [...files];
await Promise.all(
  Array.from({ length: CONCURRENCY }, async () => {
    while (queue.length) await compress(queue.pop());
  }),
);

const mb = (n) => (n / 1024 / 1024).toFixed(0);
console.log(
  `\nconverted ${done} · left as-is ${skipped} · failed ${failed.length}\n` +
    `${mb(before)}MB → ${mb(after)}MB (${before ? 100 - Math.round((after * 100) / before) : 0}% saved)`,
);

if (failed.length) {
  await writeFile(
    join(ROOT, "supabase/seed/image-failures.json"),
    JSON.stringify(failed, null, 1),
  );
  for (const f of failed.slice(0, 15)) console.log(`  ${f.file} — ${f.error}`);
  process.exitCode = 1;
} else {
  console.log(
    "\nNext:\n" +
      "  1. run migration 18 once, so products.images points at .webp\n" +
      "  2. SUPABASE_SERVICE_ROLE_KEY=… node scripts/upload-product-images.mjs",
  );
}

// Keep the manifest honest: it is what fetch-product-images.mjs restores from,
// and what the paths in the migrations are generated against.
try {
  const p = join(ROOT, "supabase/seed/product-images.json");
  const manifest = JSON.parse(await readFile(p, "utf8"));
  let changed = 0;
  for (const entry of manifest) {
    const webp = entry.path.replace(/\.[^.]+$/, ".webp");
    if (webp !== entry.path) {
      entry.originalPath ??= entry.path;
      entry.path = webp;
      changed++;
    }
  }
  if (changed) {
    await writeFile(p, JSON.stringify(manifest, null, 0));
    console.log(`\nmanifest updated: ${changed} paths now .webp`);
  }
} catch {
  /* manifest is optional — compression still succeeded without it */
}
