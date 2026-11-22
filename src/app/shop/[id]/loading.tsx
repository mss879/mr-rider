/* Without this the shop's grid skeleton (shop/loading.tsx) would stand in for
   a single product while it loads. */
export default function Loading() {
  return (
    <section className="mx-auto max-w-7xl px-6 py-8 md:py-12" aria-busy>
      <div className="mb-6 h-3 w-48 animate-pulse bg-line" />
      <div className="grid gap-8 lg:grid-cols-2 lg:gap-12">
        <div className="aspect-[4/3] w-full animate-pulse border border-line bg-white" />
        <div className="flex flex-col gap-4">
          <div className="h-3 w-24 animate-pulse bg-line" />
          <div className="h-9 w-3/4 animate-pulse bg-line" />
          <div className="h-12 w-full max-w-sm animate-pulse bg-line" />
          <div className="mt-4 h-32 w-full animate-pulse bg-line" />
        </div>
      </div>
    </section>
  );
}
