"use client";

import type { SupabaseClient } from "@supabase/supabase-js";
import AdminCrud, { type FieldDef, type RowData, type SortOption } from "./AdminCrud";
import {
  applyBrandRows,
  brandSlug,
  categories,
  categoryName,
  type BrandRow,
} from "@/lib/taxonomy";

/* Brands — public.brands (migration 26). The club adds a brand here before
   giving it to a product, and corrects a name here once for every product
   that carries it.

   A brand's id (its slug) is made from the name when it is first saved and
   never changes after: shop links and every product carrying the brand point
   at it. Renaming changes only what riders read. */

const fields: FieldDef[] = [
  {
    key: "name",
    label: "Brand name",
    type: "text",
    required: true,
    placeholder: "e.g. Factor",
  },
  {
    key: "categories",
    label: "Aisles it belongs in",
    type: "multiselect",
    options: categories.map((c) => ({ value: c.slug, label: c.name })),
    hint:
      "Tick every aisle the brand sells in. It is grouped under these on the Brands page and, where the aisle has a Shop by Brand column, listed there. A brand only shows in a menu once it has products in stock.",
  },
  {
    key: "in_directory",
    label: "Show on the Brands page",
    type: "checkbox",
  },
];

const SORTS: SortOption[] = [
  { value: "name", label: "Name · A–Z", column: "name", ascending: true },
  { value: "name-desc", label: "Name · Z–A", column: "name", ascending: false },
];

/** Re-read the list and lay it over this browser's copy, so the Products
    tab's Brand menu offers a brand the moment it has been added here. */
async function refreshBrandList(sb: SupabaseClient) {
  const { data } = await sb
    .from("brands")
    .select("slug,name,categories,in_directory,house")
    .order("name");
  if (data) applyBrandRows(data as BrandRow[]);
}

export default function AdminBrands({ sb }: { sb: SupabaseClient }) {
  return (
    <AdminCrud
      sb={sb}
      table="brands"
      idColumn="slug"
      title="Brands."
      blurb="the Brand menu on every product, the shop filters and /brands"
      fields={fields}
      searchColumns={["name", "slug"]}
      sortOptions={SORTS}
      pageSize={50}
      newRow={() => ({
        slug: "",
        name: "",
        categories: [],
        in_directory: true,
      })}
      prepareSave={async (payload, isNew) => {
        const name = String(payload.name ?? "").trim();
        if (!isNew) {
          // The id never changes once a brand exists — only the name.
          return { ...payload, name };
        }
        const slug = brandSlug(name);
        if (!slug) return "Brand name needs at least one letter or number";
        const { data } = await sb
          .from("brands")
          .select("slug,name")
          .eq("slug", slug)
          .maybeSingle();
        if (data) {
          return `“${(data as { name: string }).name}” is already in the list — search for it and press Edit instead`;
        }
        return { ...payload, slug, name };
      }}
      friendlyError={(message) =>
        /violates foreign key constraint/i.test(message)
          ? "This brand still has products. Change those products to another brand first (Products tab → Edit → Brand), then delete it."
          : /duplicate key/i.test(message)
            ? "A brand with that name is already in the list."
            : message
      }
      onChanged={() => refreshBrandList(sb)}
      summary={(r: RowData) => {
        const aisles = Array.isArray(r.categories) ? (r.categories as string[]) : [];
        return {
          title: String(r.name ?? ""),
          meta: [
            aisles.length ? aisles.map(categoryName).join(", ") : "no aisles ticked",
            r.in_directory === false ? "hidden from the Brands page" : null,
          ]
            .filter(Boolean)
            .join(" · "),
          chips: r.house ? ["CLUB LABEL"] : [],
        };
      }}
    />
  );
}
