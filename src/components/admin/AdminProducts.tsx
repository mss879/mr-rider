"use client";

import type { SupabaseClient } from "@supabase/supabase-js";
import AdminCrud, { type FieldDef, type RowData } from "./AdminCrud";
import { MAX_PRODUCT_IMAGES, PRODUCT_IMAGE_BUCKET } from "@/lib/images";
import {
  brandName,
  brands,
  categories,
  subcategoriesOf,
  subcategoryName,
} from "@/lib/taxonomy";

const today = () => new Date().toISOString().slice(0, 10);

const brandOptions = [...brands]
  .sort((a, b) => a.name.localeCompare(b.name))
  .map((b) => ({ value: b.slug, label: b.name }));

const fields: FieldDef[] = [
  { key: "name", label: "Name", type: "text", required: true },
  {
    key: "brand",
    label: "Brand",
    type: "select",
    required: true,
    options: brandOptions,
  },
  {
    key: "category",
    label: "Category",
    type: "select",
    required: true,
    options: categories.map((c) => ({ value: c.slug, label: c.name })),
  },
  {
    key: "subcategory",
    label: "Product type",
    type: "select",
    required: true,
    // Product types follow the chosen category, future-expansion rows included
    // so stock can be added before a section goes live.
    optionsFor: (r: RowData) =>
      subcategoriesOf(String(r.category ?? categories[0].slug), {
        includeFuture: true,
      }).map((s) => ({ value: s.slug, label: `${s.section} · ${s.name}` })),
  },
  {
    key: "collections",
    label: "Also show under (brand collections — no duplicate product record)",
    type: "multiselect",
    options: brandOptions,
  },
  {
    key: "images",
    label: "Product images",
    type: "images",
    bucket: PRODUCT_IMAGE_BUCKET,
    max: MAX_PRODUCT_IMAGES,
  },
  // No price fields: the floor carries no pricing. Riders open an inquiry and
  // the club quotes in the thread (Inquiry Inbox tab).
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
  { key: "clearance", label: "In the Clearance Market / Sale", type: "checkbox" },
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
        brand: brandOptions[0].value,
        category: categories[0].slug,
        subcategory: subcategoriesOf(categories[0].slug)[0]?.slug ?? "",
        collections: [],
        images: [],
        condition: "new",
        stock: 0,
        featured: false,
        clearance: false,
        listed_at: today(),
      })}
      summary={(r: RowData) => ({
        title: String(r.name ?? ""),
        meta: `${brandName(String(r.brand ?? ""))} · ${subcategoryName(String(r.subcategory ?? ""))} · stock ${r.stock} · listed ${r.listed_at}`,
        chips: [
          ...(r.featured ? ["FEATURED"] : []),
          ...(r.clearance ? ["CLEARANCE"] : []),
        ],
      })}
      quickActions={[{ label: "List today", patch: () => ({ listed_at: today() }) }]}
    />
  );
}
