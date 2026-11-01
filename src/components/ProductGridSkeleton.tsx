/* UX gap — what the shop shows while 1,400 rows are on their way.

   The floor is server-rendered, so the wait is the round-trip to Postgres and
   not a spinner in the browser: a `loading.tsx` on the route is what puts
   something on screen during it. The shape is the real grid's — same card
   proportions, same rails, same three columns — so the page fills in rather
   than jumping when the stock lands.

   Everything here is aria-hidden behind one status line: a screen reader
   should be told the floor is loading, not read twelve empty cards. */

export default function ProductGridSkeleton({ cards = 9 }: { cards?: number }) {
  return (
    <div className="mx-auto max-w-7xl px-6 py-10 lg:grid lg:grid-cols-[260px_minmax(0,1fr)] lg:gap-10">
      <p role="status" className="sr-only">
        Loading the shop floor…
      </p>

      <div aria-hidden className="mb-8 hidden lg:col-start-1 lg:block">
        <span className="mb-6 block h-4 w-20 animate-pulse bg-line/50" />
        {Array.from({ length: 3 }).map((_, group) => (
          <div key={group} className="mb-7">
            <span className="mb-3 block h-3 w-24 animate-pulse bg-line/40" />
            {Array.from({ length: 5 }).map((__, row) => (
              <span
                key={row}
                className="mb-2.5 block h-3.5 animate-pulse bg-line/30"
                style={{ width: `${88 - row * 9}%` }}
              />
            ))}
          </div>
        ))}
      </div>

      <div aria-hidden className="lg:col-start-2">
        <span className="mb-6 block h-9 w-full max-w-md animate-pulse bg-line/40" />
        <div className="grid grid-cols-1 gap-5 sm:grid-cols-2">
          {Array.from({ length: cards }).map((_, i) => (
            <div key={i} className="flex flex-col border border-line bg-chalk">
              <span className="block aspect-[4/3] animate-pulse bg-line/35" />
              <span className="flex flex-col gap-2 border-t border-line p-4">
                <span className="block h-3 w-1/3 animate-pulse bg-line/40" />
                <span className="block h-5 w-4/5 animate-pulse bg-line/50" />
                <span className="mt-1 block h-3 w-1/4 animate-pulse bg-line/30" />
                <span className="mt-3 block h-10 w-full animate-pulse bg-line/40" />
              </span>
            </div>
          ))}
        </div>
      </div>
    </div>
  );
}
