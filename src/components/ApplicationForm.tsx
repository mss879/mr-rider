"use client";

import { useRef, useState } from "react";
import { submitApplication } from "@/app/apply/actions";
import {
  INTERESTS,
  REASONS,
  validateApplication,
  type ApplicationPayload,
} from "@/lib/applications";
import { COUNTRIES, DEFAULT_COUNTRY } from "@/lib/countries";
import { uploadApplicantPhoto } from "@/lib/applicantPhoto";
import { getSupabaseBrowser } from "@/lib/supabaseBrowser";

type Status = "idle" | "sending" | "sent";

const field =
  "w-full border bg-chalk px-3 py-3 text-sm transition-colors duration-200 ease-out placeholder:text-ink-soft/60";
const label =
  "mb-1.5 block font-mono text-[10px] uppercase tracking-[0.22em] text-ink-soft";
const errText =
  "mt-1 block font-mono text-[10px] uppercase tracking-[0.12em] text-ink font-semibold";
const legend =
  "mb-4 border-b border-line pb-2 font-mono text-[10px] uppercase tracking-[0.28em] text-ink-soft";

const border = (bad: boolean) => (bad ? "border-ink font-medium" : "border-line");

export default function ApplicationForm() {
  const sb = getSupabaseBrowser();
  const [status, setStatus] = useState<Status>("idle");
  const [errors, setErrors] = useState<Record<string, string>>({});
  const [serverError, setServerError] = useState<string | null>(null);

  /* The photo is uploaded on pick rather than on submit, so the applicant
     finds out immediately if it failed instead of losing the whole form to
     it. State holds the bucket path; the preview is a local object URL. */
  const [photoPath, setPhotoPath] = useState("");
  const [photoPreview, setPhotoPreview] = useState("");
  const [photoBusy, setPhotoBusy] = useState(false);
  const [photoError, setPhotoError] = useState<string | null>(null);
  const cameraInput = useRef<HTMLInputElement>(null);
  const galleryInput = useRef<HTMLInputElement>(null);

  async function onPickPhoto(e: React.ChangeEvent<HTMLInputElement>) {
    const file = e.target.files?.[0];
    // Cleared so picking the same file twice still fires a change event.
    e.target.value = "";
    if (!file) return;
    if (!sb) {
      setPhotoError("Backend is not configured yet");
      return;
    }

    setPhotoBusy(true);
    setPhotoError(null);
    const res = await uploadApplicantPhoto(sb, file);
    setPhotoBusy(false);

    if (res.error !== null) {
      setPhotoError(res.error);
      return;
    }
    setPhotoPath(res.path);
    setPhotoPreview((old) => {
      if (old) URL.revokeObjectURL(old);
      return URL.createObjectURL(file);
    });
  }

  function clearPhoto() {
    // The uploaded object is left in the bucket: anon has no delete policy,
    // and the admin's orphan query in migration 20 sweeps anything unclaimed.
    setPhotoPath("");
    setPhotoPreview((old) => {
      if (old) URL.revokeObjectURL(old);
      return "";
    });
    setPhotoError(null);
  }

  async function onSubmit(e: React.FormEvent<HTMLFormElement>) {
    e.preventDefault();
    const data = new FormData(e.currentTarget);
    const get = (key: string) => String(data.get(key) ?? "");

    const payload: ApplicationPayload = {
      name: get("name"),
      email: get("email"),
      phone: get("phone"),
      interest: get("interest"),
      reason: get("reason"),
      message: get("message"),
      addressLine1: get("addressLine1"),
      addressLine2: get("addressLine2"),
      city: get("city"),
      state: get("state"),
      postalCode: get("postalCode"),
      country: get("country"),
      photoPath,
    };

    const next = validateApplication(payload);
    setErrors(next);
    if (Object.keys(next).length > 0) {
      // Put the reader on the first thing that needs fixing rather than
      // leaving them at the bottom of a long form wondering what happened.
      document
        .querySelector<HTMLElement>(`[data-field="${Object.keys(next)[0]}"]`)
        ?.scrollIntoView({ block: "center", behavior: "smooth" });
      return;
    }

    setStatus("sending");
    setServerError(null);
    const res = await submitApplication(payload);
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
          onClick={() => {
            clearPhoto();
            setStatus("idle");
          }}
          className="bg-ink px-5 py-3 font-mono text-[11px] font-semibold uppercase tracking-[0.18em] text-chalk transition-colors duration-200 ease-out hover:bg-ink-soft"
        >
          Send another application
        </button>
      </div>
    );
  }

  return (
    <form onSubmit={onSubmit} noValidate className="flex flex-col gap-10">
      {/* ---------- who you are ---------- */}
      <fieldset>
        <legend className={legend}>01 · Who you are</legend>
        <div className="flex flex-col gap-5">
          <div className="grid gap-5 sm:grid-cols-2">
            <div data-field="name">
              <label htmlFor="ap-name" className={label}>
                Name
              </label>
              <input
                id="ap-name"
                name="name"
                autoComplete="name"
                className={`${field} ${border(!!errors.name)}`}
                placeholder="Your name"
              />
              {errors.name && <span className={errText}>{errors.name}</span>}
            </div>
            <div data-field="email">
              <label htmlFor="ap-email" className={label}>
                Email
              </label>
              <input
                id="ap-email"
                name="email"
                type="email"
                autoComplete="email"
                className={`${field} ${border(!!errors.email)}`}
                placeholder="you@club.cc"
              />
              {errors.email && <span className={errText}>{errors.email}</span>}
            </div>
          </div>
          <div className="grid gap-5 sm:grid-cols-2">
            <div data-field="phone">
              <label htmlFor="ap-phone" className={label}>
                Phone number
              </label>
              <input
                id="ap-phone"
                name="phone"
                type="tel"
                autoComplete="tel"
                className={`${field} ${border(!!errors.phone)}`}
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
                defaultValue={INTERESTS[0]}
                className={`${field} border-line`}
              >
                {INTERESTS.map((t) => (
                  <option key={t}>{t}</option>
                ))}
              </select>
            </div>
          </div>
        </div>
      </fieldset>

      {/* ---------- why ---------- */}
      <fieldset>
        <legend className={legend}>02 · Why you want in</legend>
        <div className="flex flex-col gap-5">
          <div data-field="reason">
            <label htmlFor="ap-reason" className={label}>
              Why should we let you into the club?
            </label>
            <select
              id="ap-reason"
              name="reason"
              defaultValue=""
              className={`${field} ${border(!!errors.reason)}`}
            >
              <option value="" disabled>
                Pick the one that fits best…
              </option>
              {REASONS.map((r) => (
                <option key={r}>{r}</option>
              ))}
            </select>
            {errors.reason && <span className={errText}>{errors.reason}</span>}
          </div>
          <div>
            <label htmlFor="ap-message" className={label}>
              Anything else? <span className="normal-case">(optional)</span>
            </label>
            <textarea
              id="ap-message"
              name="message"
              rows={4}
              className={`${field} resize-y border-line`}
              placeholder="What you ride, how you ride, and what you'd bring to the club."
            />
          </div>
        </div>
      </fieldset>

      {/* ---------- address ---------- */}
      <fieldset>
        <legend className={legend}>03 · Where we ship</legend>
        <div className="flex flex-col gap-5">
          <div data-field="addressLine1">
            <label htmlFor="ap-a1" className={label}>
              Address line 1
            </label>
            <input
              id="ap-a1"
              name="addressLine1"
              autoComplete="address-line1"
              className={`${field} ${border(!!errors.addressLine1)}`}
              placeholder="Street address, P.O. box, company name"
            />
            {errors.addressLine1 && (
              <span className={errText}>{errors.addressLine1}</span>
            )}
          </div>
          <div>
            <label htmlFor="ap-a2" className={label}>
              Address line 2 <span className="normal-case">(optional)</span>
            </label>
            <input
              id="ap-a2"
              name="addressLine2"
              autoComplete="address-line2"
              className={`${field} border-line`}
              placeholder="Apartment, suite, unit, floor"
            />
          </div>
          <div className="grid gap-5 sm:grid-cols-2">
            <div data-field="city">
              <label htmlFor="ap-city" className={label}>
                City
              </label>
              <input
                id="ap-city"
                name="city"
                autoComplete="address-level2"
                className={`${field} ${border(!!errors.city)}`}
                placeholder="Colombo"
              />
              {errors.city && <span className={errText}>{errors.city}</span>}
            </div>
            <div>
              {/* Not required — plenty of postal systems have no such level,
                  and rejecting an address for missing one loses applicants. */}
              <label htmlFor="ap-state" className={label}>
                State / province{" "}
                <span className="normal-case">(if you have one)</span>
              </label>
              <input
                id="ap-state"
                name="state"
                autoComplete="address-level1"
                className={`${field} border-line`}
                placeholder="Western Province"
              />
            </div>
          </div>
          <div className="grid gap-5 sm:grid-cols-2">
            <div>
              <label htmlFor="ap-post" className={label}>
                Postal code
              </label>
              <input
                id="ap-post"
                name="postalCode"
                autoComplete="postal-code"
                className={`${field} border-line`}
                placeholder="00300"
              />
            </div>
            <div data-field="country">
              <label htmlFor="ap-country" className={label}>
                Country
              </label>
              <select
                id="ap-country"
                name="country"
                autoComplete="country"
                defaultValue={DEFAULT_COUNTRY}
                className={`${field} ${border(!!errors.country)}`}
              >
                {COUNTRIES.map((c) => (
                  <option key={c.code} value={c.code}>
                    {c.name}
                  </option>
                ))}
              </select>
              {errors.country && (
                <span className={errText}>{errors.country}</span>
              )}
            </div>
          </div>
        </div>
      </fieldset>

      {/* ---------- photo ---------- */}
      <fieldset>
        <legend className={legend}>04 · A photo of you (optional)</legend>
        <div className="flex flex-wrap items-start gap-5">
          <div
            aria-hidden={!photoPreview}
            className={`size-28 shrink-0 border border-line ${photoPreview ? "" : "hatch-light"}`}
          >
            {photoPreview && (
              // Local object URL for a file the reader just picked — next/image
              // would only add an optimiser round-trip to a blob it cannot read.
              // eslint-disable-next-line @next/next/no-img-element
              <img
                src={photoPreview}
                alt="The photo you attached"
                className="size-full object-cover"
              />
            )}
          </div>
          <div className="min-w-0 flex-1 basis-64">
            <p className="mb-3 text-sm leading-relaxed text-ink-soft">
              Helps the club put a face to the name when your application comes
              up for review. Take one now or pick one you already have.
            </p>

            {/* Two inputs rather than one: `capture` opens the camera straight
                away on a phone, and its absence lets the same phone offer the
                gallery. Desktop browsers ignore `capture` and show a file
                picker for both. */}
            <input
              ref={cameraInput}
              type="file"
              accept="image/*"
              capture="user"
              onChange={onPickPhoto}
              className="sr-only"
              tabIndex={-1}
            />
            <input
              ref={galleryInput}
              type="file"
              accept="image/*"
              onChange={onPickPhoto}
              className="sr-only"
              tabIndex={-1}
            />

            <div className="flex flex-wrap gap-3">
              <button
                type="button"
                disabled={photoBusy}
                onClick={() => cameraInput.current?.click()}
                className="border border-ink px-4 py-2.5 font-mono text-[10px] font-semibold uppercase tracking-[0.16em] transition-colors duration-200 ease-out hover:bg-ink hover:text-chalk disabled:opacity-50"
              >
                {photoBusy ? "Uploading…" : "Take a photo"}
              </button>
              <button
                type="button"
                disabled={photoBusy}
                onClick={() => galleryInput.current?.click()}
                className="border border-line px-4 py-2.5 font-mono text-[10px] font-semibold uppercase tracking-[0.16em] text-ink-soft transition-colors duration-200 ease-out hover:border-ink hover:text-ink disabled:opacity-50"
              >
                Choose from gallery
              </button>
              {photoPath && (
                <button
                  type="button"
                  onClick={clearPhoto}
                  className="px-2 py-2.5 font-mono text-[10px] font-semibold uppercase tracking-[0.16em] text-ink underline underline-offset-4 hover:text-ink-soft"
                >
                  Remove
                </button>
              )}
            </div>

            {photoError && (
              <p role="alert" className={errText}>
                {photoError}
              </p>
            )}
            {photoPath && !photoError && (
              <p className="mt-2 font-mono text-[10px] uppercase tracking-[0.14em] text-ink-soft">
                Photo attached
              </p>
            )}
          </div>
        </div>
      </fieldset>

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
        disabled={status === "sending" || photoBusy}
        className="group inline-flex w-fit items-stretch disabled:opacity-60"
      >
        <span className="flex items-center bg-ink px-6 py-3.5 font-mono text-[11px] font-semibold uppercase tracking-[0.18em] text-chalk transition-colors duration-200 ease-out group-hover:bg-ink-soft">
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
