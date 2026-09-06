"use client";

import Link from "next/link";
import { useEffect, useState } from "react";
import { rise } from "@/lib/motion";

/* UI-04 — the drop strip, loud enough to be seen.

   It used to be a hairline box on paper, in the same 11px mono as everything
   else on the page, and the club's note was that nobody noticed the one line
   on the home page that is actually time-sensitive. Three things changed:

     · It inverts. Carbon under chalk is the highest contrast this monochrome
       palette holds, and it is the only inverted element in the band, so it
       reads as the loudest thing there without a colour being introduced.
     · The type gets bigger and heavier — the count is display weight now, not
       mono body copy.
     · It counts down. "Next drop lands 09:00" is a fact; "02:14:37" is a
       reason to come back, and it is the difference the club asked for.

   HYDRATION. 09:00 is 09:00 where the RIDER is, and the server has no idea
   where that is — rendering a clock on both sides would mismatch for anyone
   outside the build machine's timezone. So the server renders the static time
   and `remaining` stays null until the first client tick swaps it in. */

const DROP_HOUR = 9;

/** Milliseconds from `now` to the next 09:00 in the reader's own timezone. */
function untilNextDrop(now: Date): number {
  const next = new Date(now);
  next.setHours(DROP_HOUR, 0, 0, 0);
  if (next.getTime() <= now.getTime()) next.setDate(next.getDate() + 1);
  return next.getTime() - now.getTime();
}

const pad = (n: number) => String(n).padStart(2, "0");

function clock(ms: number): string {
  const total = Math.max(0, Math.floor(ms / 1000));
  return `${pad(Math.floor(total / 3600))}:${pad(Math.floor((total % 3600) / 60))}:${pad(total % 60)}`;
}

export default function DropBanner({ todayCount }: { todayCount: number }) {
  const [remaining, setRemaining] = useState<number | null>(null);

  useEffect(() => {
    const tick = () => setRemaining(untilNextDrop(new Date()));
    tick();
    /* Aligned to the second boundary rather than a flat 1000ms, or the digits
       drift and eventually skip a number in front of the reader. */
    let frame: ReturnType<typeof setTimeout>;
    const schedule = () => {
      frame = setTimeout(() => {
        tick();
        schedule();
      }, 1000 - (Date.now() % 1000));
    };
    schedule();
    return () => clearTimeout(frame);
  }, []);

  const landed = todayCount > 0;

  return (
    <Link
      href="/daily-listings"
      data-rise
      style={rise(7)}
      className="group mt-5 flex flex-col gap-4 border border-ink bg-carbon px-5 py-5 text-chalk transition-colors duration-200 ease-out hover:bg-carbon-2 sm:flex-row sm:items-center sm:justify-between sm:gap-8 sm:px-6"
    >
      <span className="flex min-w-0 items-center gap-3">
        <span className="relative flex size-2.5 shrink-0">
          {/* The halo animates, the dot does not — a solid mark stays legible
              when the reduced-motion rule freezes the animation. */}
          <span
            aria-hidden
            className="absolute inline-flex size-full animate-ping rounded-full bg-chalk/70"
          />
          <span aria-hidden className="relative inline-flex size-2.5 rounded-full bg-chalk" />
        </span>
        <span className="min-w-0">
          <span className="block font-mono text-[10px] font-semibold uppercase tracking-[0.24em] text-chalk/60">
            {landed ? "Today's drop · live" : "The morning drop"}
          </span>
          <span className="font-display block text-xl font-bold uppercase leading-tight tracking-wide sm:text-2xl">
            {landed
              ? `${todayCount} item${todayCount === 1 ? "" : "s"} landed today`
              : "Next drop lands 09:00"}
          </span>
        </span>
      </span>

      <span className="flex flex-wrap items-center gap-x-6 gap-y-3 sm:shrink-0">
        <span className="flex flex-col">
          <span className="font-mono text-[10px] uppercase tracking-[0.2em] text-chalk/50">
            Next drop in
          </span>
          {/* Tabular figures, or the whole strip shuffles sideways every time
              a 1 ticks over to an 8. */}
          <span
            className="font-mono text-lg font-semibold tracking-[0.08em] tabular-nums sm:text-xl"
            aria-live="off"
          >
            {remaining === null ? "09:00" : clock(remaining)}
          </span>
        </span>
        <span className="whitespace-nowrap border border-chalk/40 px-4 py-2.5 font-mono text-[10px] font-semibold uppercase tracking-[0.18em] transition-colors duration-200 ease-out group-hover:border-chalk group-hover:bg-chalk group-hover:text-carbon">
          See the drop →
        </span>
      </span>
    </Link>
  );
}
