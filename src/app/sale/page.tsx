import { redirect } from "next/navigation";

/* Utility nav item 12 — "Sale": promotional and clearance products.
   The club's promotional floor is the Clearance Market, so /sale is the
   customer-facing entry point onto it. */
export default function SalePage() {
  redirect("/clearance");
}
