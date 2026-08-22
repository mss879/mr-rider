"use client";

import { useEffect, useState } from "react";
import type { SupabaseClient } from "@supabase/supabase-js";
import { signedPhotoUrl } from "@/lib/applicantPhoto";
import { countryName } from "@/lib/countries";

/* The address and photo collected by /apply, shown the same way on an
   application card and on a client profile. */

export type PostalAddress = {
  address_line1?: string;
  address_line2?: string;
  city?: string;
  state?: string;
  postal_code?: string;
  country?: string;
};

/** Address as a courier would read it: street, then locality, then country.
    Empty parts are dropped rather than rendered as blank lines. */
export function addressLines(a: PostalAddress): string[] {
  const locality = [a.city, a.state, a.postal_code].filter(Boolean).join(", ");
  return [
    a.address_line1,
    a.address_line2,
    locality,
    countryName(a.country ?? ""),
  ].filter((line): line is string => Boolean(line && line.trim()));
}

export function hasAddress(a: PostalAddress): boolean {
  return addressLines(a).length > 0;
}

export function AddressBlock({ address }: { address: PostalAddress }) {
  const lines = addressLines(address);
  if (lines.length === 0) {
    return (
      <span className="font-mono text-[10px] uppercase tracking-[0.14em] text-ink-soft">
        No address on file — applied before the address fields existed
      </span>
    );
  }
  return (
    <address className="text-sm not-italic leading-relaxed">
      {lines.map((line) => (
        <span key={line} className="block">
          {line}
        </span>
      ))}
    </address>
  );
}

/* The bucket is private, so the photo can only be shown through a signed URL
   the admin's own session asks for. Fetched per card on mount and left to
   expire — five minutes is longer than anyone spends reading one application,
   and a URL that dies on its own is the point of a private bucket. */
export function ApplicantPhoto({
  sb,
  path,
  name,
  className = "size-20",
}: {
  sb: SupabaseClient;
  path: string;
  name: string;
  className?: string;
}) {
  const [url, setUrl] = useState("");

  useEffect(() => {
    if (!path) return;
    let live = true;
    signedPhotoUrl(sb, path).then((signed) => {
      if (live) setUrl(signed);
    });
    return () => {
      live = false;
    };
  }, [sb, path]);

  if (!path) return null;

  return (
    <div className={`${className} shrink-0 border border-line ${url ? "" : "hatch-light"}`}>
      {url && (
        // A signed, expiring URL on a private bucket — next/image would try to
        // cache and re-fetch it from the optimiser, which is exactly what the
        // expiry is there to prevent.
        // eslint-disable-next-line @next/next/no-img-element
        <img
          src={url}
          alt={`${name}, attached to their application`}
          className="size-full object-cover"
        />
      )}
    </div>
  );
}
