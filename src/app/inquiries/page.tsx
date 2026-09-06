import type { Metadata } from "next";
import PageHero from "@/components/PageHero";
import MemberInbox from "@/components/inquiry/MemberInbox";

export const metadata: Metadata = {
  title: "My Inquiries",
  description:
    "Every product you have asked about, and the club's answers, in one thread each.",
  // Private by definition — one rider's own threads. See /account for why
  // this sits alongside the robots.txt disallow rather than instead of it.
  robots: { index: false, follow: false },
};

export default function InquiriesPage() {
  return (
    <>
      <PageHero
        eyebrow="Your threads"
        title="My inquiries."
        blurb="Everything you have asked about, with the club's answers. Attach photos, ask for a quote, pick it back up whenever."
      />
      <MemberInbox />
    </>
  );
}
