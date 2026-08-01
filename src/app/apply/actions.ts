"use server";

import { getSupabase } from "@/lib/supabase";

export type ApplicationPayload = {
  name: string;
  email: string;
  phone: string;
  interest: string;
  message: string;
};

export async function submitApplication(
  payload: ApplicationPayload,
): Promise<{ ok: boolean; error?: string }> {
  const name = payload.name.trim().slice(0, 200);
  const email = payload.email.trim();
  const phone = payload.phone.trim().slice(0, 40);
  const interest = payload.interest.trim().slice(0, 100);
  const message = payload.message.trim().slice(0, 5000);

  if (
    !name ||
    !message ||
    phone.length < 5 ||
    !/^\S+@\S+\.\S+$/.test(email)
  ) {
    return { ok: false, error: "Invalid submission" };
  }

  const sb = getSupabase();
  if (!sb) {
    return { ok: false, error: "Backend is not configured yet" };
  }

  const { error } = await sb
    .from("membership_applications")
    .insert({ name, email, phone, interest, message });

  if (error) {
    console.warn(`[db] membership_applications insert failed: ${error.message}`);
    return { ok: false, error: "Could not reach the club right now" };
  }
  return { ok: true };
}
