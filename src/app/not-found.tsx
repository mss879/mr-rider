import type { Metadata } from "next";
import Link from "next/link";
import ArrowCta from "@/components/ArrowCta";

/* 404. Served for any URL the router does not recognise — including the ones
   that matter most here: a product slug the club has retired, and a link from
   an old menu structure. Both are ordinary on a catalogue that turns over
   daily, so this is a signpost rather than an apology.

   `noindex` because a soft 404 in the index is worse than no page at all;
   Next already sends the 200-vs-404 status correctly from this file. */

export const metadata: Metadata = {
  title: "Not found",
  robots: { index: false, follow: true },
};

const LINKS = [
  { href: "/shop", label: "The shop floor", d: "Every aisle, one page" },
  { href: "/daily-listings", label: "Daily listings", d: "Today's drop" },
  { href: "/clearance", label: "Clearance market", d: "End of line" },
  { href: "/contact", label: "Talk to the club", d: "Ask a person" },
];

export default function NotFound() {
  return (
    <section className="mx-auto flex max-w-7xl flex-col px-6 py-24 md:py-32">
      <p className="mb-4 font-mono text-[11px] uppercase tracking-[0.22em] text-ink-soft">
        404 · nothing on this shelf
      </p>
      <h1 className="headline mb-6 text-[clamp(2.8rem,8vw,6rem)]">
        Wrong aisle.
      </h1>
      <p className="mb-10 max-w-md text-sm leading-relaxed text-ink-soft">
        This page is not on the floor. Stock moves daily, so a link from a
        while back may have gone with it — the shop itself is still where you
        left it.
      </p>

      <div className="mb-12">
        <ArrowCta href="/shop">Back to the shop floor</ArrowCta>
      </div>

      <ul className="grid gap-px border border-line bg-line sm:grid-cols-2 lg:grid-cols-4">
        {LINKS.map((l) => (
          <li key={l.href}>
            <Link
              href={l.href}
              className="group flex h-full flex-col gap-2 bg-paper p-6 transition-colors duration-200 ease-out hover:bg-chalk"
            >
              <span className="font-display text-xl font-bold uppercase leading-tight tracking-wide">
                {l.label}
              </span>
              <span className="text-xs text-ink-soft">{l.d}</span>
              <span
                aria-hidden
                className="mt-auto pt-4 font-mono text-sm text-ink-soft transition-transform duration-200 ease-out group-hover:translate-x-1"
              >
                →
              </span>
            </Link>
          </li>
        ))}
      </ul>
    </section>
  );
}
