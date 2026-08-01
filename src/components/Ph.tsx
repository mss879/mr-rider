/* Honest image placeholder — hatched block + mono label. Swapped for real
   product photography when the client supplies assets. */
export default function Ph({
  label,
  tone = "light",
  ghost,
  className = "",
}: {
  label: string;
  tone?: "light" | "dark";
  ghost?: string;
  className?: string;
}) {
  const dark = tone === "dark";
  return (
    <div
      className={`relative overflow-clip ${dark ? "hatch-dark" : "hatch-light"} ${className}`}
    >
      {ghost && (
        <span
          aria-hidden
          className={`headline pointer-events-none absolute right-3 top-2 select-none text-[3.75rem] leading-none ${
            dark ? "ghost-dark" : "ghost"
          }`}
        >
          {ghost}
        </span>
      )}
      <span
        className={`absolute bottom-2 left-3 font-mono text-[10px] uppercase tracking-[0.22em] ${
          dark ? "text-chalk/50" : "text-ink/45"
        }`}
      >
        // {label}
      </span>
    </div>
  );
}
