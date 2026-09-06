import type { Metadata } from "next";
import AccountPanel from "@/components/AccountPanel";
import PageHero from "@/components/PageHero";

export const metadata: Metadata = {
  title: "Account",
  description:
    "Create a rider account to ask about anything on the floor — the club answers in your inquiry inbox.",
  /* A robots.txt disallow is a request not to CRAWL, and a page that is
     never crawled can still be indexed from an inbound link — with no
     description, because the crawler was not allowed to read one. This is
     the header that actually says "do not index", and it is why the two
     signals are not redundant. */
  robots: { index: false, follow: false },
};

export default async function AccountPage({
  searchParams,
}: {
  searchParams: Promise<{ next?: string | string[] }>;
}) {
  // A repeated ?next= resolves to an array — take the first, never assume.
  const { next: raw } = await searchParams;
  const next = Array.isArray(raw) ? raw[0] : raw;

  return (
    <>
      <PageHero
        eyebrow="Rider account"
        title="Ask the club."
        blurb="There are no prices on the floor. Create an account and request an inquiry on any product — the club replies in a thread you can come back to."
      />
      <AccountPanel next={next} />
    </>
  );
}
