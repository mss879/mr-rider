/* Membership gate — single source of truth for what visitors may see.
   Until the auth phase ships, every visitor is a "guest", so prices and
   member actions render locked. The login build replaces the body of
   getMembershipStatus() with:
     supabase.auth.getUser() → profiles.status ('active' unlocks). */

export type MembershipStatus = "guest" | "pending" | "active";

export async function getMembershipStatus(): Promise<MembershipStatus> {
  return "guest";
}

export function isApproved(status: MembershipStatus): boolean {
  return status === "active";
}
