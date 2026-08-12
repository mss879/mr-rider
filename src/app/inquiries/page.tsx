import type { Metadata } from "next";
import PageHero from "@/components/PageHero";
import MemberInbox from "@/components/inquiry/MemberInbox";

export const metadata: Metadata = {
  title: "My Inquiries — MR.RIDER",
  description:
    "Every product you have asked about, and the club's answers, in one thread each.",
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
