"use client";

import type { SupabaseClient } from "@supabase/supabase-js";
import AdminCrud, { type FieldDef, type RowData } from "./AdminCrud";
import { usd } from "@/lib/data";

const programFields: FieldDef[] = [
  { key: "name", label: "Program name", type: "text", required: true },
  { key: "weeks", label: "Weeks", type: "number", required: true },
  { key: "level", label: "Level", type: "text", required: true, placeholder: "Beginner / Intermediate / Advanced" },
  { key: "price", label: "Price (USD)", type: "number", required: true, step: "0.01" },
  { key: "focus", label: "Focus (shown on the card)", type: "textarea" },
];

const coachFields: FieldDef[] = [
  { key: "name", label: "Name", type: "text", required: true },
  { key: "country", label: "Country", type: "text", required: true },
  { key: "code", label: "Country code (3 letters)", type: "text", required: true, placeholder: "ESP" },
  { key: "discipline", label: "Discipline", type: "text", required: true },
  { key: "languages", label: "Languages", type: "text", placeholder: "EN / ES" },
  { key: "slots", label: "Open slots (0 = waitlist)", type: "number", required: true },
];

export default function AdminCoaching({ sb }: { sb: SupabaseClient }) {
  return (
    <>
      <AdminCrud
        sb={sb}
        table="programs"
        title="Training programs."
        fields={programFields}
        newRow={() => ({ id: `pr-${Date.now().toString(36)}`, weeks: 8, price: 0 })}
        summary={(r: RowData) => ({
          title: String(r.name ?? ""),
          meta: `${r.weeks} weeks · ${r.level} · ${usd(Number(r.price ?? 0))}`,
        })}
      />
      <AdminCrud
        sb={sb}
        table="coaches"
        title="Coaching pool."
        fields={coachFields}
        newRow={() => ({ id: `co-${Date.now().toString(36)}`, languages: "EN", slots: 0 })}
        summary={(r: RowData) => ({
          title: String(r.name ?? ""),
          meta: `${r.country} (${r.code}) · ${r.discipline} · ${r.languages}`,
          chips: [Number(r.slots) > 0 ? `${r.slots} SLOTS` : "WAITLIST"],
        })}
      />
    </>
  );
}
