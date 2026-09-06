import type { MetadataRoute } from "next";
import { SITE_NAME } from "@/lib/site";

/* Served at /manifest.webmanifest, and linked from every page by Next.

   What it actually buys the club: an Android home-screen shortcut that shows
   the club's mark on the club's carbon rather than a screenshot of the page
   with a generic globe on it, and a browser UI tinted to match the site
   instead of Chrome's default grey. It is not a bid to be an app — there is
   no service worker and `display: browser` keeps the address bar, because a
   shop that hides the URL it is on gives a rider no way to check they are on
   the real one.

   The icon paths are deliberately in /public and not Next's hashed
   `icon.png` convention: an installed shortcut keeps the URL it was created
   with, so a hash that changes on the next deploy leaves that shortcut with
   a broken image and no way to refresh it. */
export default function manifest(): MetadataRoute.Manifest {
  return {
    name: `${SITE_NAME} — Members-Only Cycling Club & Shop`,
    short_name: SITE_NAME,
    description:
      "One shop floor, daily listings, a live auction, a clearance market and an international coaching pool.",
    start_url: "/",
    display: "browser",
    background_color: "#151619", // --color-carbon
    theme_color: "#151619",
    lang: "en-LK",
    icons: [
      { src: "/icon-192.png", sizes: "192x192", type: "image/png" },
      { src: "/icon-512.png", sizes: "512x512", type: "image/png" },
      // `maskable` lets Android crop to its own shape without clipping the
      // mark, because the tile already carries its own padding.
      { src: "/icon-512.png", sizes: "512x512", type: "image/png", purpose: "maskable" },
    ],
  };
}
