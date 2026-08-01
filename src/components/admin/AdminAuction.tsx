"use client";

import type { SupabaseClient } from "@supabase/supabase-js";
import AdminCrud, { type FieldDef, type RowData } from "./AdminCrud";
import { usd } from "@/lib/data";

function localInput(msFromNow: number): string {
  const d = new Date(Date.now() + msFromNow);
  const pad = (n: number) => String(n).padStart(2, "0");
  return `${d.getFullYear()}-${pad(d.getMonth() + 1)}-${pad(d.getDate())}T${pad(d.getHours())}:${pad(d.getMinutes())}`;
}

const fields: FieldDef[] = [
  { key: "lot_no", label: "Lot number", type: "text", required: true, placeholder: "06" },
  { key: "name", label: "Lot name", type: "text", required: true },
  {
    key: "condition",
    label: "Condition",
    type: "select",
    options: [
      { value: "NEW", label: "New" },
      { value: "RACE-USED", label: "Race-used" },
      { value: "PRE-OWNED", label: "Pre-owned" },
    ],
  },
  { key: "current_bid", label: "Current bid (USD)", type: "number", required: true, step: "0.01" },
  { key: "bids_count", label: "Bid count", type: "number", required: true },
  { key: "ends_at", label: "Ends at", type: "datetime", required: true },
  { key: "spec", label: "Spec line (shown under the name)", type: "textarea" },
];

export default function AdminAuction({ sb }: { sb: SupabaseClient }) {
  return (
    <AdminCrud
      sb={sb}
      table="auction_lots"
      title="Auction lots."
      blurb="countdowns render from ends_at"
      fields={fields}
      orderBy="lot_no"
      newRow={() => ({
        id: `lot-${Date.now().toString(36)}`,
        condition: "PRE-OWNED",
        current_bid: 0,
        bids_count: 0,
        ends_at: localInput(86_400_000),
      })}
      summary={(r: RowData) => ({
        title: `LOT ${r.lot_no} — ${r.name}`,
        meta: `${r.condition} · bid ${usd(Number(r.current_bid ?? 0))} · ${r.bids_count} bids · ends ${new Date(String(r.ends_at)).toLocaleString()}`,
      })}
    />
  );
}
