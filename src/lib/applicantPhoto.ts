import type { SupabaseClient } from "@supabase/supabase-js";

/* The photo an applicant attaches to their membership application.

   Downscaled in the browser before it ever leaves the device. A phone camera
   hands back 4–12MB at 4000px, which is both far more than the admin needs to
   recognise a face and well over the bucket's 3MB ceiling — so resizing here
   is what makes the feature work on a phone at all, not an optimisation.

   The bucket is PRIVATE (migration 20). Uploads go in under the anon key
   because /apply is a public form, but reads are admin-only, so a file put
   here cannot be fetched back by whoever uploaded it. */

export const APPLICANT_PHOTO_BUCKET = "applicant-photos";
export const MAX_PHOTO_BYTES = 3 * 1024 * 1024; // matches the bucket limit
export const ACCEPTED_PHOTO_TYPES = ["image/jpeg", "image/png", "image/webp"];

/** Longest edge after downscaling. Plenty for a face at admin card size. */
const MAX_EDGE = 1200;
const JPEG_QUALITY = 0.85;

export function photoRejectReason(file: File): string | null {
  if (!file.type.startsWith("image/")) return "That file is not an image";
  // Size is checked AFTER downscaling, not here — a 9MB camera shot is
  // perfectly acceptable input and will come out the other side under 300KB.
  return null;
}

/** Draw the image into a canvas at a bounded size and re-encode it as JPEG. */
export async function downscalePhoto(file: File): Promise<Blob> {
  const bitmap = await createImageBitmap(file).catch(() => null);
  if (!bitmap) {
    // Some formats (HEIC on older browsers) cannot be decoded here. Hand the
    // original back and let the bucket's size limit be the judge.
    return file;
  }

  const scale = Math.min(1, MAX_EDGE / Math.max(bitmap.width, bitmap.height));
  const width = Math.round(bitmap.width * scale);
  const height = Math.round(bitmap.height * scale);

  const canvas = document.createElement("canvas");
  canvas.width = width;
  canvas.height = height;
  const ctx = canvas.getContext("2d");
  if (!ctx) {
    bitmap.close();
    return file;
  }
  ctx.drawImage(bitmap, 0, 0, width, height);
  bitmap.close();

  const blob = await new Promise<Blob | null>((resolve) =>
    canvas.toBlob(resolve, "image/jpeg", JPEG_QUALITY),
  );
  return blob ?? file;
}

/** Random, unguessable object key. Nothing about the applicant is in the
    path — the bucket is private, but a filename is not the place to put a
    name or an email even so. */
function photoPath(): string {
  const id =
    typeof crypto !== "undefined" && "randomUUID" in crypto
      ? crypto.randomUUID()
      : `${Date.now()}-${Math.random().toString(36).slice(2)}`;
  return `${id}.jpg`;
}

export type PhotoUpload =
  | { path: string; error: null }
  | { path: null; error: string };

export async function uploadApplicantPhoto(
  sb: SupabaseClient,
  file: File,
): Promise<PhotoUpload> {
  const reason = photoRejectReason(file);
  if (reason) return { path: null, error: reason };

  let blob: Blob;
  try {
    blob = await downscalePhoto(file);
  } catch {
    return { path: null, error: "Could not read that image — try another" };
  }

  if (blob.size > MAX_PHOTO_BYTES) {
    return { path: null, error: "That photo is too large even after resizing" };
  }

  const path = photoPath();
  const { error } = await sb.storage
    .from(APPLICANT_PHOTO_BUCKET)
    .upload(path, blob, { contentType: "image/jpeg", upsert: false });

  if (error) return { path: null, error: `Photo upload failed: ${error.message}` };
  return { path, error: null };
}

/** Short-lived signed URL for the admin review card. The bucket is private,
    so this is the only way the photo can be looked at. */
export async function signedPhotoUrl(
  sb: SupabaseClient,
  path: string,
  expiresInSeconds = 300,
): Promise<string> {
  if (!path) return "";
  const { data, error } = await sb.storage
    .from(APPLICANT_PHOTO_BUCKET)
    .createSignedUrl(path, expiresInSeconds);
  if (error) return "";
  return data?.signedUrl ?? "";
}
