"use client";

import { useEffect } from "react";
import Link from "next/link";

/* The route error boundary. Without this file a thrown error in any page
   renders Next's own error screen — which in production is an unstyled
   "Application error: a client-side exception has occurred" on a white page,
   with the club's header and footer gone. This keeps the reader inside the
   site and gives them something to do.

   `reset()` re-renders the segment, which is the right first move for the
   failure this will actually see: a Supabase read that timed out. The floor
   is served from a 60s-revalidated cache, so trying again usually works.

   The `digest` is Next's hash of the server-side error. The message itself is
   deliberately NOT shown — it can carry query text or table names — but the
   digest is safe, and it is what ties a support message to a server log. */

export default function Error({
  error,
  reset,
}: {
  error: Error & { digest?: string };
  reset: () => void;
}) {
  useEffect(() => {
    // Whatever platform this lands on collects stderr; this is what puts a
    // client-side failure into that stream rather than only in one browser.
    console.error("[route error]", error.digest ?? "", error.message);
  }, [error]);

  return (
    <section className="mx-auto flex max-w-7xl flex-col px-6 py-24 md:py-32">
      <p className="mb-4 font-mono text-[11px] uppercase tracking-[0.22em] text-ink-soft">
        Something broke
      </p>
      <h1 className="headline mb-6 text-[clamp(2.8rem,8vw,6rem)]">
        Chain off.
      </h1>
      <p className="mb-10 max-w-md text-sm leading-relaxed text-ink-soft">
        This page did not load. It is usually a moment&apos;s hiccup between
        the site and the catalogue rather than anything you did — try again,
        and if it keeps happening the club would like to know.
      </p>

      <div className="flex flex-wrap items-center gap-4">
        <button
          type="button"
          onClick={reset}
          className="bg-ink px-5 py-3 font-mono text-[11px] font-semibold uppercase tracking-[0.18em] text-chalk transition-colors duration-200 ease-out hover:bg-ink-soft"
        >
          Try again
        </button>
        <Link
          href="/"
          className="border border-ink px-5 py-3 font-mono text-[11px] font-semibold uppercase tracking-[0.18em] transition-colors duration-200 ease-out hover:bg-ink hover:text-chalk"
        >
          Back to the front
        </Link>
        <Link
          href="/contact"
          className="font-mono text-[11px] uppercase tracking-[0.16em] text-ink-soft underline underline-offset-4 transition-colors duration-200 ease-out hover:text-ink"
        >
          Tell the club →
        </Link>
      </div>

      {error.digest && (
        <p className="mt-10 font-mono text-[10px] uppercase tracking-[0.16em] text-ink-soft/70">
          Reference {error.digest} — quote this if you get in touch
        </p>
      )}
    </section>
  );
}
