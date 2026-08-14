import type { Metadata } from "next";
import Link from "next/link";
import PageHero from "@/components/PageHero";
import Ph from "@/components/Ph";
import SectionHead from "@/components/SectionHead";
import Lock from "@/components/Lock";
import { usd } from "@/lib/data";
import { getCoaches, getPrograms } from "@/lib/db";
import { getMembershipStatus, isApproved } from "@/lib/membership";

export const revalidate = 60;

export const metadata: Metadata = {
  title: "Coaching",
  description:
    "Structured training programs and an international coaching pool, booked through your membership.",
};

export default async function CoachingPage() {
  const [programs, coaches, status] = await Promise.all([
    getPrograms(),
    getCoaches(),
    getMembershipStatus(),
  ]);
  const locked = !isApproved(status);
  const countries = new Set(coaches.map((c) => c.code)).size;

  return (
    <>
      <PageHero
        eyebrow={`${programs.length} programs · ${coaches.length} coaches · ${countries} countries`}
        title="Coaching."
        blurb="Pick a structured block or work one-to-one with the international pool. Coaching is booked through your membership once you're approved."
      />

      {/* TRAINING PROGRAMS */}
      <section id="programs" className="mx-auto max-w-7xl scroll-mt-24 px-6 py-16 md:py-20">
        <SectionHead
          eyebrow="Training programs"
          title="Pick a block. Do the work."
        />
        <div className="grid gap-5 md:grid-cols-2 xl:grid-cols-4">
          {programs.map((pr) => (
            <article
              key={pr.id}
              className="group flex flex-col border border-line bg-chalk transition-all duration-200 ease-out hover:-translate-y-1 hover:border-ink"
            >
              <div className="border-b border-line p-5">
                <p className="mb-3 font-mono text-[10px] uppercase tracking-[0.2em] text-ink-soft">
                  {pr.weeks} weeks · {pr.level}
                </p>
                <h3 className="headline text-3xl">{pr.name}</h3>
              </div>
              <div className="flex flex-1 flex-col gap-5 p-5">
                <p className="text-sm leading-relaxed text-ink-soft">
                  {pr.focus}
                </p>
                <div className="mt-auto flex items-center justify-between">
                  {locked ? (
                    <span className="flex items-center gap-2 font-mono text-[11px] font-semibold uppercase tracking-[0.14em] text-ink-soft">
                      <Lock /> Members only
                    </span>
                  ) : (
                    <span className="font-mono text-lg font-semibold">
                      {usd(pr.price)}
                    </span>
                  )}
                  <Link
                    href={locked ? "/apply" : "/contact"}
                    className="font-mono text-[10px] font-semibold uppercase tracking-[0.16em] underline decoration-accent decoration-2 underline-offset-4 transition-colors duration-200 ease-out hover:text-accent-deep"
                  >
                    {locked ? "Apply →" : "Enquire →"}
                  </Link>
                </div>
              </div>
            </article>
          ))}
        </div>
      </section>

      {/* INTERNATIONAL COACHING POOL */}
      <section
        id="coaches"
        className="scroll-mt-24 border-t border-line bg-carbon text-chalk"
      >
        <div className="mx-auto max-w-7xl px-6 py-16 md:py-20">
          <SectionHead
            dark
            eyebrow="International coaching pool"
            title={`${coaches.length} coaches. ${countries} countries.`}
          />
          <div className="grid gap-5 sm:grid-cols-2 xl:grid-cols-4">
            {coaches.map((c) => {
              const initials = c.name
                .split(" ")
                .map((w) => w[0])
                .join("");
              return (
                <article
                  key={c.id}
                  className="flex flex-col border border-line-dark bg-carbon-2"
                >
                  <Ph
                    tone="dark"
                    label={c.discipline}
                    ghost={initials}
                    className="aspect-[4/3]"
                  />
                  <div className="flex flex-1 flex-col gap-2 border-t border-line-dark p-4">
                    <div className="flex items-start justify-between gap-3">
                      <h3 className="font-display text-xl font-bold uppercase leading-tight tracking-wide">
                        {c.name}
                      </h3>
                      <span className="shrink-0 bg-chalk px-2 py-1 font-mono text-[10px] tracking-[0.14em] text-ink">
                        {c.code}
                      </span>
                    </div>
                    <p className="font-mono text-[10px] uppercase tracking-[0.18em] text-chalk/60">
                      {c.discipline} · {c.languages}
                    </p>
                    <p
                      className={`mt-auto pt-2 font-mono text-[10px] font-semibold uppercase tracking-[0.16em] ${
                        c.slots > 0 ? "text-accent" : "text-chalk/40"
                      }`}
                    >
                      {c.slots > 0 ? `${c.slots} slots open` : "Waitlist"}
                    </p>
                  </div>
                </article>
              );
            })}
          </div>
          <p className="mt-10 font-mono text-[11px] uppercase tracking-[0.18em] text-chalk/50">
            Coaching is booked through your membership dashboard once approved
          </p>
        </div>
      </section>
    </>
  );
}
