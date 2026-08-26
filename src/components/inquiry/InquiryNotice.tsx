"use client";

import Link from "next/link";
import { usePathname } from "next/navigation";
import { useSession } from "@/lib/useSession";

/* The floor is open to everyone; asking about a product is not. This explains
   the account requirement once at the top of a listing page, and gets out of
   the way the moment the rider is signed in. */

export default function InquiryNotice() {
  const { session, ready } = useSession();
  const pathname = usePathname();

  if (!ready || session) return null;

  return (
    <div className="border-b border-line bg-chalk">
      <div className="mx-auto flex max-w-7xl flex-wrap items-center gap-x-6 gap-y-2 px-6 py-3">
        <p className="font-mono text-[11px] font-semibold uppercase tracking-[0.16em]">
          No prices on the floor — riders ask, the club answers
        </p>
        <Link
          href={`/account?next=${encodeURIComponent(pathname)}`}
          className="whitespace-nowrap font-mono text-[11px] font-semibold uppercase tracking-[0.16em] text-ink underline decoration-ink decoration-2 underline-offset-4 hover:text-ink-soft"
        >
          Create an account to inquire →
        </Link>
      </div>
    </div>
  );
}
