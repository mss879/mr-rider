import type { Metadata } from "next";
import { Archivo, Barlow_Condensed, IBM_Plex_Mono } from "next/font/google";
import "./globals.css";
import SiteHeader from "@/components/SiteHeader";
import SiteFooter from "@/components/SiteFooter";
import { getNavAvailability } from "@/lib/db";

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

export const metadata: Metadata = {
  title: "MR.RIDER — Members-Only Cycling Club & Shop",
  description:
    "Ride fast. Buy smart. A members-only cycling club: one shop floor, daily listings, training programs, an international coaching pool, auctions and the clearance market.",
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
