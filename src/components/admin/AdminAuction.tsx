"use client";

import type { SupabaseClient } from "@supabase/supabase-js";
import AdminCrud, { type FieldDef, type RowData } from "./AdminCrud";
import { AUCTION_CURRENCIES, DEFAULT_AUCTION_CURRENCY, money } from "@/lib/data";
import { MAX_PRODUCT_IMAGES, PRODUCT_IMAGE_BUCKET } from "@/lib/images";

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
  {
    key: "currency",
    label: "Currency",
    type: "select",
    options: AUCTION_CURRENCIES.map((c) => ({ value: c.code, label: `${c.code} — ${c.name}` })),
  },
  {
    key: "current_bid",
    label: "Current bid (in the currency above)",
    type: "number",
    required: true,
    step: "1",
    placeholder: "e.g. 250000",
  },
  { key: "bids_count", label: "Bid count", type: "number", required: true },
  { key: "ends_at", label: "Ends at", type: "datetime", required: true },
  { key: "spec", label: "Spec line (shown under the name)", type: "textarea" },
  {
    key: "images",
    label: `Lot photos (pick several at once — up to ${MAX_PRODUCT_IMAGES})`,
    type: "images",
    // Same public bucket as products, in a folder per lot (auction-<id>/…) —
    // see migration 25.
    bucket: PRODUCT_IMAGE_BUCKET,
    max: MAX_PRODUCT_IMAGES,
    pathPrefix: "auction-",
    hint: "The first photo is the main one. Use the arrows to change the order.",
  },
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
        currency: DEFAULT_AUCTION_CURRENCY,
        current_bid: 0,
        images: [],
        bids_count: 0,
        ends_at: localInput(86_400_000),
      })}
      summary={(r: RowData) => ({
        title: `LOT ${r.lot_no} — ${r.name}`,
        meta: `${r.condition} · bid ${money(Number(r.current_bid ?? 0), String(r.currency ?? DEFAULT_AUCTION_CURRENCY))} · ${r.bids_count} bids · ends ${new Date(String(r.ends_at)).toLocaleString()}`,
      })}
    />
  );
}
