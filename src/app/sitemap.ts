import type { MetadataRoute } from "next";
import { categories } from "@/lib/taxonomy";
import { absolute } from "@/lib/site";

/* Served at /sitemap.xml.

   Public pages plus one entry per shop aisle, since /shop?cat=… is how the
   catalog is actually navigated. /admin, /account and /inquiries are left
   out: they are private, and two of them are behind the membership gate. */
export default function sitemap(): MetadataRoute.Sitemap {
  const now = new Date();

  const pages: { path: string; priority: number; freq: MetadataRoute.Sitemap[number]["changeFrequency"] }[] = [
    { path: "/", priority: 1.0, freq: "daily" },
    { path: "/shop", priority: 0.9, freq: "daily" },
    { path: "/daily-listings", priority: 0.8, freq: "daily" },
    { path: "/clearance", priority: 0.7, freq: "daily" },
    { path: "/brands", priority: 0.7, freq: "weekly" },
    { path: "/auction", priority: 0.6, freq: "weekly" },
    { path: "/coaching", priority: 0.6, freq: "monthly" },
    { path: "/apply", priority: 0.6, freq: "monthly" },
    { path: "/about", priority: 0.5, freq: "monthly" },
    { path: "/contact", priority: 0.5, freq: "monthly" },
  ];

  return [
    ...pages.map((p) => ({
      url: absolute(p.path),
      lastModified: now,
      changeFrequency: p.freq,
      priority: p.priority,
    })),
    ...categories.map((c) => ({
      url: absolute(`/shop?cat=${c.slug}`),
      lastModified: now,
      changeFrequency: "daily" as const,
      priority: 0.6,
    })),
  ];
}
