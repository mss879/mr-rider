import ArrowCta from "@/components/ArrowCta";
import SectionHead from "@/components/SectionHead";

/* The objections, answered before they become reasons to leave.

   Built on <details>/<summary>: no JavaScript, keyboard and screen-reader
   behaviour for free, and the answers are in the DOM for search engines even
   while collapsed. The shared `name` makes it an exclusive accordion in
   browsers that support it and simply allows several open at once in the ones
   that do not — which is a fine place to land. */

const QA = [
  {
    q: "Can I look around before I join?",
    a: "Yes. The whole shop floor, the auction and the coaching pool are open to read without an account. The door is only there for bidding, coaching bookings and first call on the morning drop.",
  },
  {
    q: "Do I need a membership to ask about a product?",
    a: "No. A rider account — an email and a password — is enough to open an inquiry on anything on the floor. A rider account and a membership are deliberately separate things: anyone can ask, members get the floor.",
  },
  {
    q: "Why is there no price on anything?",
    a: "Because condition, spec, sizing and what is actually left in the building all move the number, and a sticker cannot tell you any of that. Ask on the product and the club answers in your thread, with the spec sheet and extra photos attached.",
  },
  {
    q: "Why is there a membership fee at all?",
    a: "It keeps the floor members-only, and it pays for the part of this that costs real time: inspecting every item that comes in and answering inquiries with a person rather than a template.",
  },
  {
    q: "How long does approval take?",
    a: "Your application is read by an admin rather than scored by a script, and applications are reviewed weekly. You will be told either way.",
  },
  {
    q: "What exactly unlocks when I am approved?",
    a: "Bidding on the auction floor, booking from the coaching pool and members-first access to the 09:00 daily drop — all on the same login you already have.",
  },
  {
    q: "What happens to my inquiry threads?",
    a: "They stay. Threads are never deleted, so asking again months later picks up where you left off. Anything attached to one lives in a private store and is served through short-lived links that only you and the club can open.",
  },
];

export default function ClubFaq() {
  return (
    <section id="faq" className="border-t border-line">
      <div className="mx-auto max-w-7xl px-6 py-16 md:py-20">
        <div data-reveal="fade">
          <SectionHead eyebrow="Before you apply" title="The honest answers." />
        </div>

        <div className="grid gap-12 lg:grid-cols-12 lg:gap-16">
          <div className="lg:col-span-4">
            <div
              data-reveal
              className="bg-carbon p-7 text-chalk lg:sticky lg:top-28"
            >
              <p className="mb-3 font-mono text-[10px] uppercase tracking-[0.22em] text-accent">
                Still deciding
              </p>
              <p className="headline mb-4 text-3xl">Ask us instead.</p>
              <p className="mb-6 text-sm leading-relaxed text-chalk/65">
                Anything not covered here, put it to the club directly. The
                same people who answer product inquiries read the contact form.
              </p>
              <ArrowCta href="/contact">Talk to the club</ArrowCta>
            </div>
          </div>

          <div className="lg:col-span-8">
            <ul className="border-t border-line">
              {QA.map((item) => (
                <li key={item.q} data-reveal className="border-b border-line">
                  <details name="club-faq" className="group">
                    <summary className="flex cursor-pointer list-none items-center justify-between gap-6 py-5 transition-colors duration-200 ease-out hover:text-accent-deep [&::-webkit-details-marker]:hidden">
                      <span className="font-display min-w-0 text-xl font-bold uppercase leading-tight tracking-wide">
                        {item.q}
                      </span>
                      <span
                        aria-hidden
                        className="grid size-7 shrink-0 place-items-center border border-line text-lg leading-none transition-transform duration-300 ease-out group-open:rotate-45 group-open:border-accent group-open:text-accent"
                      >
                        +
                      </span>
                    </summary>
                    <p className="max-w-2xl pb-6 pr-12 text-sm leading-relaxed text-ink-soft">
                      {item.a}
                    </p>
                  </details>
                </li>
              ))}
            </ul>
          </div>
        </div>
      </div>
    </section>
  );
}
