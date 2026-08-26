import ArrowCta from "@/components/ArrowCta";

/* The single strangest thing about this shop is that nothing has a price on
   it. Left unexplained that reads as evasion; explained, it is the reason the
   club exists. So the model gets its own section, next to a mock-up of the
   thread it produces — same bubble treatment as the real InquiryThread, so
   what a visitor sees here is what they actually get.

   The thread is labelled as an example on purpose. It is an illustration of
   the interface, not a transcript of a real conversation. */

const STEPS = [
  {
    n: "01",
    t: "Hit club price",
    d: "Every card on the floor has the button. A snapshot of the product travels with the thread, so retiring stock never erases the conversation.",
  },
  {
    n: "02",
    t: "The club answers you",
    d: "A real person replies with the number, and with whatever the number depends on — spec sheet, extra photos, honest words on fit and condition.",
  },
  {
    n: "03",
    t: "The thread stays yours",
    d: "Ask again months later and it picks up where it left off. Threads are never deleted, and both sides can attach files.",
  },
];

export default function InquiryModel() {
  return (
    <section className="border-t border-line bg-paper-2">
      <div className="mx-auto grid max-w-7xl gap-12 px-6 py-16 md:py-20 lg:grid-cols-12 lg:gap-16">
        <div className="flex flex-col gap-8 lg:col-span-6">
          <div data-reveal="fade">
            <p className="mb-3 font-mono text-[11px] uppercase tracking-[0.22em] text-ink-soft">
              No price tags
            </p>
            <h2 className="headline text-[clamp(2.2rem,5vw,3.8rem)]">
              Ask a person.
              <br />
              <span className="text-ink">Get a real number.</span>
            </h2>
          </div>

          <p data-reveal="fade" className="max-w-md text-sm leading-relaxed text-ink-soft">
            Condition, spec, sizing and what is actually left in the building
            all move the number. A sticker on a card cannot tell you any of
            that, so we took the stickers off and put a conversation there
            instead.
          </p>

          <ol className="flex flex-col">
            {STEPS.map((s) => (
              <li
                key={s.n}
                data-reveal
                className="grid grid-cols-[2.5rem_minmax(0,1fr)] gap-4 border-t border-line py-5"
              >
                <span className="headline text-2xl text-ink">{s.n}</span>
                <div className="min-w-0">
                  <p className="font-display mb-1 text-xl font-bold uppercase tracking-wide">
                    {s.t}
                  </p>
                  <p className="text-sm leading-relaxed text-ink-soft">{s.d}</p>
                </div>
              </li>
            ))}
          </ol>

          <div data-reveal="fade">
            <ArrowCta href="/account">Create a rider account</ArrowCta>
          </div>
        </div>

        {/* Illustration of the inquiry interface — same bubbles as the live
            thread, so this is a preview rather than a stylised marketing shot. */}
        <div className="lg:col-span-6">
          <figure data-reveal className="lg:sticky lg:top-28">
            <div className="border border-line bg-chalk">
              <div className="flex items-center justify-between gap-4 border-b border-line px-4 py-3">
                <div className="min-w-0">
                  <p className="font-display truncate text-lg font-bold uppercase tracking-wide">
                    Team-Issue SL9 Frameset
                  </p>
                  <p className="font-mono text-[10px] uppercase tracking-[0.18em] text-ink-soft">
                    Framesets · inquiry open
                  </p>
                </div>
                <span className="shrink-0 bg-ink px-2 py-1 font-mono text-[10px] font-semibold tracking-[0.12em] text-chalk">
                  OPEN
                </span>
              </div>

              <ul className="flex flex-col gap-3 bg-paper-2 p-4">
                <li className="flex flex-col items-end">
                  <div className="max-w-[85%] border border-ink bg-ink p-3 text-chalk">
                    <p className="mb-1.5 font-mono text-[9px] uppercase tracking-[0.18em] text-chalk/60">
                      Rider · 09:14
                    </p>
                    <p className="text-sm leading-relaxed">
                      Is the 54 still on the floor, and what shape is the
                      bottom bracket in?
                    </p>
                  </div>
                </li>

                <li className="flex flex-col items-start">
                  <div className="max-w-[85%] border border-line bg-chalk p-3 text-ink">
                    <p className="mb-1.5 font-mono text-[9px] uppercase tracking-[0.18em] text-ink-soft">
                      MR.RIDER · 09:31
                    </p>
                    <p className="text-sm leading-relaxed">
                      It is — one season race-used, workshop inspected, fresh
                      bearings. Spec sheet and two more photos attached.
                    </p>
                    <ul className="mt-2.5 flex flex-wrap gap-2">
                      <li className="flex items-center gap-2 border border-line bg-paper-2 px-2.5 py-1.5">
                        <span className="font-mono text-[9px] font-semibold uppercase tracking-[0.14em] text-ink">
                          PDF
                        </span>
                        <span className="truncate text-xs">spec-sheet.pdf</span>
                      </li>
                      <li className="flex items-center gap-2 border border-line bg-paper-2 px-2.5 py-1.5">
                        <span className="font-mono text-[9px] font-semibold uppercase tracking-[0.14em] text-ink">
                          IMG
                        </span>
                        <span className="truncate text-xs">bb-shell.webp</span>
                      </li>
                    </ul>
                  </div>
                </li>

                <li className="flex flex-col items-end">
                  <div className="max-w-[85%] border border-ink bg-ink p-3 text-chalk">
                    <p className="mb-1.5 font-mono text-[9px] uppercase tracking-[0.18em] text-chalk/60">
                      Rider · 09:36
                    </p>
                    <p className="text-sm leading-relaxed">Hold it for me.</p>
                  </div>
                </li>
              </ul>
            </div>
            <figcaption className="mt-3 font-mono text-[10px] uppercase tracking-[0.18em] text-ink-soft">
              {"// "}Example thread — this is the interface, not a real
              customer
            </figcaption>
          </figure>
        </div>
      </div>
    </section>
  );
}
