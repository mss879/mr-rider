"use client";

import { useState } from "react";
import { submitContact } from "@/app/contact/actions";

type Status = "idle" | "sending" | "sent";

const TOPICS = [
  "Order enquiry",
  "Coaching enquiry",
  "Auction enquiry",
  "Press / partnership",
  "Something else",
];

export default function ContactForm() {
  const [status, setStatus] = useState<Status>("idle");
  const [errors, setErrors] = useState<Record<string, string>>({});
  const [serverError, setServerError] = useState<string | null>(null);

  async function onSubmit(e: React.FormEvent<HTMLFormElement>) {
    e.preventDefault();
    const form = e.currentTarget;
    const data = new FormData(form);
    const next: Record<string, string> = {};
    if (!String(data.get("name")).trim()) next.name = "Name is required";
    const email = String(data.get("email")).trim();
    if (!email) next.email = "Email is required";
    else if (!/^\S+@\S+\.\S+$/.test(email)) next.email = "That email looks off";
    if (!String(data.get("message")).trim())
      next.message = "Tell us what you need";
    setErrors(next);
    if (Object.keys(next).length > 0) return;

    setStatus("sending");
    setServerError(null);
    const res = await submitContact({
      name: String(data.get("name")),
      email,
      topic: String(data.get("topic") ?? ""),
      message: String(data.get("message")),
    });
    if (res.ok) {
      setStatus("sent");
    } else {
      setStatus("idle");
      setServerError(
        `${res.error ?? "Something went wrong"} — email club@mrrider.cc instead.`,
      );
    }
  }

  if (status === "sent") {
    return (
      <div className="border border-line bg-chalk px-8 py-16 text-center">
        <p className="headline mb-3 text-4xl">In the queue.</p>
        <p className="mb-8 font-mono text-xs uppercase tracking-[0.16em] text-ink-soft">
          We answer within 48 hours — applications reviewed weekly
        </p>
        <button
          type="button"
          onClick={() => setStatus("idle")}
          className="bg-ink px-5 py-3 font-mono text-[11px] font-semibold uppercase tracking-[0.18em] text-chalk transition-colors duration-200 ease-out hover:bg-ink-soft"
        >
          Send another message
        </button>
      </div>
    );
  }

  const field =
    "w-full border bg-chalk px-3 py-3 text-sm transition-colors duration-200 ease-out placeholder:text-ink-soft/60";
  const label = "mb-1.5 block font-mono text-[10px] uppercase tracking-[0.22em] text-ink-soft";
  const err = "mt-1 block font-mono text-[10px] uppercase tracking-[0.12em] text-ink font-semibold";

  return (
    <form onSubmit={onSubmit} noValidate className="flex flex-col gap-5">
      <div className="grid gap-5 sm:grid-cols-2">
        <div>
          <label htmlFor="cf-name" className={label}>
            Name
          </label>
          <input
            id="cf-name"
            name="name"
            autoComplete="name"
            className={`${field} ${errors.name ? "border-ink font-medium" : "border-line"}`}
            placeholder="Your name"
          />
          {errors.name && <span className={err}>{errors.name}</span>}
        </div>
        <div>
          <label htmlFor="cf-email" className={label}>
            Email
          </label>
          <input
            id="cf-email"
            name="email"
            type="email"
            autoComplete="email"
            className={`${field} ${errors.email ? "border-ink font-medium" : "border-line"}`}
            placeholder="you@club.cc"
          />
          {errors.email && <span className={err}>{errors.email}</span>}
        </div>
      </div>
      <div>
        <label htmlFor="cf-topic" className={label}>
          Topic
        </label>
        <select id="cf-topic" name="topic" className={`${field} border-line`}>
          {TOPICS.map((t) => (
            <option key={t}>{t}</option>
          ))}
        </select>
      </div>
      <div>
        <label htmlFor="cf-message" className={label}>
          Message
        </label>
        <textarea
          id="cf-message"
          name="message"
          rows={6}
          className={`${field} resize-y ${errors.message ? "border-ink font-medium" : "border-line"}`}
          placeholder="What do you ride, and what do you need?"
        />
        {errors.message && <span className={err}>{errors.message}</span>}
      </div>
      {serverError && (
        <p
          role="alert"
          className="border border-ink bg-chalk px-4 py-3 font-mono text-[11px] uppercase tracking-[0.12em] text-ink font-semibold"
        >
          {serverError}
        </p>
      )}
      <button
        type="submit"
        disabled={status === "sending"}
        className="group inline-flex w-fit items-stretch disabled:opacity-60"
      >
        <span className="flex items-center bg-ink px-6 py-3.5 font-mono text-[11px] font-semibold uppercase tracking-[0.18em] text-chalk transition-colors duration-200 ease-out group-hover:bg-ink-soft">
          {status === "sending" ? "Sending…" : "Send it"}
        </span>
        <span aria-hidden className="grid w-11 place-items-center bg-ink text-chalk">
          <span className="transition-transform duration-200 ease-out group-hover:translate-x-0.5">
            →
          </span>
        </span>
      </button>
    </form>
  );
}
