"use client";

import { usePathname } from "next/navigation";
import { useEffect, useRef } from "react";

/* The GSAP half of the motion system — everything below the fold, and the
   scroll-linked half of the hero.

   Cost control, in order of importance:
     · GSAP is imported dynamically, so it lands in its own chunk and never
       blocks the page's own JS.
     · That import is deferred to the first idle callback, so it competes with
       nothing during hydration.
     · Readers on reduced motion bail before the import even starts, so they
       pay zero bytes for it.
     · One ScrollTrigger.batch drives every reveal on the page instead of one
       trigger per element, and each fires `once`.

   Everything animated here is opacity or transform, which the compositor
   can do without touching layout or paint. Not clip-path: the wipes are
   done with a shutter that slides off, because a clip-path animation still
   repaints on the main thread in most browsers.

   PERFORMANCE, measured rather than assumed. On a 4× CPU-throttled headless
   Chrome the main thread is ~3% busy during a top-to-bottom scroll, so the
   budget that matters is the GPU's and the phone's: how many screen-sized
   layers are alive, and whether anything re-measures the page mid-scroll.
   Hence: no parallax or drift on small or weak devices (lite mode), no
   resize-refresh when a phone's address bar collapses, headings split on
   approach rather than all at once, and nothing allocated per scroll frame.

   WHAT MOVES, and why each thing earns its place. The page used to have one
   kind of motion — fade up 24px, once — applied to everything, and the club's
   verdict on that was "static". Uniform motion reads as no motion. So this is
   about VARIETY of response, not volume: things that answer the scroll
   continuously (hero, parallax, drift, marquee) beside things that arrive
   once (reveals, wipes, rules, kinetic type), and each section gets the one
   that suits what it is.

     1 · Reveals       the batch, with longer travel and a harder stop
     2 · Wipes         photographs unmask upward while the picture settles
     3 · Rules         the hairline under a section head draws itself
     4 · Counters      unchanged — the numbers run up to the real figure
     5 · Hero          scrubbed: the plate lags and swells, the headline lines
                       fan apart, the rail lifts off. No lag on the scrub —
                       a hero that answers a beat late feels broken, not slow
     6 · Parallax      photographs move slower than the page they sit in
     7 · Drift         the ghost type slides across its band
     8 · Kinetic type  section headlines rise word by word out of a slot
     9 · Marquee       runs faster the harder you scroll, backwards when you
                       scroll up, and shears with the velocity. RIDE FAST is
                       the first thing the site says; this is it meaning it
    10 · Progress      the reading hairline, unchanged

   The markup hooks are documented in globals.css under Motion. */

declare global {
  interface Window {
    /** The failsafe timer armed by MOTION_BOOT; cleared once we take over. */
    __mrMotion?: number;
  }
}

type Mods = [
  typeof import("gsap"),
  typeof import("gsap/ScrollTrigger"),
  typeof import("gsap/SplitText"),
];

/* Module-level so the second route that needs motion reuses the resolved
   chunk rather than waiting on idle all over again. */
let gsapChunk: Promise<Mods> | null = null;

function loadGsap() {
  gsapChunk ??= Promise.all([
    import("gsap"),
    import("gsap/ScrollTrigger"),
    import("gsap/SplitText"),
  ]);
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

/* The reveal line: 88% of the way down the viewport. Late enough that the
   element is genuinely arriving, early enough that a reader scrolling at pace
   never meets a blank. */
const ENTER = "top 88%";

/* How far a photograph may wander, as a percentage of its own height, when
   the element does not say. It is scaled up by twice this so the edges never
   show. */
const PARALLAX = 8;

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
      let mods: Mods;
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
      const { SplitText } = mods[2];
      gsap.registerPlugin(ScrollTrigger, SplitText);
      window.clearTimeout(window.__mrMotion);

      /* A phone's address bar collapsing is a resize, and a resize is a full
         refresh — every trigger on the page re-measured, mid-scroll, on the
         device least able to afford it. Ignore those. A rotation still
         refreshes, because the width changes. */
      ScrollTrigger.config({ ignoreMobileResize: true });

      /* Lite mode: what a weak device is spared. Parallax and drift keep a
         handful of screen-sized layers alive and re-composited on every
         frame, which is precisely the budget a low-end phone does not have.
         The hero scrub, the marquee and the reveals stay — they are the
         energy, and they are cheap. `deviceMemory` is Chrome-only; elsewhere
         it is undefined and the core count and the width decide alone. */
      const nav = navigator as Navigator & { deviceMemory?: number };
      const lite =
        (nav.deviceMemory !== undefined && nav.deviceMemory <= 2) ||
        (nav.hardwareConcurrency !== undefined && nav.hardwareConcurrency <= 2);
      const mm = gsap.matchMedia();

      const triggers: ScrollTrigger[] = [];
      const anims: gsap.core.Animation[] = [];
      const splits: SplitText[] = [];
      const cleanups: (() => void)[] = [];

      /** Remember an animation, and the trigger it owns, for teardown. */
      const track = <T extends gsap.core.Tween | gsap.core.Timeline>(a: T): T => {
        anims.push(a);
        if (a.scrollTrigger) triggers.push(a.scrollTrigger);
        return a;
      };

      // 1 · Entrances. One batch for the whole page: elements that scroll into
      //     view together animate together, with a stagger across the group.
      //     power4 rather than power3 — the extra order is the "stop", the
      //     thing that makes 40px of travel read as a landing rather than a
      //     drift. x is tweened too, for the "slide" variant; on everything
      //     else it is already 0 and costs nothing.
      triggers.push(
        ...ScrollTrigger.batch("[data-reveal]:not([data-reveal='wipe'])", {
          start: ENTER,
          once: true,
          onEnter: (batch) => {
            track(
              gsap.to(batch, {
                opacity: 1,
                x: 0,
                y: 0,
                duration: 1,
                ease: "power4.out",
                stagger: 0.08,
                overwrite: true,
              }),
            );
          },
        }),
      );

      // 2 · Wipes. A shutter the colour of the surrounding band slides up
      //     and off the frame, and the frame's own overflow clip swallows it;
      //     the plate inside settles from a zoom on a longer clock, so the
      //     picture is still moving after the frame is uncovered. A shutter
      //     rather than clip-path because a transform is composited and a
      //     clip-path animation, in most browsers, is a repaint per frame.
      triggers.push(
        ...ScrollTrigger.batch("[data-reveal='wipe']", {
          start: "top 85%",
          once: true,
          onEnter: (batch) => {
            const shutters = batch.flatMap((el) =>
              gsap.utils.toArray<HTMLElement>("[data-shutter]", el as Element),
            );
            track(
              gsap.to(shutters, {
                yPercent: -101,
                duration: 1.2,
                ease: "power4.inOut",
                stagger: 0.1,
              }),
            );
            const plates = batch.flatMap((el) =>
              gsap.utils.toArray<HTMLElement>("[data-plate]", el as Element),
            );
            if (plates.length > 0) {
              track(
                gsap.fromTo(
                  plates,
                  { scale: 1.15 },
                  { scale: 1, duration: 1.8, ease: "power3.out", stagger: 0.1 },
                ),
              );
            }
          },
        }),
      );

      // 3 · Rules. The hairline under a section head draws in from the left.
      //     inOut rather than out: a rule that starts at full speed looks like
      //     it was switched on; one that accelerates looks drawn.
      triggers.push(
        ...ScrollTrigger.batch("[data-rule]", {
          start: "top 90%",
          once: true,
          onEnter: (batch) => {
            track(
              gsap.to(batch, {
                scaleX: 1,
                duration: 1.2,
                ease: "power4.inOut",
                stagger: 0.1,
              }),
            );
          },
        }),
      );

      // 4 · Counters. The real number is already in the HTML for crawlers and
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
            start: ENTER,
            once: true,
            onEnter: () => {
              const counter = { v: 0 };
              track(
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

      // 5 · Hero. One timeline, scrubbed across the band's own height, with
      //     everything starting at 0 so it all moves together at different
      //     rates — which is what makes it read as depth.
      //
      //     The plate moves DOWN as the page moves up, so it trails the
      //     content: the classic parallax, plus a swell so the frame never
      //     shows its edge. The headline lines all lead the scroll, the top
      //     one hardest, so the three fan apart as they go. Opacity gets its
      //     own tween with an ease, or the type would be half gone by the
      //     time the band was half scrolled.
      //
      //     `start: 0` and not "top top". The masthead is sticky, so the
      //     band's top edge only reaches the viewport's after the first 108px
      //     of scroll — and a hero that ignores the first 108px feels stuck.
      //     A number is an absolute scroll position: this begins on the very
      //     first pixel.
      const hero = document.querySelector<HTMLElement>("[data-hero]");
      if (hero) {
        const lines = gsap.utils.toArray<HTMLElement>("[data-hero-line]", hero);
        const tl = gsap.timeline({
          defaults: { ease: "none" },
          scrollTrigger: {
            trigger: hero,
            start: 0,
            end: "bottom top",
            scrub: true,
          },
        });
        tl.to(
          gsap.utils.toArray<HTMLElement>("[data-hero-plate]", hero),
          { yPercent: 16, scale: 1.12 },
          0,
        )
          .to(lines, { yPercent: (i: number) => -70 + i * 25 }, 0)
          .to(lines, { opacity: 0, ease: "power2.in" }, 0)
          .to(
            gsap.utils.toArray<HTMLElement>("[data-hero-rail]", hero),
            { y: -90, opacity: 0, ease: "power1.in" },
            0,
          );
        track(tl);
      }

      // 6 · Parallax. A photograph travels a little slower than the page it
      //     is set in, over the whole of its journey across the viewport.
      //     Scaled up by twice its travel, so neither edge ever shows. The
      //     trigger is the frame around it, not the picture — the picture is
      //     the thing moving, and a trigger that moves is a trigger that
      //     measures itself wrong.
      //
      //     Tablet and up only, and never on a weak device: each of these is
      //     a screen-sized layer that has to be re-composited every frame,
      //     and on a phone the picture is small enough that the depth is not
      //     read anyway. The matchMedia context reverts every tween in it on
      //     its own when the condition stops matching, so a window dragged
      //     narrow does not keep five parallax layers alive.
      //
      // 7 · Drift. The oversized ghost type slides across its band as the
      //     band crosses the viewport — against the scroll, so it is the one
      //     thing in the frame moving sideways. Same gate, same reason.
      mm.add("(min-width: 768px)", () => {
        if (lite) return;
        gsap.utils.toArray<HTMLElement>("[data-parallax]").forEach((el) => {
          const amount = Number(el.dataset.parallax) || PARALLAX;
          const frame =
            el.closest<HTMLElement>("[data-plate]") ?? el.parentElement ?? el;
          gsap.set(el, { scale: 1 + (amount * 2) / 100 });
          gsap.fromTo(
            el,
            { yPercent: -amount },
            {
              yPercent: amount,
              ease: "none",
              scrollTrigger: {
                trigger: frame,
                start: "top bottom",
                end: "bottom top",
                scrub: 0.4,
              },
            },
          );
        });
        gsap.utils.toArray<HTMLElement>("[data-drift]").forEach((el) => {
          gsap.fromTo(
            el,
            { xPercent: 10 },
            {
              xPercent: -14,
              ease: "none",
              scrollTrigger: {
                trigger: el.parentElement ?? el,
                start: "top bottom",
                end: "bottom top",
                scrub: 0.4,
              },
            },
          );
        });
      });

      // 8 · Kinetic type. Section headlines are split into words inside
      //     per-line masks, and the words rise out of the mask as the heading
      //     arrives. Armed only after the fonts are in, because the split is a
      //     measurement of where the lines break and the fallback face breaks
      //     them somewhere else; `autoSplit` then re-measures on resize.
      //
      //     Only headings still BELOW the fold are split. One already on
      //     screen, or already scrolled past, would be torn apart and re-run
      //     in front of the reader — worse than leaving it alone.
      //
      //     Split ON APPROACH, not at init. Splitting is DOM surgery plus a
      //     layout read per line, and doing eleven headings in one go was the
      //     longest task on the page. Each heading gets a trigger well ahead
      //     of the reveal line that does the surgery as it comes near — so
      //     the cost is spread across the scroll, and never paid at all for a
      //     heading the reader does not reach.
      //
      //     Known limit: SplitText rewrites the heading's DOM behind React's
      //     back. That is safe because these headings live in server
      //     components that never re-render in place; a route change replaces
      //     the whole subtree, which is what the teardown's revert() is for.
      const split = (el: HTMLElement) => {
        splits.push(
          SplitText.create(el, {
            type: "lines,words",
            mask: "lines",
            autoSplit: true,
            onSplit: (self) => {
              // The display face is italic and overhangs its line box on
              // the horizontal, which a clipping mask would shave off.
              self.masks.forEach((m) => {
                const s = (m as HTMLElement).style;
                s.paddingInline = "0.12em";
                s.marginInline = "-0.12em";
              });
              return track(
                gsap.from(self.words, {
                  yPercent: 115,
                  duration: 1.1,
                  ease: "power4.out",
                  stagger: 0.05,
                  scrollTrigger: { trigger: el, start: ENTER, once: true },
                }),
              );
            },
          }),
        );
      };
      const armSplits = () => {
        gsap.utils.toArray<HTMLElement>("[data-split]").forEach((el) => {
          if (el.getBoundingClientRect().top < window.innerHeight * 0.88) return;
          triggers.push(
            ScrollTrigger.create({
              trigger: el,
              start: "top 140%",
              once: true,
              onEnter: () => split(el),
            }),
          );
        });
      };
      void document.fonts.ready.then(() => {
        if (cancelled) return;
        armSplits();
        ScrollTrigger.refresh();
      });

      // 9 · Marquee. The CSS ticker has been running since first paint; this
      //     reads where it has got to, takes over from that exact offset, and
      //     from then on the loop's speed and direction follow the scroll.
      //     Scroll down and it runs harder; scroll up and it runs backwards;
      //     stop and it settles back to walking pace. The shear is the same
      //     signal drawn a second way — the track leans into the direction it
      //     is being pushed.
      //
      //     Nothing is allocated per frame. Both the speed and the shear are
      //     quickTo setters — one reusable tween each, retargeted on every
      //     scroll update — and the settle rides ScrollTrigger's own
      //     scrollEnd event instead of a timeout cleared and re-armed sixty
      //     times a second. The first cut of this built a fresh tween per
      //     frame for as long as the thumb was on the glass.
      //
      //     The speed goes through a plain object rather than the tween's
      //     own timeScale, because timeScale is a method and quickTo wants a
      //     property to write to.
      gsap.utils.toArray<HTMLElement>("[data-marquee]").forEach((el) => {
        const half = el.offsetWidth / 2; // two copies; one copy is a lap
        if (!half) return;
        const tx = new DOMMatrixReadOnly(getComputedStyle(el).transform).m41;
        el.setAttribute("data-marquee-live", "");
        const loop = track(
          gsap.to(el, { xPercent: -50, duration: 30, ease: "none", repeat: -1 }),
        );
        loop.progress(gsap.utils.wrap(0, 1, -tx / half));

        const pace = { v: 1 };
        const speed = gsap.quickTo(pace, "v", {
          duration: 0.3,
          ease: "power2.out",
          onUpdate: () => loop.timeScale(pace.v),
        });
        const shear = gsap.quickTo(el, "skewX", {
          duration: 0.5,
          ease: "power3.out",
        });
        const onEnd = () => {
          speed(1);
          shear(0);
        };
        triggers.push(
          ScrollTrigger.create({
            start: 0,
            end: "max",
            onUpdate: (self) => {
              const v = self.getVelocity(); // px/s, signed
              speed((v < 0 ? -1 : 1) * gsap.utils.clamp(1, 6, 1 + Math.abs(v) / 600));
              // The shear is the one part of this a weak device can skip.
              if (!lite) shear(gsap.utils.clamp(-9, 9, v / 90));
            },
          }),
        );
        ScrollTrigger.addEventListener("scrollEnd", onEnd);
        cleanups.push(() => {
          ScrollTrigger.removeEventListener("scrollEnd", onEnd);
          gsap.killTweensOf(pace);
          gsap.killTweensOf(el);
        });
      });

      // 10 · Reading progress hairline.
      if (progress.current) {
        track(
          gsap.to(progress.current, {
            scaleX: 1,
            ease: "none",
            scrollTrigger: { start: 0, end: "max", scrub: 0.25 },
          }),
        );
      }

      // Kill without reverting: revealed elements stay revealed, and the
      // inline styles GSAP left behind are exactly the resting state. Splits
      // are the exception — they are put back so the heading is one text
      // node again for whatever mounts next.
      teardown = () => {
        cleanups.forEach((fn) => fn());
        mm.revert();
        triggers.forEach((t) => t.kill());
        anims.forEach((a) => a.kill());
        splits.forEach((s) => s.revert());
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
