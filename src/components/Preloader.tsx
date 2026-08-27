import type { CSSProperties } from "react";

/* The curtain.

   Pure CSS, no client component, no JS at all — which is the point. A
   preloader driven by React cannot paint until hydration, so it would land
   AFTER the page it is meant to cover and read as a flash of content followed
   by a curtain, which is worse than no curtain. Rendered on the server it is
   in the first byte of HTML and covers the page from the very first paint.

   It also means it cannot get stuck. Nothing has to run for it to leave: the
   exit is a keyframe on the panel itself, so a reader with JS off, or with a
   bundle that never arrives, still gets the page at 1.18s like everyone else.

   Reduced motion drops the whole thing — see globals.css, where it is
   `display: none` rather than a faster animation. Someone who asked for
   stillness should not be shown a strobing word cut at all, however briefly.

   Timing lives in globals.css so the word cut, the rule and the exit stay on
   one clock. Roughly: five hard cuts at 100ms, the mark held for 400ms, then
   the panel leaves upward in 280ms. */

const WORDS = ["Ride", "Fast", "Buy", "Smart", "Members only"];

/** Cut position, the same trick as `rise()` — the index drives the delay. */
type Cut = CSSProperties & { "--cut"?: number };

export default function Preloader() {
  return (
    /* aria-hidden, and deliberately so: the page underneath is already
       complete and announced. A screen reader should never be made to sit
       through a decoration that a sighted reader gets to skim past. */
    <div className="preloader" aria-hidden>
      {WORDS.map((word, i) => (
        <span key={word} className="pre-word" style={{ "--cut": i } as Cut}>
          {word}
        </span>
      ))}
      <span
        className="pre-word pre-word-hold"
        style={{ "--cut": WORDS.length } as Cut}
      >
        MR.RIDER
      </span>

      <div className="pre-rail">
        <span>Opening the floor</span>
        <span className="pre-count" />
      </div>
      <span className="pre-bar" />
    </div>
  );
}
