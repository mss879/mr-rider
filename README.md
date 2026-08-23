# MR.RIDER

A members-only cycling club: one shop floor, daily listings, an auction, a
clearance market and an international coaching pool — all behind a membership
gate approved by the club admin.

Nothing on the floor carries a price. Riders open an **inquiry** on a product
and the club answers them in a chat thread.

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
| `/` | Home — the pitch to a visitor who hasn't joined yet: hero, why riders join, what a membership contains, category index, featured stock, today's drop, coaching, auction + clearance, why there are no prices, the floor in numbers, how you get in, FAQ and the ask. Sections live in [`src/components/home/`](src/components/home) |
| `/shop` | The whole catalog in one place: 11 categories with search, brand and condition filters plus sorting |
| `/daily-listings` | Today's and yesterday's drops (09:00 daily) |
| `/coaching` | Training programs + the international coaching pool |
| `/auction` | Live lots with current bids and countdowns |
| `/clearance` | MR.Rider Clearance Market — end-of-line stock |
| `/account` | Rider sign-up / sign-in — the door to inquiries |
| `/inquiries` | The rider's own inquiry threads |
| `/apply` | Membership application form — contact, a chosen reason plus notes, an international shipping address and an optional photo |
| `/about` · `/contact` | The club story · enquiries form |
| `/admin` | Back office — inquiry inbox, applications, clients and content management |

## Applications

`/apply` collects, in four steps: contact details; a **chosen reason** for
joining (a fixed list from [`src/lib/applications.ts`](src/lib/applications.ts))
with an optional notes box under it; a shipping address in international order
(line 1, line 2, city, state/province, postal code, ISO country); and an
optional **photo**, taken with the camera or picked from the gallery.

The photo is downscaled in the browser to 1200px before upload — a phone camera
hands back 4–12MB, which is both more than the admin needs and over the bucket
limit — and lands in the **private** `applicant-photos` bucket. Only the admin
can read it, through a short-lived signed URL.

Approving an application carries all of it onto the client profile, so the
Clients tab has the address without anyone going back to the application.

## No prices — inquiries instead

The floor carries **no pricing**. Every product card has a **Request inquiry**
button; the club quotes in the thread, where it can attach a spec sheet or a
photo and answer questions about fit, condition and availability.

1. A rider creates an account at `/account` (email + password, Supabase auth).
   Only account holders can send an inquiry. The button on every card reads
   **Club price**.
2. Hitting **Request inquiry** opens a thread on that product — a snapshot of
   the product travels with it, so retiring stock never erases the
   conversation. Asking again about the same product reuses the open thread.
3. The admin answers from `/admin` → **Inquiry Inbox**. Both sides can attach
   images and PDFs (10MB each, five per message).
4. Each new message emails the other side (see below). Threads are never
   deleted; the admin can close and reopen them.

Messages arrive over Supabase Realtime, with a 20-second poll as a fallback for
projects where the publication is off. Attachments live in a **private**
`inquiry-files` bucket and are served through short-lived signed URLs — only
the rider on the thread and the admin can open them.

Prices are not dropped from the database, only from the site and the admin
form: `products.price` (now defaulting to 0) and `compare_at` (still nullable)
are kept, so historic figures survive and the decision is reversible. They do
stay readable through the public API for anyone holding the anon key — see the
note at the end of
[`15_pricing_retired.sql`](supabase/migrations/15_pricing_retired.sql) for the
one-line purge if the client wants the numbers gone rather than hidden.

### Language and routing

A rider picks **Sinhala or English** when they open a thread. That choice
routes the club's alert (`INQUIRY_ADMIN_EMAIL_SI` / `_EN`, both falling back to
`INQUIRY_ADMIN_EMAIL`), decides which language the automatic acknowledgement is
written in, and picks the WhatsApp number the rider is offered
(`NEXT_PUBLIC_WHATSAPP_SI` / `_EN`). Any of these left blank simply falls back —
nothing breaks while the addresses are still being confirmed.

Opening a thread also sends the rider an **acknowledgement** in their language,
asking for the size, timing and contact number the club needs to quote. It goes
out once, on the message that opens the thread, never on the replies after it.

> The Sinhala copy in [`src/lib/languages.ts`](src/lib/languages.ts) is a first
> pass and should be checked by a native speaker. Every Sinhala string on the
> site is in that one object.

### Email alerts (optional)

New inquiries and rider replies are emailed to `INQUIRY_ADMIN_EMAIL`; the
club's replies are emailed to the rider. Set `RESEND_API_KEY`, `RESEND_FROM`
and `INQUIRY_ADMIN_EMAIL` in `.env.local` (see `.env.example`). Without them
the inbox works exactly the same — only the email nudge is skipped.

The endpoint is [`/api/inquiries/notify`](src/app/api/inquiries/notify/route.ts).
It re-reads the message with the caller's own Supabase token, so it can only
announce a message the caller wrote, on a thread they are part of, within five
minutes of sending.

## The membership gate

Visitors can browse the whole site, but bidding and coaching render **locked**
until the club approves them:

1. A rider applies at `/apply`.
2. The admin reviews every answer in the Applications tab at `/admin`.
3. Approving creates a **client profile** and unlocks the floor.

The gate is driven by a single function in
[`src/lib/membership.ts`](src/lib/membership.ts) — the member-login phase swaps
its body for a Supabase auth check and every locked element unlocks at once.
A rider *account* (for inquiries) and *membership* (dues + approval) are
deliberately separate: anyone can ask, members get the floor.

## Admin

`/admin` — sign in as the superadmin (`admin@mrrider.lk`, created in the
Supabase dashboard). Tabs:

- **Inquiry Inbox** — every product inquiry as a chat thread; reply with text, images or PDFs, close when it's done. The tab counts threads waiting on you
- **Applications** — full review cards with every answer; approving creates the client profile
- **Clients** — approved client profiles, suspend / reactivate
- **Enquiries** — messages from the contact page
- **Products** — add / edit / delete stock; drives Shop, Daily Listings and Clearance. Daily Listings is **opt-in** per product, stock is only asked for on new (not pre-owned) items, and `Running order` pins a product to a position — anything left blank falls in behind, newest first
- **Clients** — searchable across name, email, phone, city and country
- **Coaching** — training programs and the coaching pool
- **Auction** — lots, bids and countdown end times
- **Accounts** — auth accounts and membership status

All writes are enforced server-side by row-level security: only the superadmin
session can change anything.

## Navigation

The Shop mega-menu breaks each aisle down by **product type** — Components has
Drivetrain, Brakes, Cockpit, Pedals and Spares, each holding its types.

**Road Bikes** and **Framesets** are the exception. A road bike is just a road
bike, so those two aisles had one product type each and their menu was a single
link beside a tall column of brands. What a rider is choosing there is the
brand and then the model, so those aisles navigate **category → brand → model**
instead: the brand is the section heading and its models are the items, which
is the same shape Components has.

The models come from the catalogue, not the taxonomy — no per-model entry to
maintain, and the menu stays correct as stock moves. Brands with no stock in
that aisle never appear. The list is capped at `MODELS_PER_BRAND`
([`src/lib/taxonomy.ts`](src/lib/taxonomy.ts)) with an `All N →` link, since
this data rides along in the root layout on every page.

A model link opens `/shop` filtered to that aisle and brand with the model name
in the search box, so the rider can see why the floor is filtered and widen it
from there.

## Design

Black / grey / white with a single energetic accent, condensed italic display
type and hairline grid rules. The accent is one token in
[`src/app/tokens.css`](src/app/tokens.css) — change that value to re-skin every
CTA and sale badge.

Product images are hatched placeholders; drop in real photography when it is
ready and the cards are already shaped for it.

### Motion

Two tiers, both switched on by one class that an inline script in the root
layout adds to `<html>` before the first paint
([`src/lib/motion.ts`](src/lib/motion.ts)):

- **`[data-rise]`** — CSS keyframes, used above the fold. Runs on the first
  frame, so the hero never waits on a network round-trip and LCP is not held
  back by a JavaScript chunk. `rise(n)` sets the stagger position.
- **`[data-reveal]`** — GSAP + ScrollTrigger, used below the fold and driven by
  a single `ScrollTrigger.batch` in
  [`MotionProvider`](src/components/motion/MotionProvider.tsx). `[data-count]`
  elements additionally count up to the number already rendered in the HTML.

GSAP is imported dynamically on the first idle callback, so it lands in its own
chunk, sits off the critical path and is **never downloaded at all** for
visitors on `prefers-reduced-motion: reduce` — they get the finished page with
no animation. Only opacity and transform are animated, so nothing triggers
layout or paint.

Every rule is scoped under that one class, which means the page is fully
visible whenever it is absent: reduced motion, JavaScript off, or the 2.5s
failsafe in the boot script firing because the motion chunk never arrived.
Nothing on this page can end up permanently invisible.
