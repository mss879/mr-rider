"use client";

import { useState } from "react";
import { submitApplication } from "@/app/apply/actions";

type Status = "idle" | "sending" | "sent";

export const INTERESTS = [
  "Road bikes & full builds",
  "Parts, components & gear",
  "Training programs",
  "International coaching",
  "The auction floor",
  "Clearance deals",
  "Everything — the full club",
];

const field =
  "w-full border bg-chalk px-3 py-3 text-sm transition-colors duration-200 ease-out placeholder:text-ink-soft/60";
const label =
  "mb-1.5 block font-mono text-[10px] uppercase tracking-[0.22em] text-ink-soft";
const errText =
  "mt-1 block font-mono text-[10px] uppercase tracking-[0.12em] text-accent-deep";

export default function ApplicationForm() {
  const [status, setStatus] = useState<Status>("idle");
  const [errors, setErrors] = useState<Record<string, string>>({});
  const [serverError, setServerError] = useState<string | null>(null);

  async function onSubmit(e: React.FormEvent<HTMLFormElement>) {
    e.preventDefault();
    const data = new FormData(e.currentTarget);
    const next: Record<string, string> = {};
    if (!String(data.get("name")).trim()) next.name = "Name is required";
    const email = String(data.get("email")).trim();
    if (!email) next.email = "Email is required";
    else if (!/^\S+@\S+\.\S+$/.test(email)) next.email = "That email looks off";
    const phone = String(data.get("phone")).trim();
    if (!phone) next.phone = "Phone number is required";
    else if (phone.length < 5) next.phone = "That number looks short";
    if (!String(data.get("message")).trim())
      next.message = "This is the part that gets you in — write something";
    setErrors(next);
    if (Object.keys(next).length > 0) return;

    setStatus("sending");
    setServerError(null);
    const res = await submitApplication({
      name: String(data.get("name")),
      email,
      phone,
      interest: String(data.get("interest") ?? ""),
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
        <p className="headline mb-3 text-4xl">Application in.</p>
        <p className="mb-8 font-mono text-xs uppercase tracking-[0.16em] text-ink-soft">
          Reviewed weekly · answered within 48 hours · dues due on approval
        </p>
        <button
          type="button"
          onClick={() => setStatus("idle")}
          className="bg-ink px-5 py-3 font-mono text-[11px] font-semibold uppercase tracking-[0.18em] text-chalk transition-colors duration-200 ease-out hover:bg-accent-deep"
        >
          Send another application
        </button>
      </div>
    );
  }

  return (
    <form onSubmit={onSubmit} noValidate className="flex flex-col gap-5">
      <div className="grid gap-5 sm:grid-cols-2">
        <div>
          <label htmlFor="ap-name" className={label}>
            Name
          </label>
          <input
            id="ap-name"
            name="name"
            autoComplete="name"
            className={`${field} ${errors.name ? "border-accent-deep" : "border-line"}`}
            placeholder="Your name"
          />
          {errors.name && <span className={errText}>{errors.name}</span>}
        </div>
        <div>
          <label htmlFor="ap-email" className={label}>
            Email
          </label>
          <input
            id="ap-email"
            name="email"
            type="email"
            autoComplete="email"
            className={`${field} ${errors.email ? "border-accent-deep" : "border-line"}`}
            placeholder="you@club.cc"
          />
          {errors.email && <span className={errText}>{errors.email}</span>}
        </div>
      </div>
      <div className="grid gap-5 sm:grid-cols-2">
        <div>
          <label htmlFor="ap-phone" className={label}>
            Phone number
          </label>
          <input
            id="ap-phone"
            name="phone"
            type="tel"
            autoComplete="tel"
            className={`${field} ${errors.phone ? "border-accent-deep" : "border-line"}`}
            placeholder="+94 77 123 4567"
          />
          {errors.phone && <span className={errText}>{errors.phone}</span>}
        </div>
        <div>
          <label htmlFor="ap-interest" className={label}>
            What are you interested in?
          </label>
          <select
            id="ap-interest"
            name="interest"
            className={`${field} border-line`}
          >
            {INTERESTS.map((t) => (
              <option key={t}>{t}</option>
            ))}
          </select>
        </div>
      </div>
      <div>
        <label htmlFor="ap-message" className={label}>
          Why should we let you in?
        </label>
        <textarea
          id="ap-message"
          name="message"
          rows={6}
          className={`${field} resize-y ${errors.message ? "border-accent-deep" : "border-line"}`}
          placeholder="What you ride, how you ride, and what you'd bring to the club."
        />
        {errors.message && <span className={errText}>{errors.message}</span>}
      </div>
      {serverError && (
        <p
          role="alert"
          className="border border-accent-deep bg-chalk px-4 py-3 font-mono text-[11px] uppercase tracking-[0.12em] text-accent-deep"
        >
          {serverError}
        </p>
      )}
      <button
        type="submit"
        disabled={status === "sending"}
        className="group inline-flex w-fit items-stretch disabled:opacity-60"
      >
        <span className="flex items-center bg-accent px-6 py-3.5 font-mono text-[11px] font-semibold uppercase tracking-[0.18em] text-chalk transition-colors duration-200 ease-out group-hover:bg-accent-deep">
          {status === "sending" ? "Sending…" : "Submit application"}
        </span>
        <span
          aria-hidden
          className="grid w-11 place-items-center bg-ink text-chalk"
        >
          <span className="transition-transform duration-200 ease-out group-hover:translate-x-0.5">
            →
          </span>
        </span>
      </button>
    </form>
  );
}
