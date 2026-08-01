"use client";

import type { SupabaseClient } from "@supabase/supabase-js";
import AdminCrud, { type FieldDef, type RowData } from "./AdminCrud";
import { categories, usd } from "@/lib/data";

const today = () => new Date().toISOString().slice(0, 10);

const fields: FieldDef[] = [
  { key: "name", label: "Name", type: "text", required: true },
  { key: "brand", label: "Brand", type: "text", required: true },
  {
    key: "category",
    label: "Category",
    type: "select",
    required: true,
    options: categories.map((c) => ({ value: c.slug, label: c.name })),
  },
  { key: "price", label: "Price (USD)", type: "number", required: true, step: "0.01" },
  { key: "compare_at", label: "Compare-at price (sale strike-through)", type: "number", step: "0.01" },
  {
    key: "condition",
    label: "Condition",
    type: "select",
    options: [
      { value: "new", label: "New" },
      { value: "pre-owned", label: "Pre-owned" },
    ],
  },
  { key: "stock", label: "Stock", type: "number", required: true },
  { key: "listed_at", label: "Listed on (drives Daily Listings)", type: "date", required: true },
  { key: "featured", label: "Featured on homepage", type: "checkbox" },
  { key: "clearance", label: "In the Clearance Market", type: "checkbox" },
];

export default function AdminProducts({ sb }: { sb: SupabaseClient }) {
  return (
    <AdminCrud
      sb={sb}
      table="products"
      title="Products."
      blurb="feeds Shop, Daily Listings and Clearance"
      fields={fields}
      newRow={() => ({
        id: `p-${Date.now().toString(36)}`,
        category: categories[0].slug,
        condition: "new",
        stock: 0,
        featured: false,
        clearance: false,
        listed_at: today(),
      })}
      summary={(r: RowData) => ({
        title: String(r.name ?? ""),
        meta: `${r.brand} · ${r.category} · ${usd(Number(r.price ?? 0))} · stock ${r.stock} · listed ${r.listed_at}`,
        chips: [
          ...(r.featured ? ["FEATURED"] : []),
          ...(r.clearance ? ["CLEARANCE"] : []),
        ],
      })}
      quickActions={[{ label: "List today", patch: () => ({ listed_at: today() }) }]}
    />
  );
}
