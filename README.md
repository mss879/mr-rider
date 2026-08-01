# MR.RIDER

A members-only cycling club: one shop floor, daily listings, an auction, a
clearance market and an international coaching pool — all behind a membership
gate approved by the club admin.

Built with **Next.js 16** (App Router) · **React 19** · **Tailwind CSS v4** ·
**TypeScript** · **Supabase**.

## Getting started

```bash
npm install
```

Copy `.env.example` to `.env.local` and fill in your Supabase URL and anon key,
then:

```bash
npm run dev
```

Run the database migrations next — see [supabase/README.md](supabase/README.md).
Until they are run the site serves built-in mock data, so every page still works.

## Pages

| Route | What it is |
|-------|-----------|
| `/` | Home — hero, category index, featured stock, today's drop, coaching, auction + clearance |
| `/shop` | The whole catalog in one place: 12 categories with search, brand, price and condition filters plus sorting |
| `/daily-listings` | Today's and yesterday's drops (09:00 daily) |
| `/coaching` | Training programs + the international coaching pool |
| `/auction` | Live lots with current bids and countdowns |
| `/clearance` | MR.Rider Clearance Market, sorted by biggest discount |
| `/apply` | Membership application form (name, email, phone, interest, why) |
| `/about` · `/contact` | The club story · enquiries form |
| `/admin` | Back office — applications, clients, enquiries and content management |

## The membership gate

Visitors can browse the whole site, but prices, buying and bidding render
**locked** until the club approves them:

1. A rider applies at `/apply`.
2. The admin reviews every answer in the Applications tab at `/admin`.
3. Approving creates a **client profile** and unlocks the floor.

The gate is driven by a single function in
[`src/lib/membership.ts`](src/lib/membership.ts) — the member-login phase swaps
its body for a Supabase auth check and every locked element unlocks at once.

## Admin

`/admin` — sign in as the superadmin (`admin@mrrider.lk`, created in the
Supabase dashboard). Tabs:

- **Applications** — full review cards with every answer; approving creates the client profile
- **Clients** — approved client profiles, suspend / reactivate
- **Enquiries** — messages from the contact page
- **Products** — add / edit / delete stock; drives Shop, Daily Listings and Clearance
- **Coaching** — training programs and the coaching pool
- **Auction** — lots, bids and countdown end times
- **Accounts** — auth accounts and membership status

All writes are enforced server-side by row-level security: only the superadmin
session can change anything.

## Design

Black / grey / white with a single energetic accent, condensed italic display
type and hairline grid rules. The accent is one token in
[`src/app/tokens.css`](src/app/tokens.css) — change that value to re-skin every
CTA and sale badge.

Product images are hatched placeholders; drop in real photography when it is
ready and the cards are already shaped for it.
