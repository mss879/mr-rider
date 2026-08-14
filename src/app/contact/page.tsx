import type { Metadata } from "next";
import ContactForm from "@/components/ContactForm";
import PageHero from "@/components/PageHero";

export const metadata: Metadata = {
  title: "Contact",
  description:
    "Apply for membership or reach the club about orders, coaching and the auction floor.",
};

const DETAILS = [
  {
    t: "Membership",
    d: "Applying to join? That has its own form — hit “Join the Club” or the Apply page. This form is for everything else.",
  },
  {
    t: "Email",
    d: "club@mrrider.cc",
  },
  {
    t: "Hours",
    d: "Mon – Fri · 09:00 – 18:00 CET",
  },
  {
    t: "Auction & coaching",
    d: "Lot questions and coach availability go through this form — pick the matching topic.",
  },
];

export default function ContactPage() {
  return (
    <>
      <PageHero
        eyebrow="Enquiries · answered within 48 hours"
        title="Talk to us."
        blurb="Order questions, coaching enquiries, auction lots, press — one form, pick your topic. Joining the club? Use the Apply page instead."
      />
      <section className="mx-auto max-w-7xl px-6 py-14 md:py-16">
        <div className="grid gap-12 lg:grid-cols-12">
          <div className="flex flex-col lg:col-span-4">
            {DETAILS.map((item) => (
              <div key={item.t} className="border-b border-line py-5">
                <p className="mb-1.5 font-mono text-[10px] uppercase tracking-[0.22em] text-ink-soft">
                  {item.t}
                </p>
                <p className="text-sm leading-relaxed">{item.d}</p>
              </div>
            ))}
            <p className="mt-6 bg-carbon p-5 text-sm leading-relaxed text-chalk/80">
              <span className="mb-1 block font-mono text-[10px] uppercase tracking-[0.22em] text-accent">
                Note
              </span>
              Enquiries land in the club&apos;s back office and are answered
              in order — auction lots ending soon jump the queue.
            </p>
          </div>
          <div className="lg:col-span-8">
            <ContactForm />
          </div>
        </div>
      </section>
    </>
  );
}
