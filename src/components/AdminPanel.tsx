"use client";

import { useCallback, useEffect, useState } from "react";
import type { Session } from "@supabase/supabase-js";
import Lock from "@/components/Lock";
import AdminApplications from "@/components/admin/AdminApplications";
import AdminAuction from "@/components/admin/AdminAuction";
import AdminClients from "@/components/admin/AdminClients";
import AdminCoaching from "@/components/admin/AdminCoaching";
import AdminInquiries from "@/components/admin/AdminInquiries";
import AdminProducts from "@/components/admin/AdminProducts";
import { hasUnread, type InquiryReadState } from "@/lib/inquiries";
import { getSupabaseBrowser } from "@/lib/supabaseBrowser";

type Tab =
  | "inquiries"
  | "applications"
  | "clients"
  | "enquiries"
  | "products"
  | "coaching"
  | "auction"
  | "accounts";

const TABS: { id: Tab; label: string }[] = [
  { id: "inquiries", label: "Inquiry Inbox" },
  { id: "applications", label: "Applications" },
  { id: "clients", label: "Clients" },
  { id: "enquiries", label: "Enquiries" },
  { id: "products", label: "Products" },
  { id: "coaching", label: "Coaching" },
  { id: "auction", label: "Auction" },
  { id: "accounts", label: "Accounts" },
];

type ProfileRow = {
  id: string;
  full_name: string;
  email: string;
  rides: string;
  status: "pending" | "paid" | "active" | "rejected";
  is_admin: boolean;
  created_at: string;
};

type MessageRow = {
  id: number;
  name: string;
  email: string;
  topic: string;
  message: string;
  created_at: string;
};

const STATUS_ORDER: Record<ProfileRow["status"], number> = {
  pending: 0,
  paid: 1,
  active: 2,
  rejected: 3,
};

const STATUS_STYLE: Record<ProfileRow["status"], string> = {
  pending: "border border-line bg-paper-2 text-ink-soft",
  paid: "bg-ink text-chalk",
  active: "bg-ink text-chalk font-semibold",
  rejected: "border border-line bg-paper-2 text-ink-soft line-through",
};

const label = "mb-1.5 block font-mono text-[10px] uppercase tracking-[0.22em] text-ink-soft";
const field =
  "w-full border border-line bg-chalk px-3 py-3 text-sm transition-colors duration-200 ease-out placeholder:text-ink-soft/60";
const errBox =
  "border border-ink bg-chalk px-4 py-3 font-mono text-[11px] uppercase tracking-[0.12em] text-ink font-semibold";

function fmtDate(iso: string): string {
  return new Date(iso)
    .toLocaleDateString("en-GB", { day: "2-digit", month: "short" })
    .toUpperCase();
}

export default function AdminPanel() {
  const sb = getSupabaseBrowser();

  const [booting, setBooting] = useState(true);
  const [session, setSession] = useState<Session | null>(null);
  const [me, setMe] = useState<ProfileRow | null>(null);
  const [profiles, setProfiles] = useState<ProfileRow[]>([]);
  const [messages, setMessages] = useState<MessageRow[]>([]);
  const [signingIn, setSigningIn] = useState(false);
  const [error, setError] = useState<string | null>(null);
  // The inbox is where the daily work is now, so the panel opens on it.
  const [tab, setTab] = useState<Tab>("inquiries");
  const [appsNew, setAppsNew] = useState(0);
  const [inquiriesNew, setInquiriesNew] = useState(0);

  useEffect(() => {
    if (!sb) {
      setBooting(false);
      return;
    }
    sb.auth.getSession().then(({ data }) => {
      setSession(data.session);
      setBooting(false);
    });
    const { data: sub } = sb.auth.onAuthStateChange((_evt, s) => {
      setSession(s);
      if (!s) {
        setMe(null);
        setProfiles([]);
        setMessages([]);
      }
    });
    return () => sub.subscription.unsubscribe();
  }, [sb]);

  const loadData = useCallback(async () => {
    if (!sb || !session) return;
    setError(null);
    const { data: own, error: ownErr } = await sb
      .from("profiles")
      .select("*")
      .eq("id", session.user.id)
      .maybeSingle();
    if (ownErr) {
      setError(
        `Could not read profiles (${ownErr.message}). Run migrations 07 and 08 first.`,
      );
      return;
    }
    setMe(own as ProfileRow | null);
    if (!own?.is_admin) return;

    const [{ data: all, error: allErr }, { data: msgs }] = await Promise.all([
      sb.from("profiles").select("*").order("created_at", { ascending: false }),
      sb
        .from("contact_messages")
        .select("*")
        .order("created_at", { ascending: false })
        .limit(50),
    ]);
    if (allErr) {
      setError(`Could not list applications: ${allErr.message}`);
      return;
    }
    setProfiles((all as ProfileRow[]) ?? []);
    setMessages((msgs as MessageRow[]) ?? []);

    const { count, error: cntErr } = await sb
      .from("membership_applications")
      .select("id", { count: "exact", head: true })
      .eq("status", "new");
    if (!cntErr) setAppsNew(count ?? 0);

    // "Unread" compares two columns, which PostgREST cannot filter on —
    // read the bookkeeping columns and count in JS.
    const { data: inq, error: inqErr } = await sb
      .from("inquiries")
      .select("last_message_at,last_sender_role,admin_read_at,member_read_at")
      .order("last_message_at", { ascending: false })
      .limit(500);
    if (!inqErr) {
      setInquiriesNew(
        ((inq as InquiryReadState[]) ?? []).filter((r) => hasUnread(r, "admin"))
          .length,
      );
    }
  }, [sb, session]);

  useEffect(() => {
    loadData();
  }, [loadData]);

  async function onLogin(e: React.FormEvent<HTMLFormElement>) {
    e.preventDefault();
    if (!sb) return;
    const data = new FormData(e.currentTarget);
    setSigningIn(true);
    setError(null);
    const { error: err } = await sb.auth.signInWithPassword({
      email: String(data.get("email")),
      password: String(data.get("password")),
    });
    setSigningIn(false);
    if (err) setError(err.message);
  }

  async function setStatus(id: string, status: ProfileRow["status"]) {
    if (!sb) return;
    const prev = profiles;
    setProfiles((ps) => ps.map((p) => (p.id === id ? { ...p, status } : p)));
    const { error: err } = await sb
      .from("profiles")
      .update({ status })
      .eq("id", id);
    if (err) {
      setProfiles(prev);
      setError(`Update failed: ${err.message}`);
    }
  }

  /* ---------- render ---------- */

  if (booting) {
    return (
      <p className="px-6 py-24 text-center font-mono text-[11px] uppercase tracking-[0.2em] text-ink-soft">
        Checking session…
      </p>
    );
  }

  if (!sb) {
    return (
      <div className="mx-auto max-w-md px-6 py-20">
        <p className={errBox}>
          Supabase is not configured — add NEXT_PUBLIC_SUPABASE_URL and
          NEXT_PUBLIC_SUPABASE_ANON_KEY to .env.local
        </p>
      </div>
    );
  }

  if (!session) {
    return (
      <div className="mx-auto w-full max-w-md px-6 py-16">
        <form
          onSubmit={onLogin}
          className="flex flex-col gap-5 border border-line bg-chalk p-8"
        >
          <p className="flex items-center gap-2.5 font-mono text-[11px] font-semibold uppercase tracking-[0.2em]">
            <span className="grid size-6 place-items-center bg-ink text-chalk">
              <Lock />
            </span>
            Admin sign-in
          </p>
          <div>
            <label htmlFor="ad-email" className={label}>
              Email
            </label>
            <input
              id="ad-email"
              name="email"
              type="email"
              required
              autoComplete="username"
              placeholder="admin@mrrider.lk"
              className={field}
            />
          </div>
          <div>
            <label htmlFor="ad-pass" className={label}>
              Password
            </label>
            <input
              id="ad-pass"
              name="password"
              type="password"
              required
              autoComplete="current-password"
              placeholder="••••••••"
              className={field}
            />
          </div>
          {error && (
            <p role="alert" className={errBox}>
              {error}
            </p>
          )}
          <button
            type="submit"
            disabled={signingIn}
            className="bg-ink px-5 py-3.5 font-mono text-[11px] font-semibold uppercase tracking-[0.18em] text-chalk transition-colors duration-200 ease-out hover:bg-ink-soft disabled:opacity-60"
          >
            {signingIn ? "Signing in…" : "Sign in"}
          </button>
          <p className="font-mono text-[10px] uppercase tracking-[0.14em] leading-relaxed text-ink-soft">
            Create the admin user (admin@mrrider.lk) in Supabase →
            Authentication → Users, then run migration 08.
          </p>
        </form>
      </div>
    );
  }

  if (!me?.is_admin) {
    return (
      <div className="mx-auto max-w-md px-6 py-16 text-center">
        <p className="headline mb-4 text-3xl">Members door.</p>
        <p className="mb-6 font-mono text-[11px] uppercase tracking-[0.16em] text-ink-soft">
          {session.user.email} is signed in but is not the club admin
        </p>
        {error && (
          <p role="alert" className={`${errBox} mb-6 text-left`}>
            {error}
          </p>
        )}
        <button
          type="button"
          onClick={() => sb.auth.signOut()}
          className="bg-ink px-5 py-3 font-mono text-[11px] font-semibold uppercase tracking-[0.18em] text-chalk transition-colors duration-200 ease-out hover:bg-ink-soft"
        >
          Sign out
        </button>
      </div>
    );
  }

  const applications = [...profiles].sort(
    (a, b) =>
      STATUS_ORDER[a.status] - STATUS_ORDER[b.status] ||
      b.created_at.localeCompare(a.created_at),
  );
  const pendingCount = profiles.filter(
    (p) => p.status === "pending" || p.status === "paid",
  ).length;

  return (
    <div className="mx-auto max-w-7xl px-6 pb-20">
      <div className="mb-10 flex flex-wrap items-center justify-between gap-4 border-b border-line pb-5">
        <p className="font-mono text-[11px] uppercase tracking-[0.18em] text-ink-soft">
          Signed in as{" "}
          <span className="text-ink">{session.user.email}</span> · superadmin
        </p>
        <div className="flex items-center gap-4">
          <button
            type="button"
            onClick={loadData}
            className="border border-ink px-4 py-2 font-mono text-[10px] font-semibold uppercase tracking-[0.16em] transition-colors duration-200 ease-out hover:bg-chalk"
          >
            Refresh
          </button>
          <button
            type="button"
            onClick={() => sb.auth.signOut()}
            className="bg-ink px-4 py-2 font-mono text-[10px] font-semibold uppercase tracking-[0.16em] text-chalk transition-colors duration-200 ease-out hover:bg-ink-soft"
          >
            Sign out
          </button>
        </div>
      </div>

      {error && (
        <p role="alert" className={`${errBox} mb-8`}>
          {error}
        </p>
      )}

      <div className="mb-10 flex flex-wrap gap-2">
        {TABS.map((t) => (
          <button
            key={t.id}
            type="button"
            onClick={() => setTab(t.id)}
            className={`px-4 py-2.5 font-mono text-[11px] font-semibold uppercase tracking-[0.16em] transition-colors duration-200 ease-out ${
              tab === t.id
                ? "bg-ink text-chalk"
                : "border border-line text-ink-soft hover:border-ink hover:text-ink"
            }`}
          >
            {t.label}
            {t.id === "inquiries" && inquiriesNew > 0 ? ` (${inquiriesNew})` : ""}
            {t.id === "applications" && appsNew > 0 ? ` (${appsNew})` : ""}
            {t.id === "accounts" && pendingCount > 0
              ? ` (${pendingCount})`
              : ""}
          </button>
        ))}
      </div>

      {tab === "inquiries" && (
        <AdminInquiries sb={sb} session={session} onChanged={loadData} />
      )}
      {tab === "applications" && (
        <AdminApplications sb={sb} onChanged={loadData} />
      )}
      {tab === "clients" && <AdminClients sb={sb} />}

      {tab === "accounts" && (
      <section className="mb-14">
        <h2 className="headline mb-2 text-3xl">Accounts.</h2>
        <p className="mb-6 font-mono text-[11px] uppercase tracking-[0.18em] text-ink-soft">
          {profiles.length} auth accounts · member logins arrive with the next
          phase — applications are reviewed in the Applications tab
        </p>
        {applications.length === 0 ? (
          <p className="border border-line bg-chalk px-6 py-12 text-center font-mono text-[11px] uppercase tracking-[0.16em] text-ink-soft">
            No sign-ups yet — accounts appear here the moment someone registers
          </p>
        ) : (
          <div className="border-t border-line">
            {applications.map((p) => (
              <div
                key={p.id}
                className="flex flex-wrap items-center gap-x-6 gap-y-3 border-b border-line py-4"
              >
                <div className="min-w-0 flex-1 basis-52">
                  <p className="font-display text-lg font-bold uppercase leading-tight tracking-wide">
                    {p.full_name || "Unnamed rider"}
                    {p.is_admin && (
                      <span className="ml-2 align-middle font-mono text-[9px] tracking-[0.14em] text-ink-soft">
                        ADMIN
                      </span>
                    )}
                  </p>
                  <p className="truncate font-mono text-[10px] uppercase tracking-[0.14em] text-ink-soft">
                    {p.email} · joined {fmtDate(p.created_at)}
                    {p.rides ? ` · rides: ${p.rides}` : ""}
                  </p>
                </div>
                <span
                  className={`px-2.5 py-1 font-mono text-[10px] font-semibold uppercase tracking-[0.14em] ${STATUS_STYLE[p.status]}`}
                >
                  {p.status}
                </span>
                {!p.is_admin && (
                  <div className="flex gap-2">
                    {p.status !== "active" && (
                      <button
                        type="button"
                        onClick={() => setStatus(p.id, "active")}
                        className="bg-ink px-4 py-2 font-mono text-[10px] font-semibold uppercase tracking-[0.16em] text-chalk transition-colors duration-200 ease-out hover:bg-ink-soft"
                      >
                        Approve
                      </button>
                    )}
                    {p.status !== "rejected" && (
                      <button
                        type="button"
                        onClick={() => setStatus(p.id, "rejected")}
                        className="border border-ink px-4 py-2 font-mono text-[10px] font-semibold uppercase tracking-[0.16em] transition-colors duration-200 ease-out hover:bg-ink hover:text-chalk"
                      >
                        Reject
                      </button>
                    )}
                    {(p.status === "active" || p.status === "rejected") && (
                      <button
                        type="button"
                        onClick={() => setStatus(p.id, "pending")}
                        className="border border-line px-4 py-2 font-mono text-[10px] font-semibold uppercase tracking-[0.16em] text-ink-soft transition-colors duration-200 ease-out hover:border-ink hover:text-ink"
                      >
                        Reset
                      </button>
                    )}
                  </div>
                )}
              </div>
            ))}
          </div>
        )}
      </section>
      )}

      {tab === "enquiries" && (
      <section>
        <h2 className="headline mb-2 text-3xl">Enquiries.</h2>
        <p className="mb-6 font-mono text-[11px] uppercase tracking-[0.18em] text-ink-soft">
          Latest {messages.length} enquiries from the /contact page
        </p>
        {messages.length === 0 ? (
          <p className="border border-line bg-chalk px-6 py-12 text-center font-mono text-[11px] uppercase tracking-[0.16em] text-ink-soft">
            Inbox is empty
          </p>
        ) : (
          <div className="grid gap-4 lg:grid-cols-2">
            {messages.map((m) => (
              <article key={m.id} className="border border-line bg-chalk p-5">
                <div className="mb-3 flex flex-wrap items-center gap-x-4 gap-y-2">
                  <span className="bg-ink px-2 py-1 font-mono text-[9px] font-semibold uppercase tracking-[0.14em] text-chalk">
                    {m.topic}
                  </span>
                  <span className="font-mono text-[10px] uppercase tracking-[0.14em] text-ink-soft">
                    {fmtDate(m.created_at)}
                  </span>
                </div>
                <p className="font-display text-lg font-bold uppercase leading-tight tracking-wide">
                  {m.name}
                </p>
                <p className="mb-3 font-mono text-[10px] uppercase tracking-[0.14em] text-ink-soft">
                  {m.email}
                </p>
                <p className="text-sm leading-relaxed text-ink-soft">
                  {m.message}
                </p>
              </article>
            ))}
          </div>
        )}
      </section>
      )}

      {tab === "products" && <AdminProducts sb={sb} />}
      {tab === "coaching" && <AdminCoaching sb={sb} />}
      {tab === "auction" && <AdminAuction sb={sb} />}
    </div>
  );
}
