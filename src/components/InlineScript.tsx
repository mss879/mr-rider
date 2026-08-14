/* An inline <script> that runs during HTML parsing, before the first paint.

   The type swap is the pattern from the Next.js "preventing flash before
   hydration" guide: React logs a development warning whenever a component
   renders a <script>, because scripts injected client-side never execute.
   Emitting `text/javascript` on the server and `text/plain` on the client
   keeps the real behaviour (the browser runs it while parsing the document)
   and drops the warning. suppressHydrationWarning covers the type mismatch
   that swap creates. */
export default function InlineScript({ html }: { html: string }) {
  return (
    <script
      type={typeof window === "undefined" ? "text/javascript" : "text/plain"}
      suppressHydrationWarning
      dangerouslySetInnerHTML={{ __html: html }}
    />
  );
}
