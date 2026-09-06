import type { ReactNode } from "react";
import ArrowCta from "@/components/ArrowCta";
import SectionHead from "@/components/SectionHead";

/* The first argument the home page makes. It sits directly under the hero
   because a visitor who has not yet decided why a shop would put a door on
   itself will not scroll past the category grid to find out.

   Every claim here is one the site actually keeps: no tags on the floor,
   inquiries answered in a thread, the 09:00 drop, admin-reviewed entry. */

type Reason = { n: string; t: string; d: string; icon: ReactNode };

/* UI-05 — one icon per block, so the six can be scanned rather than read.

   Drawn inline rather than pulled from an icon set: six glyphs is not worth a
   dependency, and hairline strokes on `currentColor` are the only way they sit
   in the same drawing as the rules and the arrows the rest of the floor uses.
   `stroke-width` is 1.25 at 24px — any heavier and they read as buttons.

   Every one is aria-hidden. The heading beside it already says what the block
   is; an alt text here would only make a screen reader say it twice. */
const ICON = "size-7 shrink-0 stroke-current [stroke-linecap:round] [stroke-linejoin:round]";

function Icon({ children }: { children: ReactNode }) {
  return (
    <svg
      aria-hidden
      viewBox="0 0 24 24"
      fill="none"
      strokeWidth={1.25}
      className={ICON}
    >
      {children}
    </svg>
  );
}

export default function WhyClub({
  coachCount,
  countryCount,
  brandCount,
}: {
  coachCount: number;
  countryCount: number;
  brandCount: number;
}) {
  /* One line each. These were paragraphs — three sentences apiece, six of them
     stacked in a grid, which is more reading than anyone does standing at the
     top of a home page. Every claim survives; the throat-clearing did not. */
  const reasons: Reason[] = [
    {
      n: "01",
      t: "No price theatre",
      d: "No tags on the floor, so no inflated RRP to be talked down from. Ask, and you get a real number.",
      icon: (
        <Icon>
          {/* Price tag, struck through. */}
          <path d="M3.5 11.2V4.5a1 1 0 0 1 1-1h6.7a1 1 0 0 1 .71.3l8 8a1 1 0 0 1 0 1.41l-6.7 6.7a1 1 0 0 1-1.41 0l-8-8a1 1 0 0 1-.3-.71Z" />
          <circle cx="7.6" cy="7.6" r="1.4" />
          <path d="M2 21 21 2" />
        </Icon>
      ),
    },
    {
      n: "02",
      t: "Every listing is real stock",
      d: "On the floor means in the building, checked by someone who rides. No dropship roulette.",
      icon: (
        <Icon>
          {/* Crate with a tick. */}
          <path d="M3 7.5 12 3l9 4.5v9L12 21l-9-4.5Z" />
          <path d="m8 11.6 2.6 2.6L16.4 8.4" />
        </Icon>
      ),
    },
    {
      n: "03",
      t: "First call on the drop",
      d: "New stock lands at 09:00. Members see it, ask about it and claim it first.",
      icon: (
        <Icon>
          {/* Clock at nine. */}
          <circle cx="12" cy="12" r="9" />
          <path d="M12 7v5H7.5" />
        </Icon>
      ),
    },
    {
      n: "04",
      t: "Answers, not a checkout",
      d: `A thread, not a cart — spec sheets, extra photos and honest words on fit across ${brandCount} brands.`,
      icon: (
        <Icon>
          {/* Two speech bubbles. */}
          <path d="M8.5 15.5H6l-3 3v-13a1 1 0 0 1 1-1h10a1 1 0 0 1 1 1v4" />
          <path d="M10 10.5h10a1 1 0 0 1 1 1v6a1 1 0 0 1-1 1h-2v3l-3-3h-5a1 1 0 0 1-1-1v-6a1 1 0 0 1 1-1Z" />
        </Icon>
      ),
    },
    {
      n: "05",
      t: "Coaching in the membership",
      d: `${coachCount} coaches, ${countryCount} countries, four programs — booked on the login that buys your wheels.`,
      icon: (
        <Icon>
          {/* Stopwatch. */}
          <path d="M9.5 2.5h5" />
          <path d="M12 5.5v-3" />
          <circle cx="12" cy="13.5" r="8" />
          <path d="M12 13.5 15.5 10" />
        </Icon>
      ),
    },
    {
      n: "06",
      t: "A door, not a turnstile",
      d: "Every application is read by a human. That is what keeps the floor serious.",
      icon: (
        <Icon>
          {/* Door with a handle. */}
          <path d="M5 21V4a1 1 0 0 1 1-1h9a1 1 0 0 1 1 1v17" />
          <path d="M3 21h18" />
          <circle cx="13" cy="12.5" r="1" />
        </Icon>
      ),
    },
  ];

  return (
    <section className="mx-auto max-w-7xl px-6 py-16 md:py-20">
      <SectionHead
        eyebrow="Why the club"
        title="Why riders join."
        link={{ href: "/about", label: "The club story" }}
      />

      <div className="grid grid-cols-1 border-l border-t border-line sm:grid-cols-2 lg:grid-cols-3">
        {reasons.map((r) => (
          <div
            key={r.n}
            data-reveal
            className="group relative flex flex-col gap-4 border-b border-r border-line p-7 transition-colors duration-200 ease-out hover:bg-chalk"
          >
            {/* The rule thickens into ink on hover — the same hairline
                language the rest of the floor uses, just louder. */}
            <span
              aria-hidden
              className="absolute inset-x-0 bottom-[-1px] h-[2px] origin-left scale-x-0 bg-ink transition-transform duration-300 ease-out group-hover:scale-x-100"
            />
            <span className="flex items-center justify-between gap-4 text-ink-soft transition-colors duration-200 ease-out group-hover:text-ink">
              <span className="font-mono text-[11px] tracking-[0.22em]">
                {r.n}
              </span>
              {r.icon}
            </span>
            <h3 className="font-display text-2xl font-bold uppercase leading-tight tracking-wide">
              {r.t}
            </h3>
            <p className="text-sm leading-relaxed text-ink-soft">{r.d}</p>
          </div>
        ))}
      </div>

      <div
        data-reveal="fade"
        className="mt-10 flex flex-col items-start gap-4 sm:flex-row sm:items-center sm:justify-between"
      >
        <p className="max-w-md text-sm leading-relaxed text-ink-soft">
          Look around as much as you like — the whole floor is open to read.
          The door is only there for bidding, coaching and the drop.
        </p>
        <ArrowCta href="/apply" className="shrink-0">
          Apply for membership
        </ArrowCta>
      </div>
    </section>
  );
}
