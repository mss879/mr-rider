"use client";

import { useEffect, useState } from "react";
import type { Session } from "@supabase/supabase-js";
import { getSupabaseBrowser } from "@/lib/supabaseBrowser";

/** The rider's session, live. `ready` guards the first paint so a signed-in
    visitor never flashes the signed-out state.

    The auth callback is deliberately synchronous — an async one can deadlock
    when a TOKEN_REFRESHED event fires a nested refresh. Do async work in a
    separate effect keyed on the session it hands back. */
export function useSession(): { session: Session | null; ready: boolean } {
  const sb = getSupabaseBrowser();
  const [session, setSession] = useState<Session | null>(null);
  // With no client configured there is no session to wait for, so this
  // starts ready rather than flipping a flag from inside the effect.
  const [ready, setReady] = useState(() => !getSupabaseBrowser());

  useEffect(() => {
    if (!sb) return;
    let alive = true;
    sb.auth.getSession().then(({ data }) => {
      if (!alive) return;
      setSession(data.session);
      setReady(true);
    });
    const { data: sub } = sb.auth.onAuthStateChange((_event, next) => {
      setSession(next);
      setReady(true);
    });
    return () => {
      alive = false;
      sub.subscription.unsubscribe();
    };
  }, [sb]);

  return { session, ready };
}
