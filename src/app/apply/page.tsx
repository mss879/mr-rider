import type { Metadata } from "next";
import ApplicationForm from "@/components/ApplicationForm";
import PageHero from "@/components/PageHero";

export const metadata: Metadata = {
  title: "Apply — MR.RIDER",
  description:
    "Apply for MR.RIDER membership: sign up, pay your dues, get approved by the club.",
};

const STEPS = [
  {
    n: "01",
    t: "Apply",
    d: "This form goes straight to the club admin — every answer gets read.",
  },
  {
    n: "02",
    t: "Pay your dues",
    d: "Approved riders get payment instructions by email. Dues keep the floor members-only.",
  },
  {
    n: "03",
    t: "Get approved",
    d: "The admin opens your client profile and the whole floor unlocks: prices, bids, coaching.",
  },
];

export default function ApplyPage() {
  return (
    <>
      <PageHero
        eyebrow="Membership applications · reviewed weekly"
        title="Join the club."
        blurb="One application, read by a human. Tell us what you ride and why you belong on the floor — we answer within 48 hours."
      />
      <section className="mx-auto max-w-7xl px-6 py-14 md:py-16">
        <div className="grid gap-12 lg:grid-cols-12">
          <div className="flex flex-col lg:col-span-4">
            {STEPS.map((s) => (
              <div key={s.n} className="border-b border-line py-6">
                <div className="flex items-baseline gap-4">
                  <span className="headline text-3xl text-accent">{s.n}</span>
                  <div>
                    <p className="font-display mb-1 text-xl font-bold uppercase tracking-wide">
                      {s.t}
                    </p>
                    <p className="text-sm leading-relaxed text-ink-soft">
                      {s.d}
                    </p>
                  </div>
                </div>
              </div>
            ))}
            <p className="mt-6 bg-carbon p-5 text-sm leading-relaxed text-chalk/80">
              <span className="mb-1 block font-mono text-[10px] uppercase tracking-[0.22em] text-accent">
                House rule
              </span>
              We&apos;d rather have fewer members who ride than a crowd who
              browses. Make the last answer count.
            </p>
          </div>
          <div className="lg:col-span-8">
            <ApplicationForm />
          </div>
        </div>
      </section>
    </>
  );
}
