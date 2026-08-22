import { isCountryCode } from "@/lib/countries";

/* Everything /apply collects, in one place — the form, the server action and
   the admin review card all read these lists, so a change here moves all
   three at once. */

/** What the applicant is interested in. Unchanged from the original form. */
export const INTERESTS = [
  "Road bikes & full builds",
  "Parts, components & gear",
  "Training programs",
  "International coaching",
  "The auction floor",
  "Clearance deals",
  "Everything — the full club",
] as const;

/* "Why should we let you into the club?" used to be a required essay box.
   It is now a required pick from this list plus an optional notes field:
   the admin can compare fifty applications at a glance instead of reading
   fifty paragraphs, and the applicant is not staring at an empty textarea
   wondering what the right answer is.

   Order matters — it is the order they appear in, and the first entry is
   what an untouched form would submit, so it leads with the commonest case
   rather than the flattering one. */
export const REASONS = [
  "I ride regularly and want a proper shop behind me",
  "I race and need race-grade stock at short notice",
  "I'm building or upgrading a bike",
  "I want structured coaching or a training program",
  "I'm after specific parts I can't get locally",
  "I collect or restore bikes",
  "I'm new to cycling and want to start properly",
  "A member referred me",
  "I run a shop, team or club",
] as const;

export type Reason = (typeof REASONS)[number];

/** A shipping address in the order a courier expects to read it. */
export type ApplicationAddress = {
  addressLine1: string;
  addressLine2: string;
  city: string;
  state: string;
  postalCode: string;
  /** ISO 3166-1 alpha-2. */
  country: string;
};

export type ApplicationPayload = ApplicationAddress & {
  name: string;
  email: string;
  phone: string;
  interest: string;
  reason: string;
  /** Optional free text under the chosen reason. */
  message: string;
  /** Object path in the applicant-photos bucket, or "" when none was added. */
  photoPath: string;
};

export const EMAIL_RE = /^\S+@\S+\.\S+$/;

/* Validated in one function so the browser and the server agree on what a
   valid application is. The client calls it to draw the red borders; the
   server action calls it again because the client's answer is only ever a
   convenience — the form can be submitted without it.

   State/province is NOT required: plenty of countries do not have one, and
   rejecting an address for missing a field its postal system has no concept
   of is how a form loses a genuine applicant. */
export function validateApplication(
  p: ApplicationPayload,
): Record<string, string> {
  const errors: Record<string, string> = {};

  if (!p.name.trim()) errors.name = "Name is required";
  if (!p.email.trim()) errors.email = "Email is required";
  else if (!EMAIL_RE.test(p.email.trim())) errors.email = "That email looks off";

  const phone = p.phone.trim();
  if (!phone) errors.phone = "Phone number is required";
  else if (phone.length < 5) errors.phone = "That number looks short";

  if (!p.reason.trim()) errors.reason = "Pick the one that fits best";

  if (!p.addressLine1.trim()) errors.addressLine1 = "Street address is required";
  if (!p.city.trim()) errors.city = "City is required";
  if (!p.country.trim()) errors.country = "Country is required";
  else if (!isCountryCode(p.country)) errors.country = "Pick a country from the list";

  return errors;
}
