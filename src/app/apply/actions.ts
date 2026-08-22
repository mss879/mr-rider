"use server";

import {
  validateApplication,
  type ApplicationPayload,
} from "@/lib/applications";
import { getSupabase } from "@/lib/supabase";

export type { ApplicationPayload };

/* Trimmed and capped to the column widths in migrations 11 and 20. The client
   validates too, but only so it can draw the red borders — a form post can
   reach here without ever running that code, so this is the check that counts. */
const cap = (value: string, max: number) => value.trim().slice(0, max);

export async function submitApplication(
  payload: ApplicationPayload,
): Promise<{ ok: boolean; error?: string }> {
  const clean: ApplicationPayload = {
    name: cap(payload.name, 200),
    email: payload.email.trim(),
    phone: cap(payload.phone, 40),
    interest: cap(payload.interest, 100),
    reason: cap(payload.reason, 200),
    message: cap(payload.message, 5000),
    addressLine1: cap(payload.addressLine1, 200),
    addressLine2: cap(payload.addressLine2, 200),
    city: cap(payload.city, 120),
    state: cap(payload.state, 120),
    postalCode: cap(payload.postalCode, 32),
    country: payload.country.trim().toUpperCase(),
    // A path, never a URL: the admin resolves it against the private bucket.
    // Anything with a slash or a scheme in it is not one of ours.
    photoPath: /^[A-Za-z0-9._-]{1,120}$/.test(payload.photoPath.trim())
      ? payload.photoPath.trim()
      : "",
  };

  const errors = validateApplication(clean);
  if (Object.keys(errors).length > 0) {
    return { ok: false, error: "Invalid submission" };
  }

  const sb = getSupabase();
  if (!sb) {
    return { ok: false, error: "Backend is not configured yet" };
  }

  const { error } = await sb.from("membership_applications").insert({
    name: clean.name,
    email: clean.email,
    phone: clean.phone,
    interest: clean.interest,
    reason: clean.reason,
    message: clean.message,
    address_line1: clean.addressLine1,
    address_line2: clean.addressLine2,
    city: clean.city,
    state: clean.state,
    postal_code: clean.postalCode,
    country: clean.country,
    photo_path: clean.photoPath,
  });

  if (error) {
    console.warn(`[db] membership_applications insert failed: ${error.message}`);
    return { ok: false, error: "Could not reach the club right now" };
  }
  return { ok: true };
}
