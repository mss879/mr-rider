import Link from "next/link";
import Lock from "@/components/Lock";

export default function LockedNotice({
  children,
}: {
  children?: React.ReactNode;
}) {
  return (
    <div className="border-b border-line bg-chalk">
      <div className="mx-auto flex max-w-7xl flex-wrap items-center gap-x-6 gap-y-2 px-6 py-3">
        <p className="flex items-center gap-2.5 font-mono text-[11px] font-semibold uppercase tracking-[0.16em]">
          <span className="grid size-6 shrink-0 place-items-center bg-ink text-chalk">
            <Lock />
          </span>
          {children ??
            "Member actions are locked until your membership is approved"}
        </p>
        <Link
          href="/apply"
          className="whitespace-nowrap font-mono text-[11px] font-semibold uppercase tracking-[0.16em] text-ink underline decoration-ink decoration-2 underline-offset-4 hover:text-ink-soft"
        >
          Apply now →
        </Link>
      </div>
    </div>
  );
}
