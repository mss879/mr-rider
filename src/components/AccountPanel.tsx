"use client";

import Link from "next/link";
import { useRouter } from "next/navigation";
import { useState } from "react";
import { getSupabaseBrowser } from "@/lib/supabaseBrowser";
import { useSession } from "@/lib/useSession";

/* Rider accounts. The club takes inquiries only from riders it can put a name
   and a mailbox to, so this is the door to the inquiry system — separate from
   the /apply membership process, which is about dues and approval. */

type Mode = "signin" | "signup";

/** A same-origin path, or the default. Anything else is discarded. */
function safeNext(value: string | undefined): string {
  const fallback = "/inquiries";
  if (!value || value[0] !== "/") return fallback;
  if (/^[/\\]{2}/.test(value)) return fallback; // //host and /\host
  // A backslash anywhere, or whitespace/control the URL parser strips, can
  // move the origin. Normal path characters (including hyphens) are fine.
  if (/[\\\s\u0000-\u001f]/.test(value)) return fallback;
  return value;
}

const label = "mb-1.5 block font-mono text-[10px] uppercase tracking-[0.22em] text-ink-soft";
const field =
  "w-full border border-line bg-chalk px-3 py-3 text-sm transition-colors duration-200 ease-out placeholder:text-ink-soft/60";
const notice =
  "border border-accent-deep bg-chalk px-4 py-3 font-mono text-[11px] uppercase tracking-[0.12em] text-accent-deep";

export default function AccountPanel({ next }: { next?: string }) {
  const sb = getSupabaseBrowser();
  const router = useRouter();
  const { session, ready } = useSession();

  const [mode, setMode] = useState<Mode>("signin");
  const [busy, setBusy] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [confirmSent, setConfirmSent] = useState(false);

  /* Only ever bounce back to a path on this site. A leading "//" or "/\"
     both parse as an absolute URL — the URL spec treats a backslash as a
     slash — so "/\evil.example" would send a rider who just typed their
     password straight off-site. */
  const target = safeNext(next);

  async function onSubmit(e: React.FormEvent<HTMLFormElement>) {
    e.preventDefault();
    if (!sb) return;
    const data = new FormData(e.currentTarget);
    const email = String(data.get("email") ?? "").trim();
    const password = String(data.get("password") ?? "");
    const fullName = String(data.get("full_name") ?? "").trim();

    setBusy(true);
    setError(null);

    if (mode === "signup") {
      const { data: res, error: err } = await sb.auth.signUp({
        email,
        password,
        options: { data: { full_name: fullName } },
      });
      setBusy(false);
      if (err) {
        setError(err.message);
        return;
      }
      // With email confirmation switched on there is no session yet.
      if (!res.session) {
        setConfirmSent(true);
        return;
      }
      router.push(target);
      return;
    }

    const { error: err } = await sb.auth.signInWithPassword({ email, password });
    setBusy(false);
    if (err) {
      setError(err.message);
      return;
    }
    router.push(target);
  }

  if (!sb) {
    return (
      <div className="mx-auto max-w-md px-6 py-20">
        <p className={notice}>
          Supabase is not configured — add NEXT_PUBLIC_SUPABASE_URL and
          NEXT_PUBLIC_SUPABASE_ANON_KEY to .env.local
        </p>
      </div>
    );
  }

  if (!ready) {
    return (
      <p className="px-6 py-24 text-center font-mono text-[11px] uppercase tracking-[0.2em] text-ink-soft">
        Checking session…
      </p>
    );
  }

  /* ---------- signed in ---------- */

  if (session) {
    const name =
      (session.user.user_metadata?.full_name as string | undefined)?.trim() || "";
    return (
      <div className="mx-auto w-full max-w-2xl px-6 py-16">
        <div className="border border-line bg-chalk p-8">
          <p className="mb-2 font-mono text-[10px] uppercase tracking-[0.22em] text-ink-soft">
            Signed in
          </p>
          <p className="headline mb-1 text-4xl">{name || "Rider"}.</p>
          <p className="mb-8 font-mono text-[11px] uppercase tracking-[0.16em] text-ink-soft">
            {session.user.email}
          </p>
          <div className="flex flex-wrap gap-3">
            <Link
              href="/inquiries"
              className="bg-accent px-5 py-3 font-mono text-[11px] font-semibold uppercase tracking-[0.18em] text-chalk transition-colors duration-200 ease-out hover:bg-accent-deep"
            >
              My inquiries
            </Link>
            <Link
              href="/shop"
              className="border border-ink px-5 py-3 font-mono text-[11px] font-semibold uppercase tracking-[0.18em] transition-colors duration-200 ease-out hover:bg-ink hover:text-chalk"
            >
              Shop the floor
            </Link>
            <button
              type="button"
              onClick={async () => {
                // Local scope: signing out here should not kill the rider's
                // session on their other devices.
                await sb.auth.signOut({ scope: "local" });
                router.refresh();
              }}
              className="border border-line px-5 py-3 font-mono text-[11px] font-semibold uppercase tracking-[0.18em] text-ink-soft transition-colors duration-200 ease-out hover:border-ink hover:text-ink"
            >
              Sign out
            </button>
          </div>
        </div>
        <p className="mt-6 font-mono text-[10px] uppercase tracking-[0.14em] leading-relaxed text-ink-soft">
          An account lets you send inquiries. Full membership — dues, approval,
          auction bidding and coaching — is applied for separately at{" "}
          <Link href="/apply" className="text-accent-deep underline underline-offset-4">
            /apply
          </Link>
          .
        </p>
      </div>
    );
  }

  /* ---------- confirmation pending ---------- */

  if (confirmSent) {
    return (
      <div className="mx-auto w-full max-w-md px-6 py-20 text-center">
        <p className="headline mb-3 text-4xl">Check your inbox.</p>
        <p className="mb-8 font-mono text-xs uppercase tracking-[0.16em] text-ink-soft">
          Confirm your email address, then sign in and start an inquiry
        </p>
        <button
          type="button"
          onClick={() => {
            setConfirmSent(false);
            setMode("signin");
          }}
          className="bg-ink px-5 py-3 font-mono text-[11px] font-semibold uppercase tracking-[0.18em] text-chalk transition-colors duration-200 ease-out hover:bg-accent-deep"
        >
          Back to sign in
        </button>
      </div>
    );
  }

  /* ---------- signed out ---------- */

  return (
    <div className="mx-auto w-full max-w-md px-6 py-16">
      <div className="mb-6 flex">
        {(
          [
            ["signin", "Sign in"],
            ["signup", "Create account"],
          ] as const
        ).map(([value, text]) => (
          <button
            key={value}
            type="button"
            onClick={() => {
              setMode(value);
              setError(null);
            }}
            className={`flex-1 px-4 py-2.5 font-mono text-[11px] font-semibold uppercase tracking-[0.16em] transition-colors duration-200 ease-out ${
              mode === value
                ? "bg-ink text-chalk"
                : "border border-line text-ink-soft hover:border-ink hover:text-ink"
            }`}
          >
            {text}
          </button>
        ))}
      </div>

      <form
        onSubmit={onSubmit}
        className="flex flex-col gap-5 border border-line bg-chalk p-8"
      >
        {mode === "signup" && (
          <div>
            <label htmlFor="ac-name" className={label}>
              Name
            </label>
            <input
              id="ac-name"
              name="full_name"
              required
              autoComplete="name"
              placeholder="Your name"
              className={field}
            />
          </div>
        )}
        <div>
          <label htmlFor="ac-email" className={label}>
            Email
          </label>
          <input
            id="ac-email"
            name="email"
            type="email"
            required
            autoComplete="email"
            placeholder="you@club.cc"
            className={field}
          />
        </div>
        <div>
          <label htmlFor="ac-pass" className={label}>
            Password
          </label>
          <input
            id="ac-pass"
            name="password"
            type="password"
            required
            minLength={8}
            autoComplete={mode === "signup" ? "new-password" : "current-password"}
            placeholder="••••••••"
            className={field}
          />
        </div>
        {error && (
          <p role="alert" className={notice}>
            {error}
          </p>
        )}
        <button
          type="submit"
          disabled={busy}
          className="bg-accent px-5 py-3.5 font-mono text-[11px] font-semibold uppercase tracking-[0.18em] text-chalk transition-colors duration-200 ease-out hover:bg-accent-deep disabled:opacity-60"
        >
          {busy
            ? "Working…"
            : mode === "signup"
              ? "Create my account"
              : "Sign in"}
        </button>
        <p className="font-mono text-[10px] uppercase tracking-[0.14em] leading-relaxed text-ink-soft">
          {mode === "signup"
            ? "An account is all you need to ask about a product. Membership dues and approval are a separate step at /apply."
            : "New here? Create an account — it takes a minute and unlocks inquiries on every product."}
        </p>
      </form>
    </div>
  );
}
