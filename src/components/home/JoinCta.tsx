import Link from "next/link";
import ArrowCta from "@/components/ArrowCta";

/* The last thing on the page. Two doors on purpose: applying is the ask, but
   a rider account is the smaller step for someone who wants to try the club
   by asking about one product first — and it is a real door, not a decoy. */

export default function JoinCta({ productCount }: { productCount: number }) {
  return (
    <section className="hatch-dark relative overflow-clip border-t border-line text-chalk">
      <span
        aria-hidden
        className="headline ghost-dark pointer-events-none absolute -right-2 top-2 select-none text-[clamp(4rem,14vw,11rem)] leading-none"
      >
        JOIN
      </span>

      <div className="relative mx-auto max-w-7xl px-6 py-20 md:py-28">
        <p
          data-reveal="fade"
          className="mb-5 font-mono text-[11px] uppercase tracking-[0.22em] text-chalk/50"
        >
          Membership
        </p>

        <h2
          data-reveal="fade"
          className="headline max-w-4xl text-[clamp(2.6rem,8vw,6rem)]"
        >
          The floor is open.
          <br />
          <span className="text-chalk">The door isn&apos;t.</span>
        </h2>

        <p
          data-reveal="fade"
          className="mt-8 max-w-lg text-sm leading-relaxed text-chalk/65"
        >
          {productCount} items on the racks, a drop every morning at 09:00 and
          a live auction floor — waiting on one approved application. Two
          minutes to apply, read by a person, reviewed weekly.
        </p>

        <div
          data-reveal
          className="mt-10 flex flex-col items-start gap-5 sm:flex-row sm:items-center"
        >
          <ArrowCta href="/apply">Apply for membership</ArrowCta>
          <Link
            href="/account"
            className="font-mono text-[11px] font-semibold uppercase tracking-[0.18em] text-chalk underline decoration-chalk/60 decoration-2 underline-offset-4 transition-colors duration-200 ease-out hover:text-chalk/80"
          >
            Or just open an inquiry first →
          </Link>
        </div>
      </div>
    </section>
  );
}
