import ArrowCta from "@/components/ArrowCta";
import SectionHead from "@/components/SectionHead";

/* The first argument the home page makes. It sits directly under the hero
   because a visitor who has not yet decided why a shop would put a door on
   itself will not scroll past the category grid to find out.

   Every claim here is one the site actually keeps: no tags on the floor,
   inquiries answered in a thread, the 09:00 drop, admin-reviewed entry. */

type Reason = { n: string; t: string; d: string };

export default function WhyClub({
  coachCount,
  countryCount,
  brandCount,
}: {
  coachCount: number;
  countryCount: number;
  brandCount: number;
}) {
  const reasons: Reason[] = [
    {
      n: "01",
      t: "No price theatre",
      d: "Nothing on the floor carries a tag, so there is no inflated RRP to be talked down from. You ask, and the club answers with a real number.",
    },
    {
      n: "02",
      t: "Every listing is real stock",
      d: "If it is on the floor it is in the building and it has been checked by someone who rides. No dropship roulette, no phantom lead times.",
    },
    {
      n: "03",
      t: "First call on the drop",
      d: "New stock lands at 09:00 every morning. Members see it, ask about it and claim it before anybody else gets near it.",
    },
    {
      n: "04",
      t: "Answers, not a checkout",
      d: `Open an inquiry and you get a thread — spec sheets, extra photos, honest words on fit and condition from ${brandCount} brands' worth of stock.`,
    },
    {
      n: "05",
      t: "Coaching in the same membership",
      d: `${coachCount} coaches across ${countryCount} countries and four structured programs, booked on the same login that buys your wheels.`,
    },
    {
      n: "06",
      t: "A door, not a turnstile",
      d: "Every application is read by a human. That is what keeps the floor serious, the stock good and the replies fast.",
    },
  ];

  return (
    <section className="mx-auto max-w-7xl px-6 py-16 md:py-20">
      <div data-reveal="fade">
        <SectionHead
          eyebrow="Why the club"
          title="Why riders join."
          link={{ href: "/about", label: "The club story" }}
        />
      </div>

      <div className="grid grid-cols-1 border-l border-t border-line sm:grid-cols-2 lg:grid-cols-3">
        {reasons.map((r) => (
          <div
            key={r.n}
            data-reveal
            className="group relative flex flex-col gap-5 border-b border-r border-line p-7 transition-colors duration-200 ease-out hover:bg-chalk"
          >
            {/* The rule thickens into the accent on hover — the same hairline
                language the rest of the floor uses, just louder. */}
            <span
              aria-hidden
              className="absolute inset-x-0 bottom-[-1px] h-[2px] origin-left scale-x-0 bg-accent transition-transform duration-300 ease-out group-hover:scale-x-100"
            />
            <span className="font-mono text-[11px] tracking-[0.22em] text-ink-soft transition-colors duration-200 ease-out group-hover:text-accent-deep">
              {r.n}
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
