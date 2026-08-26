export default function Marquee({ items }: { items: string[] }) {
  return (
    <div className="overflow-clip border-y border-line bg-carbon py-3 text-chalk">
      <div className="ticker-track flex w-max">
        {[0, 1].map((copy) => (
          <div key={copy} aria-hidden={copy === 1} className="flex shrink-0">
            {items.map((item, i) => (
              <span
                key={i}
                className="headline flex items-center whitespace-nowrap px-6 text-lg md:text-xl"
              >
                {item}
                <span aria-hidden className="ml-12 text-chalk/40 not-italic">
                  ///
                </span>
              </span>
            ))}
          </div>
        ))}
      </div>
    </div>
  );
}
