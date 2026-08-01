export default function PageHero({
  eyebrow,
  title,
  blurb,
  children,
}: {
  eyebrow: string;
  title: string;
  blurb?: string;
  children?: React.ReactNode;
}) {
  return (
    <section className="border-b border-line">
      <div className="mx-auto grid max-w-7xl gap-8 px-6 py-14 md:py-20 lg:grid-cols-12">
        <div className="min-w-0 lg:col-span-8">
          <p className="mb-3 font-mono text-[11px] uppercase tracking-[0.22em] text-ink-soft">
            {eyebrow}
          </p>
          <h1 className="headline text-[clamp(2.8rem,8vw,6rem)]">{title}</h1>
        </div>
        <div className="flex flex-col justify-end gap-5 lg:col-span-4 lg:border-l lg:border-line lg:pl-8">
          {blurb && (
            <p className="max-w-md text-sm leading-relaxed text-ink-soft">
              {blurb}
            </p>
          )}
          {children}
        </div>
      </div>
    </section>
  );
}
