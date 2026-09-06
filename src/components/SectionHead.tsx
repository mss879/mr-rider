import Link from "next/link";

/* The head of every section on the site, and — since the energy pass — the
   place its motion lives, so that a caller gets the same arrival everywhere
   without wrapping anything.

   Three moves, all in MotionProvider:
     · the eyebrow and the link fade in,
     · the headline rises out of a slot word by word ([data-split]),
     · the hairline underneath draws itself in from the left ([data-rule]).

   The rule is a real element rather than a border for that last one — a
   border has no transform to animate. Without the .motion class it is a
   1px line, exactly as the border was.

   Callers must NOT wrap this in their own [data-reveal]: the head would then
   fade in as a block while its words were also rising, and the two would
   muddy each other. */

export default function SectionHead({
  eyebrow,
  title,
  link,
  dark = false,
}: {
  eyebrow: string;
  title: string;
  link?: { href: string; label: string };
  dark?: boolean;
}) {
  return (
    <div className="relative mb-10 flex flex-col gap-4 pb-6 sm:flex-row sm:items-end sm:justify-between">
      <span
        aria-hidden
        data-rule
        className={`absolute inset-x-0 bottom-0 h-px ${dark ? "bg-line-dark" : "bg-line"}`}
      />
      <div className="min-w-0">
        <p
          data-reveal="fade"
          className={`mb-2 font-mono text-[11px] uppercase tracking-[0.22em] ${
            dark ? "text-chalk/50" : "text-ink-soft"
          }`}
        >
          {eyebrow}
        </p>
        <h2 data-split className="headline text-[clamp(2.2rem,5vw,3.8rem)]">
          {title}
        </h2>
      </div>
      {link && (
        <Link
          href={link.href}
          data-reveal="fade"
          className={`shrink-0 whitespace-nowrap font-mono text-[11px] font-semibold uppercase tracking-[0.18em] underline decoration-2 underline-offset-4 transition-colors duration-200 ease-out ${
            dark
              ? "text-chalk decoration-chalk/60 hover:text-chalk/80"
              : "text-ink decoration-ink hover:text-ink-soft"
          }`}
        >
          {link.label} →
        </Link>
      )}
    </div>
  );
}
