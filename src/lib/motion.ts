import type { CSSProperties } from "react";

/* The motion gate.

   This string is inlined into <head> and runs synchronously while the browser
   is still parsing the document — before the first paint, and long before any
   bundle lands. That timing is the whole point: it is what lets the hero start
   its entrance on the very first frame instead of after hydration.

   Three jobs:
     1. Readers on `prefers-reduced-motion: reduce` never get the class, so
        every [data-rise] / [data-reveal] element renders at its resting state
        and GSAP is never even downloaded (see MotionProvider).
     2. Everyone else gets `.motion`, which is what arms the hidden-until-
        revealed styles in globals.css.
     3. A 2.5s failsafe drops the class again. If the motion chunk 404s, is
        blocked, or the device simply never goes idle, the page reveals itself
        rather than sitting there blank. MotionProvider clears this timer the
        moment it takes over.

   Inlining needs `script-src 'unsafe-inline'`, which the CSP in next.config.ts
   already grants. */
export const MOTION_BOOT = `(function(){var d=document.documentElement;try{if(!window.matchMedia||window.matchMedia("(prefers-reduced-motion:reduce)").matches)return;d.classList.add("motion");window.__mrMotion=setTimeout(function(){d.classList.remove("motion")},2500)}catch(e){d.classList.remove("motion")}})()`;

/** Stagger position for a `[data-rise]` element — see `.motion [data-rise]`. */
export type RiseStyle = CSSProperties & { "--rise"?: number };

/** `<p data-rise style={rise(2)}>` — two steps into the hero's cascade. */
export const rise = (step: number): RiseStyle => ({ "--rise": step });
