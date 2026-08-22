"use client";

import { useCallback, useEffect, useMemo, useState } from "react";
import type { SupabaseClient } from "@supabase/supabase-js";
import {
  AddressBlock,
  ApplicantPhoto,
  hasAddress,
  type PostalAddress,
} from "@/components/admin/ApplicantDetail";
import { countryName } from "@/lib/countries";

type ClientRow = {
  id: string;
  application_id: number | null;
  name: string;
  email: string;
  phone: string;
  interest: string;
  status: "active" | "suspended";
  created_at: string;
  /* Carried over from the application by approve_application (migration
     20). Optional so clients approved before it still render. */
  reason?: string;
  photo_path?: string;
} & PostalAddress;

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
  const [query, setQuery] = useState("");

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

  /* Filtered in the browser, not in Postgres. The whole client list is
     already loaded and a club of this size is hundreds of rows, not
     millions — a round-trip per keystroke would be slower than this and
     would make the box feel laggy on a bad connection.

     Country is matched on the DISPLAY name as well as the stored code, so
     typing "Sri Lanka" finds a row that only holds "LK". */
  const visible = useMemo(() => {
    const q = query.trim().toLowerCase();
    if (!q) return rows;
    // Every word has to match somewhere, so "kumar colombo" narrows rather
    // than widening the way a plain substring search would.
    const terms = q.split(/\s+/);
    return rows.filter((r) => {
      const haystack = [
        r.name,
        r.email,
        r.phone,
        r.interest,
        r.reason,
        r.address_line1,
        r.address_line2,
        r.city,
        r.state,
        r.postal_code,
        r.country,
        countryName(r.country ?? ""),
        r.status,
      ]
        .filter(Boolean)
        .join(" ")
        .toLowerCase();
      return terms.every((t) => haystack.includes(t));
    });
  }, [rows, query]);

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
      <p className="mb-5 font-mono text-[11px] uppercase tracking-[0.18em] text-ink-soft">
        {rows.length} client profiles · created automatically when an
        application is approved
      </p>

      <div className="mb-6 flex flex-wrap items-center gap-3">
        <label htmlFor="client-search" className="sr-only">
          Search clients
        </label>
        <input
          id="client-search"
          type="search"
          value={query}
          onChange={(e) => setQuery(e.target.value)}
          placeholder="Search name, email, phone, city, country…"
          className="w-full max-w-md border border-line bg-chalk px-3 py-2.5 text-sm transition-colors duration-200 ease-out placeholder:text-ink-soft/60 focus:border-ink sm:w-auto sm:flex-1"
        />
        {query && (
          <>
            <span className="font-mono text-[10px] uppercase tracking-[0.16em] text-ink-soft">
              {visible.length} of {rows.length}
            </span>
            <button
              type="button"
              onClick={() => setQuery("")}
              className={`${btn} border border-line text-ink-soft hover:border-ink hover:text-ink`}
            >
              Clear
            </button>
          </>
        )}
      </div>

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
      ) : visible.length === 0 ? (
        <p className="border border-line bg-chalk px-6 py-12 text-center font-mono text-[11px] uppercase tracking-[0.16em] text-ink-soft">
          No client matches “{query}”
        </p>
      ) : (
        <div className="border-t border-line">
          {visible.map((r) => (
            <div
              key={r.id}
              className="flex flex-wrap items-start gap-x-6 gap-y-3 border-b border-line py-4"
            >
              <ApplicantPhoto
                sb={sb}
                path={r.photo_path ?? ""}
                name={r.name}
                className="size-12"
              />
              <div className="min-w-0 flex-1 basis-56">
                <p className="font-display text-lg font-bold uppercase leading-tight tracking-wide">
                  {r.name}
                </p>
                <p className="font-mono text-[10px] uppercase tracking-[0.14em] text-ink-soft">
                  {r.email} · {r.phone || "no phone"} · member since{" "}
                  {fmt(r.created_at)}
                  {r.application_id ? ` · application #${r.application_id}` : ""}
                </p>
                {hasAddress(r) && (
                  <div className="mt-2 border-l-2 border-line pl-3 text-ink-soft">
                    <AddressBlock address={r} />
                  </div>
                )}
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
