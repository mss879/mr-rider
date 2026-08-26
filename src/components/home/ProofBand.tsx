/* Scale, in four numbers. Every one of them is counted from the live catalog
   rather than typed in, so the band cannot drift out of date the way a
   hand-written "500+ products" always does.

   The number is rendered into the HTML as text: crawlers, reduced-motion
   readers and anyone whose JS never arrives see the real figure. The counter
   in MotionProvider only animates up to what is already there, and it reads
   the rendered width for its zero-padding, which is what gives the digits
   their odometer feel. */

type Stat = { value: number; display: string; label: string; sub: string };

export default function ProofBand({
  categoryCount,
  brandCount,
  productCount,
  coachCount,
  countryCount,
}: {
  categoryCount: number;
  brandCount: number;
  productCount: number;
  coachCount: number;
  countryCount: number;
}) {
  const pad = (n: number) => String(n).padStart(2, "0");

  const stats: Stat[] = [
    {
      value: categoryCount,
      display: pad(categoryCount),
      label: "Aisles",
      sub: "One shop floor",
    },
    {
      value: brandCount,
      display: pad(brandCount),
      label: "Brands",
      sub: "Stocked and checked",
    },
    {
      value: productCount,
      display: pad(productCount),
      label: "Items",
      sub: "On the floor right now",
    },
    {
      value: coachCount,
      display: pad(coachCount),
      label: "Coaches",
      sub: `Across ${countryCount} countries`,
    },
  ];

  return (
    <section className="border-y border-line bg-carbon text-chalk">
      <div className="mx-auto max-w-7xl px-6 py-14 md:py-16">
        <p
          data-reveal="fade"
          className="mb-10 font-mono text-[11px] uppercase tracking-[0.22em] text-chalk/50"
        >
          The floor, counted this morning
        </p>
        {/* Revealed as one block, not cell by cell: the hairlines between the
            cells are this grid's own background showing through the gap, and
            fading the cells alone would leave a bare grey slab on screen. */}
        <dl
          data-reveal
          className="grid grid-cols-2 gap-px bg-line-dark lg:grid-cols-4"
        >
          {stats.map((s) => (
            <div key={s.label} className="flex flex-col gap-1 bg-carbon p-6 md:p-8">
              <dd className="headline text-[clamp(3rem,7vw,5rem)] text-chalk">
                <span data-count={s.value}>{s.display}</span>
              </dd>
              <dt className="font-display text-xl font-bold uppercase tracking-wide">
                {s.label}
              </dt>
              <p className="font-mono text-[10px] uppercase tracking-[0.18em] text-chalk/45">
                {s.sub}
              </p>
            </div>
          ))}
        </dl>
      </div>
    </section>
  );
}
