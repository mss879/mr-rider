"use client";

import type { SupabaseClient } from "@supabase/supabase-js";
import AdminCrud, { type FieldDef, type RowData, type SortOption } from "./AdminCrud";
import { MAX_PRODUCT_IMAGES, PRODUCT_IMAGE_BUCKET } from "@/lib/images";
import {
  brandName,
  brands,
  categories,
  subcategoriesOf,
  subcategoryName,
} from "@/lib/taxonomy";

const today = () => new Date().toISOString().slice(0, 10);

/* BE-01 — the products log carries 1,400+ rows, so it is searched, ordered and
   paged in Postgres rather than rendered whole. */

/* Searched columns. All four are what an admin has in front of them when they
   go looking: the name off an inquiry, the brand off an invoice, the slug off
   a URL, the id off a support thread. `description` is deliberately NOT here —
   matching inside long copy turns a search for "carbon" into half the shop.

   `brand` and `subcategory` hold SLUGS, not display names, so searching
   "Pinarello" matches on `pinarello` — which is what the admin sees in the
   URL bar and the CSV, and close enough to the display name to find. */
const SEARCH_COLUMNS = ["name", "brand", "subcategory", "id"];

const PAGE_SIZE = 50;

const SORTS: SortOption[] = [
  // Date Listed first and descending: the club asked for it by name, and it
  // is the order anybody auditing "what went up this week" needs.
  { value: "listed-new", label: "Date listed · newest", column: "listed_at", ascending: false },
  { value: "listed-old", label: "Date listed · oldest", column: "listed_at", ascending: true },
  { value: "added", label: "Date added · newest", column: "created_at", ascending: false },
  { value: "name", label: "Name · A–Z", column: "name", ascending: true },
  { value: "brand", label: "Brand · A–Z", column: "brand", ascending: true },
  // The club's own running order — what /shop is actually showing.
  { value: "shelf", label: "Club running order", column: "sort_position", ascending: true },
];

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
    key: "description",
    label: "Description",
    type: "textarea",
    placeholder:
      "Spec, condition, fit, what's included — the copy a rider reads before asking about it.",
  },
  {
    key: "images",
    label: `Product images (pick several at once — up to ${MAX_PRODUCT_IMAGES})`,
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
  {
    key: "stock",
    label: "Stock on hand",
    type: "number",
    required: true,
    // Pre-owned stock is one of one — the question only means something for
    // something the club can reorder. Hidden fields skip the required check,
    // so a pre-owned product saves on whatever number it already carries.
    showIf: (r: RowData) => String(r.condition ?? "new") === "new",
  },
  { key: "listed_at", label: "Listed on", type: "date", required: true },
  {
    key: "daily_listing",
    label: "Include in Daily Listings (today's drop)",
    type: "checkbox",
  },
  {
    key: "sort_position",
    label: "Running order (lower shows first — leave blank for newest-first)",
    type: "number",
  },
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
      searchColumns={SEARCH_COLUMNS}
      sortOptions={SORTS}
      pageSize={PAGE_SIZE}
      newRow={() => ({
        id: `p-${Date.now().toString(36)}`,
        brand: brandOptions[0].value,
        category: categories[0].slug,
        subcategory: subcategoriesOf(categories[0].slug)[0]?.slug ?? "",
        collections: [],
        images: [],
        condition: "new",
        stock: 0,
        description: "",
        featured: false,
        clearance: false,
        daily_listing: true,
        sort_position: null,
        listed_at: today(),
      })}
      summary={(r: RowData) => ({
        title: String(r.name ?? ""),
        meta: [
          brandName(String(r.brand ?? "")),
          subcategoryName(String(r.subcategory ?? "")),
          String(r.condition ?? "new") === "new" ? `stock ${r.stock}` : "pre-owned",
          `listed ${r.listed_at}`,
          r.sort_position == null ? null : `order ${r.sort_position}`,
        ]
          .filter(Boolean)
          .join(" · "),
        chips: [
          ...(r.daily_listing ? ["DAILY"] : []),
          ...(r.featured ? ["FEATURED"] : []),
          ...(r.clearance ? ["CLEARANCE"] : []),
        ],
      })}
      quickActions={[
        {
          label: "List today",
          // Both fields, or the button would move the date and leave the
          // product out of the very drop it was just dated into.
          patch: () => ({ listed_at: today(), daily_listing: true }),
        },
      ]}
    />
  );
}
