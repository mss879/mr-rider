import Link from "next/link";

const SHOP_LINKS = [
  { href: "/shop", label: "Shop All" },
  { href: "/daily-listings", label: "Daily Listings" },
  { href: "/auction", label: "Auction" },
  { href: "/clearance", label: "Clearance Market" },
];

const CLUB_LINKS = [
  { href: "/coaching", label: "Coaching" },
  { href: "/coaching#programs", label: "Training Programs" },
  { href: "/coaching#coaches", label: "Coaching Pool" },
  { href: "/about", label: "About the Club" },
];

export default function SiteFooter() {
  return (
    <footer className="border-t-2 border-accent bg-carbon text-chalk">
      <div className="overflow-clip" aria-hidden>
        <p className="headline ghost-dark -mb-[0.16em] select-none whitespace-nowrap text-[clamp(4rem,16.5vw,15rem)] leading-none">
          MR.RIDER
        </p>
      </div>
      <div className="mx-auto grid max-w-7xl gap-10 px-6 py-14 md:grid-cols-2 lg:grid-cols-4">
        <div>
          <p className="headline mb-4 text-2xl">MR.RIDER</p>
          <p className="max-w-xs text-sm leading-relaxed text-chalk/60">
            A members-only cycling club. One shop floor, daily listings, an
            auction, a clearance market and an international coaching pool —
            behind one door.
          </p>
        </div>
        <div>
          <p className="mb-4 font-mono text-[11px] uppercase tracking-[0.22em] text-chalk/40">
            The Floor
          </p>
          <ul className="flex flex-col gap-3">
            {SHOP_LINKS.map((l) => (
              <li key={l.href}>
                <Link
                  href={l.href}
                  className="font-mono text-xs uppercase tracking-[0.16em] transition-colors duration-200 ease-out hover:text-accent"
                >
                  {l.label}
                </Link>
              </li>
            ))}
          </ul>
        </div>
        <div>
          <p className="mb-4 font-mono text-[11px] uppercase tracking-[0.22em] text-chalk/40">
            The Club
          </p>
          <ul className="flex flex-col gap-3">
            {CLUB_LINKS.map((l) => (
              <li key={l.href}>
                <Link
                  href={l.href}
                  className="font-mono text-xs uppercase tracking-[0.16em] transition-colors duration-200 ease-out hover:text-accent"
                >
                  {l.label}
                </Link>
              </li>
            ))}
          </ul>
        </div>
        <div>
          <p className="mb-4 font-mono text-[11px] uppercase tracking-[0.22em] text-chalk/40">
            Entry
          </p>
          <p className="mb-4 text-sm leading-relaxed text-chalk/60">
            Sign up, pay your dues, get approved by the club. Applications
            reviewed weekly.
          </p>
          <Link
            href="/apply"
            className="inline-block bg-accent px-4 py-2.5 font-mono text-[10px] font-semibold uppercase tracking-[0.18em] text-chalk transition-colors duration-200 ease-out hover:bg-accent-deep"
          >
            Apply Now →
          </Link>
        </div>
      </div>
      <div className="border-t border-line-dark">
        <div className="mx-auto flex max-w-7xl flex-col gap-2 px-6 py-5 font-mono text-[10px] uppercase tracking-[0.18em] text-chalk/40 sm:flex-row sm:justify-between">
          <span>© 2026 MR.RIDER Club</span>
          <span className="flex gap-6">
            <span>Members only · All sales final on the auction floor</span>
            <Link
              href="/admin"
              className="transition-colors duration-200 ease-out hover:text-accent"
            >
              Admin
            </Link>
          </span>
        </div>
      </div>
    </footer>
  );
}
