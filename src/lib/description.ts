/* Product descriptions, written by people who do not write HTML.

   The admin types plain text. The storefront lays it out:

     A blank line           → a new paragraph
     A short line alone     → a heading ("Specifications", "Key features")
     "- " or "• " in front  → a bullet point
     "Label: value"         → the label in bold (spec sheets)

   About 95% of the stored copy came in with migrations 17 and 23 as supplier
   HTML. Rather than rewrite those rows, htmlToPlain() turns that HTML into the
   same plain-text shape on the way out, so both kinds render identically and
   the admin form never shows a tag. Opening an imported product and pressing
   Save stores the plain-text version.

   Nothing here produces HTML. The blocks become React elements, so whatever
   anyone types is rendered as text and can never inject markup. */

export type DescriptionBlock =
  | { kind: "heading"; text: string }
  | { kind: "list"; items: string[] }
  | { kind: "lines"; lines: string[] };

const HTML_TAG = /<\/?[a-z][a-z0-9]*\b[^>]*>/i;

export const looksLikeHtml = (s: string) => HTML_TAG.test(s);

const ENTITIES: Record<string, string> = {
  amp: "&",
  lt: "<",
  gt: ">",
  quot: '"',
  apos: "'",
  nbsp: " ",
  ndash: "–",
  mdash: "—",
  hellip: "…",
  rsquo: "’",
  lsquo: "‘",
  rdquo: "”",
  ldquo: "“",
  deg: "°",
  trade: "™",
  reg: "®",
  copy: "©",
};

function decodeEntities(s: string): string {
  return s.replace(/&(#x[0-9a-f]+|#[0-9]+|[a-z]+);/gi, (whole, body: string) => {
    if (body[0] === "#") {
      const code =
        body[1] === "x" || body[1] === "X"
          ? parseInt(body.slice(2), 16)
          : parseInt(body.slice(1), 10);
      return Number.isFinite(code) && code > 0 && code < 0x110000
        ? String.fromCodePoint(code)
        : whole;
    }
    return ENTITIES[body.toLowerCase()] ?? whole;
  });
}

/** Supplier HTML → the plain-text format above. Plain text passes through. */
export function htmlToPlain(input: string): string {
  if (!looksLikeHtml(input)) return input.replace(/\r\n?/g, "\n").trim();

  let s = input.replace(/\r\n?/g, "\n");
  // Source newlines inside HTML are just whitespace.
  s = s.replace(/\s*\n\s*/g, " ");
  s = s.replace(/<(script|style)\b[\s\S]*?<\/\1>/gi, "");
  // Headings and paragraphs become blocks of their own.
  s = s.replace(/<h[1-6]\b[^>]*>/gi, "\n\n").replace(/<\/h[1-6]>/gi, "\n\n");
  s = s.replace(/<\/?(p|div|section|article|ul|ol|table|tbody|thead|tfoot|blockquote)\b[^>]*>/gi, "\n\n");
  // List items become bullets.
  s = s.replace(/<li\b[^>]*>/gi, "\n- ").replace(/<\/li>/gi, "");
  // Table rows become "Label: value" lines.
  s = s.replace(/<tr\b[^>]*>/gi, "\n").replace(/<\/tr>/gi, "");
  s = s.replace(/<\/t[dh]>\s*<t[dh]\b[^>]*>/gi, "\u0000");
  s = s.replace(/<\/?t[dh]\b[^>]*>/gi, "");
  s = s.replace(/<br\s*\/?>/gi, "\n");
  s = s.replace(/<[^>]+>/g, "");
  s = decodeEntities(s);
  // Some supplier copy carries its tags escaped (&lt;/p&gt;), which only
  // surface as tags once decoded. Drop those too.
  s = s.replace(/<\/?(p|br|li|ul|ol|strong|b|em|i|u|span|div|h[1-6])\s*\/?>/gi, "");

  const lines = s.split("\n").map((line) => {
    const cells = line.split("\u0000").map((c) => c.replace(/\s+/g, " ").trim());
    const [label, ...rest] = cells;
    if (rest.length === 0) return label;
    const value = rest.filter(Boolean).join(" · ");
    if (!value) return label;
    return `${label.replace(/:$/, "")}: ${value}`;
  });

  return lines
    .join("\n")
    .replace(/\n{3,}/g, "\n\n")
    .trim();
}

const BULLET = /^\s*(?:[-*•·–]|\d+[.)])\s+/;

/* A heading is a line on its own, short, and not a sentence. "Specifications"
   and "Road Reimagined" are; "Fits tyres up to 32mm." is not. */
function isHeading(line: string): boolean {
  const t = line.trim();
  return (
    t.length > 0 &&
    t.length <= 48 &&
    !/[.,;!?]$/.test(t) &&
    !BULLET.test(t) &&
    !splitLabel(t)?.[1]
  );
}

/** Stored description → blocks for the product page. */
export function parseDescription(raw: string | null | undefined): DescriptionBlock[] {
  const text = htmlToPlain(raw ?? "");
  if (!text) return [];

  const blocks: DescriptionBlock[] = [];
  for (const chunk of text.split(/\n\s*\n/)) {
    const lines = chunk
      .split("\n")
      .map((l) => l.replace(/\s+/g, " ").trim())
      .filter(Boolean);
    if (lines.length === 0) continue;

    if (lines.length === 1 && isHeading(lines[0])) {
      blocks.push({ kind: "heading", text: lines[0].replace(/:$/, "") });
      continue;
    }

    // A chunk can mix plain lines and bullets — keep them in order.
    let run: string[] = [];
    let bullets: string[] = [];
    const flushRun = () => {
      if (run.length) blocks.push({ kind: "lines", lines: run });
      run = [];
    };
    const flushBullets = () => {
      if (bullets.length) blocks.push({ kind: "list", items: bullets });
      bullets = [];
    };
    for (const line of lines) {
      if (BULLET.test(line)) {
        flushRun();
        bullets.push(line.replace(BULLET, ""));
      } else {
        flushBullets();
        run.push(line);
      }
    }
    flushRun();
    flushBullets();
  }
  return blocks;
}

/* "Frame: FACT 12r Carbon" → ["Frame", "FACT 12r Carbon"]; a bare "Frame:" →
   ["Frame", ""]. A label is short and has no comma, so a colon in the middle of
   a spec ("Crank Shimano 105, BSA, 50/34: 165mm") is left alone. */
export function splitLabel(line: string): [string, string] | null {
  const m = /^([^:,]{1,32}):(?:\s+(.*))?$/.exec(line);
  if (!m || /https?$/i.test(m[1])) return null;
  return [m[1].trim(), (m[2] ?? "").trim()];
}

/** First paragraph as plain text, for meta descriptions. */
export function descriptionSummary(raw: string | null | undefined, max = 160): string {
  const first = parseDescription(raw).find(
    (b) => b.kind === "lines" && b.lines.join(" ").length > 40,
  );
  if (!first || first.kind !== "lines") return "";
  const s = first.lines.join(" ");
  return s.length > max ? `${s.slice(0, max - 1).trimEnd()}…` : s;
}
