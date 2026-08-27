"use client";

import { useState, useSyncExternalStore } from "react";

/* The moving half of the hero backdrop.

   The <Image> underneath it never goes away, and that is the whole design.
   The still is the LCP element: it paints on the first frame, at priority,
   before this component has even mounted. It is also what a reader on reduced
   motion sees, what shows if JS never runs, and what shows if autoplay is
   refused — iOS in Low Power Mode blocks it outright. The clip was generated
   FROM that still and opens on the same wide framing of the same road, so all
   of those fallbacks read as the same photograph held still, not as a
   different picture.

   That is also why there is no `poster`: the still is already sitting behind
   it, and a poster would be a second copy of that frame down the wire.

   Gated in JS rather than CSS on purpose — `autoplay` starts the download no
   matter what `display` or `opacity` say, so hiding the clip in CSS would
   still charge a reader who asked for stillness the whole file. Not rendering
   it charges them nothing.

   Two cuts of that file, picked by `media` on the sources. The clip carries
   heavy film grain, which is the single most expensive thing to encode, so
   the 1920 cut lands at 3.4MB — worth it on a laptop, rude down a phone's
   cellular connection for a backdrop nobody came for. Narrow screens get a
   1280 cut at 2MB instead. `media` is read once when the element loads and
   not re-evaluated on resize, which is the right trade here: a reader who
   rotates a phone mid-visit keeps the cut they already paid for.

   The loop is cut in post: the tail crossfades back over the head, and the
   whole cycle is rotated so it opens on that wide frame instead of mid-surge.
   It is also trimmed well short of where the peloton fills the lens — past
   about five seconds of the source the frame stops being a shot and becomes
   wheels.

   Mean luma runs 87 down to 68 of 255 across the 3.8s as the riders close on
   the camera. That swing is the shot, not an exposure wobble, and it only
   ever runs DARKER than the 84 of the still — which is the direction that
   matters, because the headline sits on top of it in white and a plate that
   breathed brighter mid-loop would wash the type out. At its lightest it is
   three levels over the still, or 1.2%. It opens on 87 and closes on 86, so
   the seam does not flash either. */

const REDUCED = "(prefers-reduced-motion: reduce)";

function subscribe(onChange: () => void) {
  const query = window.matchMedia(REDUCED);
  query.addEventListener("change", onChange);
  return () => query.removeEventListener("change", onChange);
}

/* No matchMedia means we cannot ask, and the same call in MOTION_BOOT treats
   that as a request for stillness. Answer it identically here, or the two
   halves of the motion system would disagree about the same reader. */
const readPreference = () =>
  typeof window.matchMedia !== "function" ||
  window.matchMedia(REDUCED).matches;

/* The server has no media queries, so it renders the still alone — which is
   what we want anyway: the first paint is the LCP frame, never a video
   element, and the client adds the clip afterwards if motion is welcome. */
const assumeStillness = () => true;

export default function HeroPlate({
  src,
  srcNarrow,
  className,
}: {
  src: string;
  srcNarrow: string;
  className: string;
}) {
  const reduced = useSyncExternalStore(
    subscribe,
    readPreference,
    assumeStillness,
  );
  const [ready, setReady] = useState(false);

  if (reduced) return null;

  return (
    <video
      // Decorative: the frame carries nothing the copy does not already say.
      aria-hidden
      tabIndex={-1}
      autoPlay
      muted
      loop
      playsInline
      preload="auto"
      disablePictureInPicture
      disableRemotePlayback
      // Crossfade rather than a cut, so the handoff from the still is a
      // dissolve between two frames of the same road rather than a swap.
      //
      // And ask for playback explicitly. `autoplay` is permitted here — muted,
      // inline, decoded — but the attribute does not reliably fire on an
      // element mounted after page load, which is exactly what this one is.
      // Observed paused at t=0 on mobile with a manual play() succeeding
      // immediately after. A refusal is swallowed on purpose: a held first
      // frame is the designed fallback, not a failure worth logging.
      onCanPlay={(e) => {
        setReady(true);
        void e.currentTarget.play().catch(() => {});
      }}
      className={`${className} transition-opacity duration-700 ease-out ${
        ready ? "opacity-100" : "opacity-0"
      }`}
    >
      <source src={srcNarrow} media="(max-width: 767px)" type="video/mp4" />
      <source src={src} type="video/mp4" />
    </video>
  );
}
