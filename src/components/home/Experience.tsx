import Link from "next/link";
import SectionHead from "@/components/SectionHead";

/* "One membership, every room." The club is six separate things behind one
   door, and a visitor who only sees the shop grid has no idea the other five
   exist. This is the index of the whole experience.

   The `access` tag is deliberately honest rather than salesy: it says out loud
   which rooms are readable by anyone and which ones the membership actually
   unlocks, which is the same rule membership.ts enforces in code. */

type Room = {
  n: string;
  name: string;
  href: string;
  d: string;
  access: string;
  open: boolean;
};

export default function Experience({
  categoryCount,
  brandCount,
  coachCount,
  countryCount,
  lotCount,
}: {
  categoryCount: number;
  brandCount: number;
  coachCount: number;
  countryCount: number;
  lotCount: number;
}) {
  const rooms: Room[] = [
    {
      n: "01",
      name: "The shop floor",
      href: "/shop",
      d: `${categoryCount} aisles and ${brandCount} brands under one roof — bar tape to full race builds.`,
      access: "Open to browse",
      open: true,
    },
    {
      n: "02",
      name: "Daily listings",
      href: "/daily-listings",
      d: "Today's and yesterday's drops, landing at 09:00 every morning.",
      access: "Members first",
      open: false,
    },
    {
      n: "03",
      name: "The inquiry desk",
      href: "/account",
      d: "Ask about anything on the floor. Spec sheets, photos and straight answers in your own thread.",
      access: "Rider account",
      open: true,
    },
    {
      n: "04",
      name: "The auction floor",
      href: "/auction",
      d: `${lotCount} live lots — race-used framesets, collector steel and one-of-one club pieces.`,
      access: "Bidding unlocks",
      open: false,
    },
    {
      n: "05",
      name: "Clearance market",
      href: "/clearance",
      d: "End of line, last sizes and race-used stock on its way out of the building.",
      access: "Open to browse",
      open: true,
    },
    {
      n: "06",
      name: "The coaching pool",
      href: "/coaching",
      d: `${coachCount} coaches across ${countryCount} countries and four structured programs.`,
      access: "Members only",
      open: false,
    },
  ];

  return (
    <section className="border-y border-line bg-carbon text-chalk">
      <div className="mx-auto max-w-7xl px-6 py-16 md:py-20">
        <div data-reveal="fade">
          <SectionHead
            dark
            eyebrow="Inside the membership"
            title="One door. Six rooms."
          />
        </div>

        <p
          data-reveal="fade"
          className="-mt-4 mb-10 max-w-2xl text-sm leading-relaxed text-chalk/60"
        >
          MR.RIDER is not a checkout with a login bolted on. It is a shop, a
          daily drop, an auction house, a clearance market, a coaching pool and
          a conversation — and one approved membership opens all of them on the
          same account.
        </p>

        <ul className="border-t border-line-dark">
          {rooms.map((r) => (
            <li key={r.n} data-reveal>
              <Link
                href={r.href}
                className="group grid grid-cols-[2.75rem_minmax(0,1fr)_auto] items-baseline gap-x-4 gap-y-2 border-b border-line-dark py-6 transition-colors duration-200 ease-out hover:bg-carbon-2 md:grid-cols-[3.5rem_minmax(0,18rem)_minmax(0,1fr)_10rem_2rem] md:items-center md:gap-x-6"
              >
                <span className="font-mono text-[11px] tracking-[0.22em] text-chalk/35 transition-colors duration-200 ease-out group-hover:text-accent">
                  {r.n}
                </span>

                <span className="headline min-w-0 text-[clamp(1.6rem,3.6vw,2.4rem)] transition-colors duration-200 ease-out group-hover:text-accent">
                  {r.name}
                </span>

                <span className="col-start-2 max-w-md text-sm leading-relaxed text-chalk/55 md:col-start-auto md:max-w-none">
                  {r.d}
                </span>

                <span className="col-start-2 md:col-start-auto md:justify-self-start">
                  <span
                    className={`inline-block whitespace-nowrap border px-2.5 py-1 font-mono text-[10px] uppercase tracking-[0.16em] ${
                      r.open
                        ? "border-line-dark text-chalk/50"
                        : "border-accent/50 text-accent"
                    }`}
                  >
                    {r.access}
                  </span>
                </span>

                <span
                  aria-hidden
                  className="hidden text-chalk/40 transition-all duration-200 ease-out group-hover:translate-x-1 group-hover:text-accent md:block md:justify-self-end"
                >
                  →
                </span>
              </Link>
            </li>
          ))}
        </ul>
      </div>
    </section>
  );
}
