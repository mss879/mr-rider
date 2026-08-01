"use client";

import Link from "next/link";
import { usePathname } from "next/navigation";
import { useEffect, useState } from "react";

const NAV = [
  { href: "/shop", label: "Shop" },
  { href: "/daily-listings", label: "Daily Listings" },
  { href: "/coaching", label: "Coaching" },
  { href: "/auction", label: "Auction" },
  { href: "/clearance", label: "Clearance" },
  { href: "/about", label: "About" },
  { href: "/contact", label: "Contact" },
];

export default function SiteHeader() {
  const [open, setOpen] = useState(false);
  const pathname = usePathname();

  useEffect(() => {
    setOpen(false);
  }, [pathname]);

  useEffect(() => {
    document.body.style.overflow = open ? "hidden" : "";
    return () => {
      document.body.style.overflow = "";
    };
  }, [open]);

  return (
    <>
      <p className="bg-carbon px-4 py-1.5 text-center font-mono text-[10px] uppercase tracking-[0.2em] text-chalk/80">
        Members only · sign up → dues → admin approval ·{" "}
        <span className="text-accent">new stock daily 09:00</span>
      </p>
      <header className="sticky top-0 z-40 border-b border-line bg-paper/95 backdrop-blur">
        <div className="mx-auto flex max-w-7xl items-center justify-between gap-6 px-6 py-4">
          <Link
            href="/"
            className="headline shrink-0 text-2xl"
            aria-label="MR.RIDER — home"
          >
            MR.RIDER
          </Link>
          <nav className="hidden items-center gap-6 lg:flex" aria-label="Main">
            {NAV.map((item) => {
              const active = pathname.startsWith(item.href);
              return (
                <Link
                  key={item.href}
                  href={item.href}
                  className={`whitespace-nowrap font-mono text-[11px] uppercase tracking-[0.16em] transition-colors duration-200 ease-out hover:text-accent-deep ${
                    active
                      ? "text-accent-deep underline decoration-accent decoration-2 underline-offset-8"
                      : "text-ink"
                  }`}
                >
                  {item.label}
                </Link>
              );
            })}
          </nav>
          <div className="flex items-center gap-4">
            <Link
              href="/apply"
              className="hidden whitespace-nowrap bg-accent px-4 py-2.5 font-mono text-[10px] font-semibold uppercase tracking-[0.18em] text-chalk transition-colors duration-200 ease-out hover:bg-accent-deep md:inline-block"
            >
              Join the Club
            </Link>
            <button
              type="button"
              onClick={() => setOpen(true)}
              aria-expanded={open}
              aria-label="Open menu"
              className="flex flex-col gap-1.5 p-2 lg:hidden"
            >
              <span className="block h-0.5 w-6 bg-ink" />
              <span className="block h-0.5 w-6 bg-ink" />
              <span className="block h-0.5 w-4 bg-accent" />
            </button>
          </div>
        </div>
      </header>

      {open && (
        <div className="fixed inset-0 z-50 flex flex-col overflow-y-auto bg-carbon text-chalk lg:hidden">
          <div className="flex items-center justify-between border-b border-line-dark px-6 py-4">
            <span className="headline text-2xl">MR.RIDER</span>
            <button
              type="button"
              onClick={() => setOpen(false)}
              aria-label="Close menu"
              className="p-2 font-mono text-sm uppercase tracking-[0.18em]"
            >
              Close ✕
            </button>
          </div>
          <nav className="flex flex-1 flex-col px-6 py-8" aria-label="Mobile">
            {NAV.map((item, i) => (
              <Link
                key={item.href}
                href={item.href}
                className="group flex items-baseline gap-4 border-b border-line-dark py-4"
              >
                <span className="font-mono text-[11px] text-chalk/40">
                  {String(i + 1).padStart(2, "0")}
                </span>
                <span className="headline text-4xl transition-colors duration-200 ease-out group-hover:text-accent">
                  {item.label}
                </span>
              </Link>
            ))}
          </nav>
          <div className="border-t border-line-dark px-6 py-6">
            <Link
              href="/apply"
              className="inline-block bg-accent px-5 py-3 font-mono text-[11px] font-semibold uppercase tracking-[0.18em] text-chalk"
            >
              Join the Club →
            </Link>
          </div>
        </div>
      )}
    </>
  );
}
