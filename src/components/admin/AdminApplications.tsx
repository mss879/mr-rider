"use client";

import { useCallback, useEffect, useState } from "react";
import type { SupabaseClient } from "@supabase/supabase-js";
import {
  AddressBlock,
  ApplicantPhoto,
  type PostalAddress,
} from "@/components/admin/ApplicantDetail";

type AppRow = {
  id: number;
  name: string;
  email: string;
  phone: string;
  interest: string;
  /* Migration 20: the chosen reason, with `message` demoted to optional
     notes under it. Both optional here so a project still on migration 11
     renders instead of crashing on undefined. */
  reason?: string;
  message: string;
  photo_path?: string;
  status: "new" | "approved" | "rejected";
  created_at: string;
} & PostalAddress;

const STATUS_STYLE: Record<AppRow["status"], string> = {
  new: "bg-accent text-chalk",
  approved: "bg-ink text-chalk",
  rejected: "border border-line bg-paper-2 text-ink-soft line-through",
};

const btn =
  "px-4 py-2 font-mono text-[10px] font-semibold uppercase tracking-[0.16em] transition-colors duration-200 ease-out";

function fmt(iso: string): string {
  return new Date(iso)
    .toLocaleDateString("en-GB", { day: "2-digit", month: "short", year: "numeric" })
    .toUpperCase();
}

export default function AdminApplications({
  sb,
  onChanged,
}: {
  sb: SupabaseClient;
  onChanged?: () => void;
}) {
  const [rows, setRows] = useState<AppRow[]>([]);
  const [error, setError] = useState<string | null>(null);
  const [busyId, setBusyId] = useState<number | null>(null);

  const load = useCallback(async () => {
    const { data, error: err } = await sb
      .from("membership_applications")
      .select("*")
      .order("created_at", { ascending: false });
    if (err)
      setError(
        `Could not read applications (${err.message}). Run migration 11 first.`,
      );
    else setRows((data as AppRow[]) ?? []);
  }, [sb]);

  useEffect(() => {
    load();
  }, [load]);

  async function approve(r: AppRow) {
    setBusyId(r.id);
    setError(null);
    const { error: err } = await sb.rpc("approve_application", {
      app_id: r.id,
    });
    setBusyId(null);
    if (err) {
      setError(`Approve failed: ${err.message}`);
      return;
    }
    load();
    onChanged?.();
  }

  async function setStatus(r: AppRow, status: AppRow["status"]) {
    setBusyId(r.id);
    setError(null);
    const { error: err } = await sb
      .from("membership_applications")
      .update({ status })
      .eq("id", r.id);
    setBusyId(null);
    if (err) {
      setError(`Update failed: ${err.message}`);
      return;
    }
    load();
    onChanged?.();
  }

  const newCount = rows.filter((r) => r.status === "new").length;
  const sorted = [...rows].sort(
    (a, b) =>
      (a.status === "new" ? 0 : 1) - (b.status === "new" ? 0 : 1) ||
      b.created_at.localeCompare(a.created_at),
  );

  return (
    <section className="mb-14">
      <h2 className="headline mb-2 text-3xl">Applications.</h2>
      <p className="mb-6 font-mono text-[11px] uppercase tracking-[0.18em] text-ink-soft">
        {newCount} awaiting a decision · {rows.length} total · from the /apply
        form · approving creates the client profile
      </p>

      {error && (
        <p
          role="alert"
          className="mb-6 border border-accent-deep bg-chalk px-4 py-3 font-mono text-[11px] uppercase tracking-[0.12em] text-accent-deep"
        >
          {error}
        </p>
      )}

      {sorted.length === 0 ? (
        <p className="border border-line bg-chalk px-6 py-12 text-center font-mono text-[11px] uppercase tracking-[0.16em] text-ink-soft">
          No applications yet — they appear here the moment someone applies
        </p>
      ) : (
        <div className="grid gap-5 lg:grid-cols-2">
          {sorted.map((r) => (
            <article key={r.id} className="flex flex-col border border-line bg-chalk">
              <div className="flex flex-wrap items-center justify-between gap-3 border-b border-line px-5 py-4">
                <div className="flex min-w-0 items-center gap-3">
                  <ApplicantPhoto
                    sb={sb}
                    path={r.photo_path ?? ""}
                    name={r.name}
                    className="size-14"
                  />
                  <div className="min-w-0">
                    <p className="font-display text-xl font-bold uppercase leading-tight tracking-wide">
                      {r.name}
                    </p>
                    <p className="font-mono text-[10px] uppercase tracking-[0.14em] text-ink-soft">
                      applied {fmt(r.created_at)}
                    </p>
                  </div>
                </div>
                <span
                  className={`px-2.5 py-1 font-mono text-[10px] font-semibold uppercase tracking-[0.14em] ${STATUS_STYLE[r.status]}`}
                >
                  {r.status}
                </span>
              </div>
              <dl className="flex flex-col gap-3 px-5 py-4">
                <div>
                  <dt className="font-mono text-[9px] uppercase tracking-[0.22em] text-ink-soft">
                    Email
                  </dt>
                  <dd className="text-sm">{r.email}</dd>
                </div>
                <div>
                  <dt className="font-mono text-[9px] uppercase tracking-[0.22em] text-ink-soft">
                    Phone
                  </dt>
                  <dd className="text-sm">{r.phone}</dd>
                </div>
                <div>
                  <dt className="font-mono text-[9px] uppercase tracking-[0.22em] text-ink-soft">
                    Interested in
                  </dt>
                  <dd>
                    <span className="mt-0.5 inline-block bg-ink px-2 py-1 font-mono text-[10px] font-semibold uppercase tracking-[0.14em] text-chalk">
                      {r.interest || "—"}
                    </span>
                  </dd>
                </div>
                <div>
                  <dt className="font-mono text-[9px] uppercase tracking-[0.22em] text-ink-soft">
                    Why should we let them in
                  </dt>
                  <dd className="mt-1 border-l-2 border-accent pl-3 text-sm leading-relaxed">
                    {/* Applications from before migration 20 have no `reason`
                        and carry their essay in `message`; fall back to it so
                        the historic ones still read properly. */}
                    {r.reason || r.message || "—"}
                  </dd>
                </div>
                {r.reason && r.message && (
                  <div>
                    <dt className="font-mono text-[9px] uppercase tracking-[0.22em] text-ink-soft">
                      Their notes
                    </dt>
                    <dd className="mt-1 whitespace-pre-line text-sm leading-relaxed text-ink-soft">
                      {r.message}
                    </dd>
                  </div>
                )}
                <div>
                  <dt className="font-mono text-[9px] uppercase tracking-[0.22em] text-ink-soft">
                    Ships to
                  </dt>
                  <dd className="mt-1">
                    <AddressBlock address={r} />
                  </dd>
                </div>
              </dl>
              <div className="mt-auto flex gap-2 border-t border-line px-5 py-4">
                {r.status !== "approved" && (
                  <button
                    type="button"
                    disabled={busyId === r.id}
                    onClick={() => approve(r)}
                    className={`${btn} bg-accent text-chalk hover:bg-accent-deep disabled:opacity-60`}
                  >
                    {busyId === r.id ? "Working…" : "Approve → create client"}
                  </button>
                )}
                {r.status !== "rejected" && (
                  <button
                    type="button"
                    disabled={busyId === r.id}
                    onClick={() => setStatus(r, "rejected")}
                    className={`${btn} border border-ink hover:bg-ink hover:text-chalk disabled:opacity-60`}
                  >
                    Reject
                  </button>
                )}
                {r.status === "rejected" && (
                  <button
                    type="button"
                    disabled={busyId === r.id}
                    onClick={() => setStatus(r, "new")}
                    className={`${btn} border border-line text-ink-soft hover:border-ink hover:text-ink disabled:opacity-60`}
                  >
                    Reopen
                  </button>
                )}
                {r.status === "approved" && (
                  <span className="flex items-center font-mono text-[10px] uppercase tracking-[0.14em] text-ink-soft">
                    Client profile created — see the Clients tab
                  </span>
                )}
              </div>
            </article>
          ))}
        </div>
      )}
    </section>
  );
}
