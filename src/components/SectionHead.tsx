import Link from "next/link";

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
    <div
      className={`mb-10 flex flex-col gap-4 border-b pb-6 sm:flex-row sm:items-end sm:justify-between ${
        dark ? "border-line-dark" : "border-line"
      }`}
    >
      <div className="min-w-0">
        <p
          className={`mb-2 font-mono text-[11px] uppercase tracking-[0.22em] ${
            dark ? "text-chalk/50" : "text-ink-soft"
          }`}
        >
          {eyebrow}
        </p>
        <h2 className="headline text-[clamp(2.2rem,5vw,3.8rem)]">{title}</h2>
      </div>
      {link && (
        <Link
          href={link.href}
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
