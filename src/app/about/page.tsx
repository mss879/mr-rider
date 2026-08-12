import type { Metadata } from "next";
import ArrowCta from "@/components/ArrowCta";
import Marquee from "@/components/Marquee";
import PageHero from "@/components/PageHero";
import SectionHead from "@/components/SectionHead";
import { coaches, products } from "@/lib/data";
import { categories, directoryBrands } from "@/lib/taxonomy";

export const metadata: Metadata = {
  title: "About — MR.RIDER",
  description:
    "Why MR.RIDER is a members-only club: real stock, straight answers, riders first.",
};

const VALUES = [
  {
    t: "Straight answers",
    d: "No RRP theatre and no price tags to argue with. Ask about anything on the floor and the club answers you directly.",
  },
  {
    t: "Real stock",
    d: "Everything listed is on the floor and inspected. No dropship roulette.",
  },
  {
    t: "Riders first",
    d: "Stock drops, auction lots and coaching slots go to members before anyone else.",
  },
  {
    t: "No tourists",
    d: "The door is the point. A paid, approved membership keeps the floor serious.",
  },
];

export default function AboutPage() {
  return (
    <>
      <PageHero
        eyebrow="The club"
        title="Built like a club. Run like a shop."
        blurb="MR.RIDER started with a simple problem: good gear gets buried under noise, and good coaching hides behind hype. So we put a door on it."
      />

      <section className="mx-auto max-w-7xl px-6 py-16 md:py-20">
        <div className="grid gap-10 lg:grid-cols-12">
          <div className="lg:col-span-7">
            <h2 className="headline text-[clamp(2rem,4.5vw,3.4rem)]">
              Everything on the floor
              <br />
              <span className="text-accent">earns its place.</span>
            </h2>
          </div>
          <div className="flex flex-col gap-5 text-sm leading-relaxed text-ink-soft lg:col-span-5 lg:border-l lg:border-line lg:pl-8">
            <p>
              The shop floor carries eleven categories — from bar tape to full
              race builds — and every item is chosen and checked by people who
              ride. Fresh stock lands every morning at 09:00 in the
              daily listings. What doesn&apos;t move goes to the clearance
              market; what&apos;s rare goes to the auction floor.
            </p>
            <p>
              Around the shop sits the club: structured training programs and
              an international coaching pool, booked directly through your
              membership. One fee, one approval, everything open.
            </p>
          </div>
        </div>
      </section>

      <Marquee
        items={[
          `${categories.length} categories`,
          `${directoryBrands.length} brands`,
          `${products.length} items on the floor`,
          `${coaches.length} coaches worldwide`,
          "New stock daily — 09:00",
        ]}
      />

      {/* HOW ENTRY WORKS */}
      <section className="mx-auto max-w-7xl px-6 py-16 md:py-20">
        <SectionHead eyebrow="Membership" title="How entry works." />
        <div className="grid gap-px border border-line bg-line md:grid-cols-3">
          {[
            {
              n: "01",
              t: "Sign up",
              d: "Create your account and tell us what you ride. Takes two minutes.",
            },
            {
              n: "02",
              t: "Pay your dues",
              d: "The membership fee goes straight to the club — it keeps the floor members-only.",
            },
            {
              n: "03",
              t: "Get approved",
              d: "An admin reviews and unlocks your access: full shop, auction bids, coaching.",
            },
          ].map((s) => (
            <div key={s.n} className="flex flex-col gap-6 bg-paper p-7">
              <span className="headline text-5xl text-accent">{s.n}</span>
              <div>
                <p className="font-display mb-1 text-2xl font-bold uppercase tracking-wide">
                  {s.t}
                </p>
                <p className="text-sm leading-relaxed text-ink-soft">{s.d}</p>
              </div>
            </div>
          ))}
        </div>
      </section>

      {/* VALUES */}
      <section className="border-t border-line bg-carbon text-chalk">
        <div className="mx-auto max-w-7xl px-6 py-16 md:py-20">
          <SectionHead dark eyebrow="House rules" title="What we hold to." />
          <div className="grid gap-px border border-line-dark bg-line-dark sm:grid-cols-2 xl:grid-cols-4">
            {VALUES.map((v) => (
              <div key={v.t} className="flex flex-col gap-4 bg-carbon p-7">
                <h3 className="headline text-2xl">{v.t}</h3>
                <p className="text-sm leading-relaxed text-chalk/60">{v.d}</p>
              </div>
            ))}
          </div>
          <div className="mt-12 flex flex-col items-start gap-4 sm:flex-row sm:items-center sm:justify-between">
            <p className="font-mono text-[11px] uppercase tracking-[0.18em] text-chalk/50">
              Applications reviewed weekly
            </p>
            <ArrowCta href="/apply">Apply for membership</ArrowCta>
          </div>
        </div>
      </section>
    </>
  );
}
