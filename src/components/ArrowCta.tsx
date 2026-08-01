import Link from "next/link";

export default function ArrowCta({
  href,
  children,
  className = "",
}: {
  href: string;
  children: React.ReactNode;
  className?: string;
}) {
  return (
    <Link href={href} className={`group inline-flex items-stretch ${className}`}>
      <span className="flex items-center whitespace-nowrap bg-accent px-5 py-3 font-mono text-[11px] font-semibold uppercase tracking-[0.18em] text-chalk transition-colors duration-200 ease-out group-hover:bg-accent-deep">
        {children}
      </span>
      <span
        aria-hidden
        className="grid w-11 place-items-center bg-ink text-chalk"
      >
        <span className="transition-transform duration-200 ease-out group-hover:translate-x-0.5">
          →
        </span>
      </span>
    </Link>
  );
}
