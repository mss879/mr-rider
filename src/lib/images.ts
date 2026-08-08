/* Product photography — stored in the Supabase Storage bucket created by
   migration 13. products.images holds up to five entries, each either a
   bucket object path ("rbf-1/ab12….webp") or a full external URL. The first
   entry is the primary shot shown on the product card. */

export const PRODUCT_IMAGE_BUCKET = "product-images";
export const MAX_PRODUCT_IMAGES = 5;
export const MAX_IMAGE_BYTES = 5 * 1024 * 1024; // keep in step with the bucket limit
export const ALLOWED_IMAGE_TYPES = [
  "image/jpeg",
  "image/png",
  "image/webp",
  "image/avif",
];

const isAbsolute = (value: string) => /^https?:\/\//i.test(value);

/** Public URL for a stored image. Empty string when it cannot be resolved. */
export function productImageUrl(value: string | undefined): string {
  if (!value) return "";
  if (isAbsolute(value)) return value;
  const base = process.env.NEXT_PUBLIC_SUPABASE_URL;
  if (!base) return "";
  const path = value.replace(/^\/+/, "");
  return `${base.replace(/\/$/, "")}/storage/v1/object/public/${PRODUCT_IMAGE_BUCKET}/${path}`;
}

/** The card image, or "" when a product has no photography yet. */
export function primaryImageUrl(images: string[] | undefined): string {
  return productImageUrl(images?.[0]);
}

/** Bucket object path for a freshly uploaded file, namespaced per product. */
export function newImagePath(productId: string, file: File): string {
  const ext = (file.name.split(".").pop() ?? "jpg").toLowerCase().replace(/[^a-z0-9]/g, "");
  const id =
    typeof crypto !== "undefined" && "randomUUID" in crypto
      ? crypto.randomUUID()
      : `${Date.now()}-${Math.random().toString(36).slice(2)}`;
  const safeProduct = productId.replace(/[^a-zA-Z0-9._-]/g, "-") || "product";
  return `${safeProduct}/${id}.${ext || "jpg"}`;
}

/** Human-readable reason a file cannot be uploaded, or null when it is fine. */
export function rejectReason(file: File): string | null {
  if (!ALLOWED_IMAGE_TYPES.includes(file.type)) {
    return `${file.name}: only JPEG, PNG, WebP and AVIF are accepted`;
  }
  if (file.size > MAX_IMAGE_BYTES) {
    return `${file.name}: over the ${Math.round(MAX_IMAGE_BYTES / 1024 / 1024)}MB limit`;
  }
  return null;
}
