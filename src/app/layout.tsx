import type { Metadata, Viewport } from "next";
import { Archivo, Barlow_Condensed, IBM_Plex_Mono } from "next/font/google";
import "./globals.css";
import SiteHeader from "@/components/SiteHeader";
import SiteFooter from "@/components/SiteFooter";
import { getNavAvailability } from "@/lib/db";
import { SITE_NAME, SITE_URL } from "@/lib/site";

const barlow = Barlow_Condensed({
  variable: "--font-barlow",
  subsets: ["latin"],
  weight: ["600", "700", "800", "900"],
  style: ["normal", "italic"],
});

const archivo = Archivo({
  variable: "--font-archivo",
  subsets: ["latin"],
});

const plex = IBM_Plex_Mono({
  variable: "--font-plex",
  subsets: ["latin"],
  weight: ["400", "500", "600"],
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
  alternates: { canonical: "/" },
  openGraph: {
    type: "website",
    siteName: SITE_NAME,
    url: SITE_URL,
    title: "MR.RIDER — Members-Only Cycling Club & Shop",
    description: DESCRIPTION,
    locale: "en_NZ",
  },
  twitter: {
    card: "summary_large_image",
    title: "MR.RIDER — Members-Only Cycling Club & Shop",
    description: DESCRIPTION,
  },
  robots: {
    index: true,
    follow: true,
    googleBot: { index: true, follow: true, "max-image-preview": "large" },
  },
  formatDetection: { telephone: false, address: false, email: false },
};

export const viewport: Viewport = {
  themeColor: "#111111",
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
    <html
      lang="en"
      className={`${barlow.variable} ${archivo.variable} ${plex.variable} h-full antialiased`}
    >
      <body className="flex min-h-svh flex-col bg-paper font-body text-ink">
        <SiteHeader availability={availability} />
        <main className="flex-1">{children}</main>
        <SiteFooter />
      </body>
    </html>
  );
}
