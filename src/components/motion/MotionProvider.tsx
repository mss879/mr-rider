"use client";

import { usePathname } from "next/navigation";
import { useEffect, useRef } from "react";

/* The GSAP half of the motion system — everything below the fold.

   Cost control, in order of importance:
     · GSAP is imported dynamically, so it lands in its own chunk and never
       blocks the page's own JS.
     · That import is deferred to the first idle callback, so it competes with
       nothing during hydration.
     · Readers on reduced motion bail before the import even starts, so they
       pay zero bytes for it.
     · One ScrollTrigger.batch drives every reveal on the page instead of one
       trigger per element, and each fires `once`.

   Everything animated here is opacity + transform, which the compositor can
   do without touching layout or paint. */

declare global {
  interface Window {
    /** The failsafe timer armed by MOTION_BOOT; cleared once we take over. */
    __mrMotion?: number;
  }
}

/* Module-level so the second route that needs motion reuses the resolved
   chunk rather than waiting on idle all over again. */
let gsapChunk: Promise<
  [typeof import("gsap"), typeof import("gsap/ScrollTrigger")]
> | null = null;

function loadGsap() {
  gsapChunk ??= Promise.all([import("gsap"), import("gsap/ScrollTrigger")]);
  return gsapChunk;
}

/** Run `fn` when the browser is quiet, with a hard ceiling so it always runs. */
function whenIdle(fn: () => void): () => void {
  if (typeof window.requestIdleCallback === "function") {
    const id = window.requestIdleCallback(fn, { timeout: 1000 });
    return () => window.cancelIdleCallback(id);
  }
  const id = window.setTimeout(fn, 200);
  return () => window.clearTimeout(id);
}

export default function MotionProvider() {
  const progress = useRef<HTMLDivElement>(null);
  // Route changes swap the whole page body out from under ScrollTrigger, so
  // the triggers are torn down and rebuilt against the new DOM.
  const pathname = usePathname();

  useEffect(() => {
    const root = document.documentElement;
    // No `.motion` means reduced motion, no JS at boot, or the failsafe has
    // already fired. In every one of those cases the page is fully visible
    // and the right thing to do is nothing at all.
    if (!root.classList.contains("motion")) return;

    let cancelled = false;
    let teardown: (() => void) | undefined;

    const init = async () => {
      let mods: Awaited<ReturnType<typeof loadGsap>>;
      try {
        mods = await loadGsap();
      } catch {
        // Chunk never arrived — hand the page back rather than hide it.
        root.classList.remove("motion");
        return;
      }
      if (cancelled || !root.classList.contains("motion")) return;

      const { gsap } = mods[0];
      const { ScrollTrigger } = mods[1];
      gsap.registerPlugin(ScrollTrigger);
      window.clearTimeout(window.__mrMotion);

      const triggers: ScrollTrigger[] = [];
      const tweens: gsap.core.Tween[] = [];

      // 1 · Entrances. One batch for the whole page: elements that scroll into
      //     view together animate together, with a stagger across the group.
      triggers.push(
        ...ScrollTrigger.batch("[data-reveal]", {
          start: "top 88%",
          once: true,
          onEnter: (batch) => {
            tweens.push(
              gsap.to(batch, {
                opacity: 1,
                y: 0,
                duration: 0.7,
                ease: "power3.out",
                stagger: 0.07,
                overwrite: true,
              }),
            );
          },
        }),
      );

      // 2 · Counters. The real number is already in the HTML for crawlers and
      //     for anyone without motion; this only animates up to it.
      //
      //     The tween is built inside onEnter rather than handed a
      //     `scrollTrigger`, because a tween that owns its trigger still
      //     renders once at creation — which fires onUpdate at zero and leaves
      //     "0000" sitting on screen until the reader scrolls down to it.
      gsap.utils.toArray<HTMLElement>("[data-count]").forEach((el) => {
        const target = Number(el.dataset.count);
        if (!Number.isFinite(target)) return;
        const pad = el.textContent?.trim().length ?? 0;

        triggers.push(
          ScrollTrigger.create({
            trigger: el,
            start: "top 88%",
            once: true,
            onEnter: () => {
              const counter = { v: 0 };
              tweens.push(
                gsap.to(counter, {
                  v: target,
                  duration: 1.2,
                  ease: "power2.out",
                  onUpdate: () => {
                    el.textContent = String(Math.round(counter.v)).padStart(
                      pad,
                      "0",
                    );
                  },
                }),
              );
            },
          }),
        );
      });

      // 3 · Reading progress hairline.
      if (progress.current) {
        const tween = gsap.to(progress.current, {
          scaleX: 1,
          ease: "none",
          scrollTrigger: { start: 0, end: "max", scrub: 0.25 },
        });
        tweens.push(tween);
        if (tween.scrollTrigger) triggers.push(tween.scrollTrigger);
      }

      // Kill without reverting: revealed elements stay revealed, and the
      // inline styles GSAP left behind are exactly the resting state.
      teardown = () => {
        triggers.forEach((t) => t.kill());
        tweens.forEach((t) => t.kill());
      };
    };

    // Only the very first initialisation waits for idle. After that the chunk
    // is in memory, and a route change should reveal its content immediately.
    const start = () => void init();
    const cancelIdle = gsapChunk ? (start(), () => {}) : whenIdle(start);

    return () => {
      cancelled = true;
      cancelIdle();
      teardown?.();
    };
  }, [pathname]);

  return <div ref={progress} className="scroll-progress" aria-hidden />;
}
