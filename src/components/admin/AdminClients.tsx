"use client";

import { useCallback, useEffect, useState } from "react";
import type { SupabaseClient } from "@supabase/supabase-js";

type ClientRow = {
  id: string;
  application_id: number | null;
  name: string;
  email: string;
  phone: string;
  interest: string;
  status: "active" | "suspended";
  created_at: string;
};

const btn =
  "px-3 py-1.5 font-mono text-[10px] font-semibold uppercase tracking-[0.14em] transition-colors duration-200 ease-out";

function fmt(iso: string): string {
  return new Date(iso)
    .toLocaleDateString("en-GB", { day: "2-digit", month: "short", year: "numeric" })
    .toUpperCase();
}

export default function AdminClients({ sb }: { sb: SupabaseClient }) {
  const [rows, setRows] = useState<ClientRow[]>([]);
  const [error, setError] = useState<string | null>(null);

  const load = useCallback(async () => {
    const { data, error: err } = await sb
      .from("clients")
      .select("*")
      .order("created_at", { ascending: false });
    if (err)
      setError(`Could not read clients (${err.message}). Run migration 11 first.`);
    else setRows((data as ClientRow[]) ?? []);
  }, [sb]);

  useEffect(() => {
    load();
  }, [load]);

  async function setStatus(r: ClientRow, status: ClientRow["status"]) {
    const { error: err } = await sb
      .from("clients")
      .update({ status })
      .eq("id", r.id);
    if (err) setError(`Update failed: ${err.message}`);
    else load();
  }

  return (
    <section className="mb-14">
      <h2 className="headline mb-2 text-3xl">Clients.</h2>
      <p className="mb-6 font-mono text-[11px] uppercase tracking-[0.18em] text-ink-soft">
        {rows.length} client profiles · created automatically when an
        application is approved
      </p>

      {error && (
        <p
          role="alert"
          className="mb-6 border border-accent-deep bg-chalk px-4 py-3 font-mono text-[11px] uppercase tracking-[0.12em] text-accent-deep"
        >
          {error}
        </p>
      )}

      {rows.length === 0 ? (
        <p className="border border-line bg-chalk px-6 py-12 text-center font-mono text-[11px] uppercase tracking-[0.16em] text-ink-soft">
          No clients yet — approve an application to create the first profile
        </p>
      ) : (
        <div className="border-t border-line">
          {rows.map((r) => (
            <div
              key={r.id}
              className="flex flex-wrap items-center gap-x-6 gap-y-3 border-b border-line py-4"
            >
              <div className="min-w-0 flex-1 basis-56">
                <p className="font-display text-lg font-bold uppercase leading-tight tracking-wide">
                  {r.name}
                </p>
                <p className="font-mono text-[10px] uppercase tracking-[0.14em] text-ink-soft">
                  {r.email} · {r.phone || "no phone"} · member since{" "}
                  {fmt(r.created_at)}
                  {r.application_id ? ` · application #${r.application_id}` : ""}
                </p>
              </div>
              <span className="bg-ink px-2 py-1 font-mono text-[9px] font-semibold uppercase tracking-[0.14em] text-chalk">
                {r.interest || "—"}
              </span>
              <span
                className={`px-2.5 py-1 font-mono text-[10px] font-semibold uppercase tracking-[0.14em] ${
                  r.status === "active"
                    ? "bg-accent text-chalk"
                    : "border border-line bg-paper-2 text-ink-soft"
                }`}
              >
                {r.status}
              </span>
              <button
                type="button"
                onClick={() =>
                  setStatus(r, r.status === "active" ? "suspended" : "active")
                }
                className={`${btn} border border-line text-ink-soft hover:border-ink hover:text-ink`}
              >
                {r.status === "active" ? "Suspend" : "Reactivate"}
              </button>
            </div>
          ))}
        </div>
      )}
    </section>
  );
}
