import type { NextConfig } from "next";

/* Product photography is served from Supabase Storage (migration 13).
   The wildcard covers hosted projects; a self-hosted instance adds its own
   host through NEXT_PUBLIC_SUPABASE_URL. */
const supabaseHost = (() => {
  try {
    return process.env.NEXT_PUBLIC_SUPABASE_URL
      ? new URL(process.env.NEXT_PUBLIC_SUPABASE_URL).hostname
      : null;
  } catch {
    return null;
  }
})();

/* The Supabase origin the browser talks to directly — REST for the catalog,
   auth for the member session, realtime for the inquiry threads, storage for
   the photography. connect-src has to name it or the site cannot load its own
   data under a CSP. */
const supabaseOrigin = (() => {
  try {
    return process.env.NEXT_PUBLIC_SUPABASE_URL
      ? new URL(process.env.NEXT_PUBLIC_SUPABASE_URL).origin
      : null;
  } catch {
    return null;
  }
})();

const connectSrc = [
  "'self'",
  supabaseOrigin,
  supabaseOrigin?.replace(/^https:/, "wss:"), // realtime
]
  .filter(Boolean)
  .join(" ");

/* Next inlines small runtime scripts and Tailwind emits inline styles, so
   'unsafe-inline' stays for now on both. Dev additionally needs 'unsafe-eval'
   for React Refresh — it is deliberately not granted in production. */
const csp = [
  "default-src 'self'",
  `script-src 'self' 'unsafe-inline'${process.env.NODE_ENV === "development" ? " 'unsafe-eval'" : ""}`,
  "style-src 'self' 'unsafe-inline'",
  `img-src 'self' blob: data: https://*.supabase.co${supabaseOrigin ? ` ${supabaseOrigin}` : ""}`,
  "font-src 'self' data:",
  `connect-src ${connectSrc}`,
  "frame-ancestors 'none'",
  "form-action 'self'",
  "base-uri 'self'",
  "object-src 'none'",
  "upgrade-insecure-requests",
].join("; ");

const nextConfig: NextConfig = {
  // Do not advertise the framework to anyone scanning for version-specific bugs.
  poweredByHeader: false,
  images: {
    remotePatterns: [
      {
        protocol: "https",
        hostname: "**.supabase.co",
        pathname: "/storage/v1/object/public/**",
      },
      ...(supabaseHost && !supabaseHost.endsWith(".supabase.co")
        ? ([
            {
              protocol: "https" as const,
              hostname: supabaseHost,
              pathname: "/storage/v1/object/public/**",
            },
          ])
        : []),
    ],
    // The catalog is WebP already (migration 18); AVIF buys a little more on
    // the hero shots without a second stored copy.
    formats: ["image/avif", "image/webp"],
    minimumCacheTTL: 60 * 60 * 24 * 30,
  },
  async headers() {
    return [
      {
        source: "/:path*",
        headers: [
          { key: "Content-Security-Policy", value: csp },
          // Clickjacking. frame-ancestors above covers modern browsers; this
          // is the older header for anything that ignores CSP.
          { key: "X-Frame-Options", value: "DENY" },
          { key: "X-Content-Type-Options", value: "nosniff" },
          { key: "Referrer-Policy", value: "strict-origin-when-cross-origin" },
          // Nothing on the floor needs a camera, a microphone or a location.
          {
            key: "Permissions-Policy",
            value: "camera=(), microphone=(), geolocation=(), interest-cohort=()",
          },
          // Two years, subdomains included. Only meaningful over HTTPS, which
          // mr-rider.lk will be.
          {
            key: "Strict-Transport-Security",
            value: "max-age=63072000; includeSubDomains; preload",
          },
          { key: "X-DNS-Prefetch-Control", value: "on" },
        ],
      },
      {
        // The back office must never be cached or indexed anywhere.
        source: "/admin/:path*",
        headers: [
          { key: "Cache-Control", value: "no-store, max-age=0" },
          { key: "X-Robots-Tag", value: "noindex, nofollow, noarchive" },
        ],
      },
    ];
  },
};

export default nextConfig;
