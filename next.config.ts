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

const nextConfig: NextConfig = {
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
  },
};

export default nextConfig;
