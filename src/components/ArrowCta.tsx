import Link from "next/link";

export default function ArrowCta({
  href,
  children,
  className = "",
  tone = "ink",
}: {
  href: string;
  children: React.ReactNode;
  className?: string;
  /* The default ink button disappears on a dark band — it is near-black on
     near-black. `chalk` inverts it for the photographic sections. */
  tone?: "ink" | "chalk";
}) {
  const body =
    tone === "chalk"
      ? "bg-chalk text-ink group-hover:bg-paper"
      : "bg-ink text-chalk group-hover:bg-ink-soft";
  const arrow = tone === "chalk" ? "bg-chalk text-ink" : "bg-ink text-chalk";

  return (
    <Link href={href} className={`group inline-flex items-stretch ${className}`}>
      <span
        className={`flex items-center whitespace-nowrap px-5 py-3 font-mono text-[11px] font-semibold uppercase tracking-[0.18em] transition-colors duration-200 ease-out ${body}`}
      >
        {children}
      </span>
      <span aria-hidden className={`grid w-11 place-items-center ${arrow}`}>
        <span className="transition-transform duration-200 ease-out group-hover:translate-x-0.5">
          →
        </span>
      </span>
    </Link>
  );
}
