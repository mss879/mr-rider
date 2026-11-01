"use client";

import { useEffect } from "react";

/* The last resort: an error thrown by the root layout itself, which is the
   one failure app/error.tsx cannot catch — it lives inside that layout.
   React has already unmounted everything at this point, so this file must
   render its own <html> and <body>, and it cannot use the site's header,
   footer, fonts or any component that assumes them.

   That is why the styling here is inline rather than Tailwind: if the reason
   we are here is that the stylesheet or the font chunk failed, a class name
   would render as unstyled text on white. Every value below is stated
   literally so this page looks deliberate under any failure it is shown for.
   The palette is tokens.css, copied by hand for exactly that reason. */

export default function GlobalError({
  error,
  reset,
}: {
  error: Error & { digest?: string };
  reset: () => void;
}) {
  useEffect(() => {
    console.error("[global error]", error.digest ?? "", error.message);
  }, [error]);

  return (
    <html lang="en">
      <body
        style={{
          margin: 0,
          minHeight: "100vh",
          display: "flex",
          alignItems: "center",
          justifyContent: "center",
          background: "oklch(0% 0 0)",
          color: "oklch(100% 0 0)",
          fontFamily: "ui-monospace, SFMono-Regular, Menlo, monospace",
          padding: "2rem",
        }}
      >
        <main style={{ maxWidth: "34rem" }}>
          <p
            style={{
              margin: "0 0 1.25rem",
              fontSize: "11px",
              letterSpacing: "0.22em",
              textTransform: "uppercase",
              opacity: 0.6,
            }}
          >
            MR.RIDER
          </p>
          <h1
            style={{
              margin: "0 0 1.25rem",
              fontSize: "clamp(2rem, 7vw, 3.5rem)",
              lineHeight: 1.05,
              fontStyle: "italic",
              textTransform: "uppercase",
              letterSpacing: "0.005em",
            }}
          >
            The site is down.
          </h1>
          <p
            style={{
              margin: "0 0 2rem",
              fontSize: "0.9rem",
              lineHeight: 1.7,
              opacity: 0.72,
            }}
          >
            Not your connection — ours. The club has been told. Try again in a
            moment.
          </p>
          <button
            type="button"
            onClick={reset}
            style={{
              border: "1px solid oklch(100% 0 0)",
              background: "oklch(100% 0 0)",
              color: "oklch(0% 0 0)",
              padding: "0.85rem 1.4rem",
              font: "inherit",
              fontSize: "11px",
              fontWeight: 600,
              letterSpacing: "0.18em",
              textTransform: "uppercase",
              cursor: "pointer",
            }}
          >
            Reload
          </button>
          {error.digest && (
            <p
              style={{
                margin: "2.5rem 0 0",
                fontSize: "10px",
                letterSpacing: "0.16em",
                textTransform: "uppercase",
                opacity: 0.5,
              }}
            >
              Reference {error.digest}
            </p>
          )}
        </main>
      </body>
    </html>
  );
}
