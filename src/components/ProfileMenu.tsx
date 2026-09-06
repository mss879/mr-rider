"use client";

import Link from "next/link";
import { useRouter } from "next/navigation";
import { useEffect, useRef, useState } from "react";
import type { Session } from "@supabase/supabase-js";
import { getSupabaseBrowser } from "@/lib/supabaseBrowser";

/* UI-06 — what the masthead shows a rider who is already signed in.

   "Join the Club" is the site's single loudest call to action and it was on
   screen for people who had already walked through the door, which reads as
   the site not knowing who it is talking to. Signed in, the button is replaced
   by the rider's own name and the three things they came back for. */

/** What to put after "Hi,". The name they signed up with, else the local part
    of their email, else "Rider" — never an empty greeting. */
export function riderName(session: Session): string {
  const full = (session.user.user_metadata?.full_name as string | undefined)?.trim();
  if (full) return full.split(/\s+/)[0];
  const email = session.user.email ?? "";
  const local = email.split("@")[0]?.trim();
  return local || "Rider";
}

const ITEM =
  "block w-full px-4 py-3 text-left font-mono text-[10px] uppercase tracking-[0.16em] transition-colors duration-200 ease-out hover:bg-paper-2";

export default function ProfileMenu({ session }: { session: Session }) {
  const sb = getSupabaseBrowser();
  const router = useRouter();
  const [open, setOpen] = useState(false);
  const wrap = useRef<HTMLDivElement>(null);

  /* Pointerdown rather than click: a click listener fires after the browser
     has already followed whatever was under the pointer, so a tap on a link
     behind the panel navigates with the panel still open behind it. */
  useEffect(() => {
    if (!open) return;
    const onDown = (e: PointerEvent) => {
      if (!wrap.current?.contains(e.target as Node)) setOpen(false);
    };
    const onKey = (e: KeyboardEvent) => {
      if (e.key === "Escape") setOpen(false);
    };
    window.addEventListener("pointerdown", onDown);
    window.addEventListener("keydown", onKey);
    return () => {
      window.removeEventListener("pointerdown", onDown);
      window.removeEventListener("keydown", onKey);
    };
  }, [open]);

  async function signOut() {
    setOpen(false);
    // Local scope, matching AccountPanel: signing out of this browser should
    // not end the rider's session on their phone.
    await sb?.auth.signOut({ scope: "local" });
    router.refresh();
  }

  const name = riderName(session);

  return (
    <div ref={wrap} className="relative hidden md:block">
      <button
        type="button"
        onClick={() => setOpen((v) => !v)}
        aria-expanded={open}
        aria-haspopup="menu"
        // UI-02 — this button occupies the same masthead slot as the "Join the
        // Club" CTA and swaps 1:1 with it, so it takes the same 10px → 12px
        // step. Leaving it behind would hand signed-in riders a smaller button
        // than signed-out ones in the identical position.
        // Width is unaffected: max-w-[14rem] + truncate already pins the worst
        // case at 224px, which is the figure UI-02's 1280px budget assumes.
        // Height: 12px × 1.5 + py-2.5 (20) + border (2) = 40px — the tallest
        // thing in the row after this change, and still 16px under the 56px
        // logo, so --chrome-h holds.
        // The dropdown below stays at its own 10px register (see ITEM): it is a
        // panel, not the bar, and is out of scope for the same reason the
        // mega-menu is.
        className="flex max-w-[14rem] items-center gap-2 border border-ink px-4 py-2.5 font-mono text-[12px] font-semibold uppercase tracking-[0.16em] transition-colors duration-200 ease-out hover:bg-ink hover:text-chalk"
      >
        <span className="truncate">Hi, {name}</span>
        <span
          aria-hidden
          // UI-02 — twin of the Shop trigger's caret in SiteHeader.tsx and it
          // takes the same step: the label above went 10px → 12px, so a 9px
          // caret would sit under it looking like a rendering fault, which is
          // exactly the reason the other one moved. Costs no width — the caret
          // is inside a button already pinned by max-w-[14rem] + truncate.
          className={`text-[11px] transition-transform duration-200 ease-out ${open ? "rotate-180" : ""}`}
        >
          ▼
        </span>
      </button>

      {open && (
        <div
          role="menu"
          className="absolute right-0 top-full z-50 mt-2 w-60 border border-ink bg-chalk shadow-[0_18px_40px_-24px_rgba(0,0,0,0.45)]"
        >
          <p className="border-b border-line px-4 py-3">
            <span className="block font-mono text-[9px] uppercase tracking-[0.22em] text-ink-soft">
              Signed in as
            </span>
            <span className="block truncate text-sm">{session.user.email}</span>
          </p>
          <Link href="/inquiries" role="menuitem" onClick={() => setOpen(false)} className={ITEM}>
            My inquiries
          </Link>
          <Link href="/account" role="menuitem" onClick={() => setOpen(false)} className={ITEM}>
            My account
          </Link>
          <Link href="/apply" role="menuitem" onClick={() => setOpen(false)} className={ITEM}>
            Membership status
          </Link>
          <button
            type="button"
            role="menuitem"
            onClick={signOut}
            className={`${ITEM} border-t border-line text-ink-soft hover:text-ink`}
          >
            Sign out
          </button>
        </div>
      )}
    </div>
  );
}
