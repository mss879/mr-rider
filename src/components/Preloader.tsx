import type { CSSProperties } from "react";

/* The curtain.

   Pure CSS, no client component, no JS at all — which is the point. A
   preloader driven by React cannot paint until hydration, so it would land
   AFTER the page it is meant to cover and read as a flash of content followed
   by a curtain, which is worse than no curtain. Rendered on the server it is
   in the first byte of HTML and covers the page from the very first paint.

   It also means it cannot get stuck. Nothing has to run for it to leave: the
   exit is a keyframe on the panel itself, so a reader with JS off, or with a
   bundle that never arrives, still gets the page at 1.44s like everyone else.

   Reduced motion drops the whole thing — see globals.css, where it is
   `display: none` rather than a faster animation. Someone who asked for
   stillness should not be shown a strobing word cut at all, however briefly.

   The copy states the business model and nothing else: a club, a shop, one
   floor. That is the whole of MR.RIDER in six words, and the rail underneath
   is the line the About page already leads with, so the curtain is quoting
   the company rather than inventing a slogan for it.

   Short beats on purpose. These render at ~160px of condensed caps, where
   roughly fourteen characters is the ceiling before a line stops fitting the
   viewport — and the shorter the beat, the less of its 330ms is spent reading
   and the more is spent landing. It also avoids the hero headline sitting
   underneath: repeating RIDE FAST / BUY SMART / JOIN THE CLUB here would mean
   lifting the panel to reveal those same three lines again.

   Timing lives in globals.css so the cut, the rule and the exit stay on one
   clock. Two cuts at 330ms, the payoff held for 500ms, then the panel leaves
   upward in 280ms — about 1.44s. 330ms is the floor for this: below roughly a
   quarter-second a word is shown without being read, which is exactly how the
   first version of this failed. */

const CUTS = ["A club", "A shop"];
const PAYOFF = "One floor";
const RAIL = "Built like a club. Run like a shop.";

/** Cut position, the same trick as `rise()` — the index drives the delay. */
type Cut = CSSProperties & { "--cut"?: number };

/** Published so the CSS clock counts the copy rather than a hardcoded 2. */
type Panel = CSSProperties & { "--cuts"?: number };

export default function Preloader() {
  return (
    /* aria-hidden, and deliberately so: the page underneath is already
       complete and announced. A screen reader should never be made to sit
       through a decoration that a sighted reader gets to skim past. */
    <div
      className="preloader"
      aria-hidden
      style={{ "--cuts": CUTS.length } as Panel}
    >
      {CUTS.map((word, i) => (
        <span key={word} className="pre-word" style={{ "--cut": i } as Cut}>
          {word}
        </span>
      ))}
      <span
        className="pre-word pre-word-hold"
        style={{ "--cut": CUTS.length } as Cut}
      >
        {PAYOFF}
      </span>

      <div className="pre-rail">
        <span>{RAIL}</span>
        <span className="pre-count" />
      </div>
      <span className="pre-bar" />
    </div>
  );
}
