import type { MetadataRoute } from "next";
import { SITE_URL, absolute } from "@/lib/site";

/* Served at /robots.txt.

   The back office and the member-private areas are kept out of the index.
   This is a courtesy to well-behaved crawlers, not a control — /admin is
   protected by the session check and by row-level security, because a
   disallow line is a request, not a lock. */
export default function robots(): MetadataRoute.Robots {
  return {
    rules: [
      {
        userAgent: "*",
        allow: "/",
        disallow: ["/admin", "/account", "/inquiries", "/api/"],
      },
    ],
    sitemap: absolute("/sitemap.xml"),
    host: SITE_URL,
  };
}
