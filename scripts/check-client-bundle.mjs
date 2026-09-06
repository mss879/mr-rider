#!/usr/bin/env node
/* Fails the build if a server-only environment value reached the client bundle.
 *
 * This exists because netlify.toml exempts Turbopack's build cache from
 * Netlify's secret scanning. That exemption is correct — the cache is never
 * deployed — but an exemption that is never re-examined is how a real leak
 * eventually ships. This checks the one thing that actually matters, on every
 * build, and it is not exempt from anything.
 *
 * What counts as a secret here: any environment variable whose NAME looks like
 * a credential (KEY, SECRET, TOKEN, PASSWORD...), that is not NEXT_PUBLIC_, and
 * whose value is long enough to be one. A rule rather than a list, so a key
 * added next year is covered without anyone remembering to update this file.
 *
 * Matching on the name and not merely on length is what keeps this safe to run
 * in CI. A build environment is full of long values that are not secrets — site
 * ids, commit refs, deploy urls — and a guard that fails the production deploy
 * on one of those would be worse than no guard at all.
 *
 * What it scans: .next/static — the directory whose contents are served to
 * browsers verbatim. A value found there is public, whatever the intent.
 */
import { readdirSync, readFileSync, statSync, existsSync } from "node:fs";
import { join } from "node:path";

const DIR = ".next/static";
const MIN_SECRET_LENGTH = 16;

const SECRET_NAME = /(KEY|SECRET|TOKEN|PASSWORD|PASSWD|CREDENTIAL|PRIVATE|SIGNING|SALT)/i;

/* Named like a secret, but isn't. SECRETS_SCAN_* are Netlify's own scanner
   settings — see netlify.toml, where one of them holds a path glob. */
const NOT_SECRET = /^(SECRETS_SCAN_|NODE_|npm_)/;

if (!existsSync(DIR)) {
  console.log(`[check-client-bundle] ${DIR} absent — nothing to scan.`);
  process.exit(0);
}

const secrets = Object.entries(process.env).filter(
  ([name, value]) =>
    !name.startsWith("NEXT_PUBLIC_") &&
    SECRET_NAME.test(name) &&
    !NOT_SECRET.test(name) &&
    typeof value === "string" &&
    value.length >= MIN_SECRET_LENGTH,
);

const files = [];
(function walk(dir) {
  for (const entry of readdirSync(dir)) {
    const p = join(dir, entry);
    if (statSync(p).isDirectory()) walk(p);
    else files.push(p);
  }
})(DIR);

const leaks = [];
for (const file of files) {
  let text;
  try {
    text = readFileSync(file, "utf8");
  } catch {
    continue; // binary asset
  }
  for (const [name, value] of secrets) {
    if (text.includes(value)) leaks.push({ name, file });
  }
}

if (leaks.length > 0) {
  // The NAME is printed, never the value — a build log is not a private place.
  console.error("\n[check-client-bundle] SERVER-ONLY VALUE IN THE CLIENT BUNDLE:\n");
  for (const { name, file } of leaks) console.error(`  ${name}  →  ${file}`);
  console.error(
    "\nThis value is served to every visitor. Rotate it, then find the import that\n" +
      "pulled it client-side — usually a server-only module reached from a\n" +
      '"use client" component, or a NEXT_PUBLIC_ prefix added by mistake.\n',
  );
  process.exit(1);
}

console.log(
  `[check-client-bundle] ${files.length} client files scanned against ` +
    `${secrets.length} server-only env value(s) — clean.`,
);
