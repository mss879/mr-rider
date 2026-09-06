import type { Metadata, Viewport } from "next";
import { Archivo, Barlow_Condensed, IBM_Plex_Mono } from "next/font/google";
import "./globals.css";
import InlineScript from "@/components/InlineScript";
import SiteHeader from "@/components/SiteHeader";
import SiteFooter from "@/components/SiteFooter";
import SiteJsonLd from "@/components/SiteJsonLd";
import MotionProvider from "@/components/motion/MotionProvider";
import Preloader from "@/components/Preloader";
import { CREDIT } from "@/lib/credit";
import { getNavAvailability } from "@/lib/db";
import { MOTION_BOOT } from "@/lib/motion";
import {
  SITE_NAME,
  SITE_OG_IMAGE,
  SITE_OG_SIZE,
  SITE_URL,
  absolute,
} from "@/lib/site";

/* Only the cuts the site wears. `.headline` is 800 italic and every other
   display use is `font-bold` (700) roman; 600 and 900 were preloaded on
   every page and never drawn. next/font loads the weight × style grid, so
   this is four files where there were eight. */
const barlow = Barlow_Condensed({
  variable: "--font-barlow",
  subsets: ["latin"],
  weight: ["700", "800"],
  style: ["normal", "italic"],
});

const archivo = Archivo({
  variable: "--font-archivo",
  subsets: ["latin"],
});

// 400 and 600 only — nothing on the site sets the mono face to medium.
const plex = IBM_Plex_Mono({
  variable: "--font-plex",
  subsets: ["latin"],
  weight: ["400", "600"],
});

const DESCRIPTION =
  "Ride fast. Buy smart. A members-only cycling club: one shop floor, daily listings, training programs, an international coaching pool, auctions and the clearance market.";

export const metadata: Metadata = {
  // Every relative URL in metadata — Open Graph images, canonicals — resolves
  // against this. Without it Next warns and emits relative OG tags, which
  // crawlers and link unfurlers cannot follow.
  metadataBase: new URL(SITE_URL),
  title: {
    default: "MR.RIDER — Members-Only Cycling Club & Shop",
    // Pages set a bare title; the club name is appended here.
    template: "%s — MR.RIDER",
  },
  description: DESCRIPTION,
  applicationName: SITE_NAME,
  // Who made the site vs. who runs it. `authors` emits both <meta name="author">
  // and <link rel="author" href> pointing at the agency, which is the standard
  // machine-readable form of a build credit. These are attribution signals for
  // crawlers and AI, not link equity — the followed anchor in the footer is
  // what carries that. See src/components/BuiltBy.tsx.
  authors: [{ name: CREDIT.name, url: CREDIT.url }],
  creator: CREDIT.name,
  publisher: SITE_NAME,
  /* No `alternates.canonical` here, deliberately. A canonical set on the root
     layout is INHERITED by every page that does not override it, so the whole
     site shipped `<link rel="canonical" href="https://mr-rider.lk">` — /shop,
     /coaching, /about and the rest each declaring themselves a duplicate of
     the home page, which is an instruction to Google to index one page and
     drop the others. Each route now states its own; the home page's lives in
     app/page.tsx alongside the others. */
  openGraph: {
    type: "website",
    siteName: SITE_NAME,
    url: SITE_URL,
    title: "MR.RIDER — Members-Only Cycling Club & Shop",
    description: DESCRIPTION,
    // Sri Lanka. It read en_NZ, which is where the build was set up, not
    // where the club is — and og:locale is what a platform reads to decide
    // which regional audience a link belongs to.
    locale: "en_LK",
    /* Absolute, not relative. metadataBase would resolve a relative path
       correctly, but several unfurlers (WhatsApp among them) fetch og:image
       without resolving it against the document, and a bare "/og.jpg" is a
       broken card on exactly the channel the club shares through most. */
    images: [
      {
        url: absolute(SITE_OG_IMAGE),
        width: SITE_OG_SIZE.width,
        height: SITE_OG_SIZE.height,
        alt: "MR.RIDER — ride fast, buy smart, join the club",
        type: "image/jpeg",
      },
    ],
  },
  twitter: {
    card: "summary_large_image",
    title: "MR.RIDER — Members-Only Cycling Club & Shop",
    description: DESCRIPTION,
    images: [absolute(SITE_OG_IMAGE)],
  },
  robots: {
    index: true,
    follow: true,
    googleBot: { index: true, follow: true, "max-image-preview": "large" },
  },
  icons: {
    icon: [
      { url: "/favicon.ico", sizes: "any" },
      { url: "/favicon-32x32.png", sizes: "32x32", type: "image/png" },
      { url: "/favicon-16x16.png", sizes: "16x16", type: "image/png" },
      { url: "/icon.png", sizes: "512x512", type: "image/png" },
    ],
    shortcut: "/favicon.ico",
    apple: [
      { url: "/apple-touch-icon.png", sizes: "180x180", type: "image/png" },
    ],
  },
  formatDetection: { telephone: false, address: false, email: false },
};

export const viewport: Viewport = {
  // --color-carbon from tokens.css, so the browser chrome on Android and the
  // manifest's theme_color agree with the site's own dark bands.
  themeColor: "#151619",
  colorScheme: "light",
};

export default async function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  // Drives the mega-menu: menu entries with no stock behind them stay hidden.
  const availability = await getNavAvailability();

  return (
    // The boot script below adds a class to this element before React
    // hydrates; suppressHydrationWarning tells React to accept the DOM it
    // finds rather than reset the attribute. It applies to <html> alone, so
    // genuine mismatches deeper in the tree still surface.
    <html
      lang="en"
      className={`${barlow.variable} ${archivo.variable} ${plex.variable} h-full antialiased`}
      suppressHydrationWarning
    >
      <head>
        <InlineScript html={MOTION_BOOT} />
        <SiteJsonLd />
      </head>
      <body className="flex min-h-svh flex-col bg-paper font-body text-ink">
        {/* First child of <body> so it is in the first byte of HTML and
            covers the page from the first paint. Pure CSS — see Preloader. */}
        <Preloader />
        <MotionProvider />
        <SiteHeader availability={availability} />
        <main className="flex-1">{children}</main>
        <SiteFooter />
      </body>
    </html>
  );
}
