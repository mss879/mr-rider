import type { Metadata } from "next";
import AdminPanel from "@/components/AdminPanel";

export const metadata: Metadata = {
  title: "Admin",
  robots: { index: false, follow: false },
};

export default function AdminPage() {
  return (
    <>
      <section className="border-b border-line">
        <div className="mx-auto max-w-7xl px-6 py-12">
          <p className="mb-3 font-mono text-[11px] uppercase tracking-[0.22em] text-ink-soft">
            Club administration · admin@mrrider.lk
          </p>
          <h1 className="headline text-[clamp(2.4rem,6vw,4.5rem)]">
            The back office.
          </h1>
        </div>
      </section>
      <div className="pt-10">
        <AdminPanel />
      </div>
    </>
  );
}
