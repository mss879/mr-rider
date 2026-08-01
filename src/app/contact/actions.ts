"use server";

import { getSupabase } from "@/lib/supabase";

export type ContactPayload = {
  name: string;
  email: string;
  topic: string;
  message: string;
};

export async function submitContact(
  payload: ContactPayload,
): Promise<{ ok: boolean; error?: string }> {
  const name = payload.name.trim().slice(0, 200);
  const email = payload.email.trim();
  const message = payload.message.trim().slice(0, 5000);
  const topic = payload.topic.trim().slice(0, 100) || "Something else";

  if (!name || !message || !/^\S+@\S+\.\S+$/.test(email)) {
    return { ok: false, error: "Invalid submission" };
  }

  const sb = getSupabase();
  if (!sb) {
    return { ok: false, error: "Backend is not configured yet" };
  }

  const { error } = await sb
    .from("contact_messages")
    .insert({ name, email, topic, message });

  if (error) {
    console.warn(`[db] contact_messages insert failed: ${error.message}`);
    return { ok: false, error: "Could not reach the club right now" };
  }
  return { ok: true };
}
