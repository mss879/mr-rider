import Image from "next/image";
import type { SiteImage } from "@/lib/imagery";

/* The masthead every inner page opens with.

   `image` is optional and turns the band dark. Pages that carry one read as a
   continuation of the home page's photographic hero; pages that are mostly a
   form or a private inbox (apply, account, inquiries, contact) deliberately
   leave it off — a photograph behind a sign-in form is decoration in the way. */

export default function PageHero({
  eyebrow,
  title,
  blurb,
  image,
  children,
}: {
  eyebrow: string;
  title: string;
  blurb?: string;
  image?: SiteImage;
  children?: React.ReactNode;
}) {
  if (!image) {
    return (
      <section className="border-b border-line">
        <div className="mx-auto grid max-w-7xl gap-8 px-6 py-14 md:py-20 lg:grid-cols-12">
          <div className="min-w-0 lg:col-span-8">
            <p className="mb-3 font-mono text-[11px] uppercase tracking-[0.22em] text-ink-soft">
              {eyebrow}
            </p>
            <h1 className="headline text-[clamp(2.8rem,8vw,6rem)]">{title}</h1>
          </div>
          <div className="flex flex-col justify-end gap-5 lg:col-span-4 lg:border-l lg:border-line lg:pl-8">
            {blurb && (
              <p className="max-w-md text-sm leading-relaxed text-ink-soft">
                {blurb}
              </p>
            )}
            {children}
          </div>
        </div>
      </section>
    );
  }

  return (
    <section className="relative isolate overflow-clip border-b border-line-dark bg-carbon text-chalk">
      <Image
        src={image.src}
        alt=""
        aria-hidden
        width={image.width}
        height={image.height}
        // Above the fold on the page it opens, so it is fetched eagerly; and
        // scrimmed, so it can afford the same compression as the home hero.
        priority
        quality={55}
        sizes="100vw"
        className="pointer-events-none absolute inset-0 -z-10 size-full object-cover object-center"
      />
      <div
        aria-hidden
        className="absolute inset-0 -z-10 bg-gradient-to-r from-carbon/92 from-15% via-carbon/45 via-50% to-carbon/78"
      />
      <div className="mx-auto grid max-w-7xl gap-8 px-6 py-14 md:py-20 lg:grid-cols-12">
        <div className="min-w-0 lg:col-span-8">
          <p className="mb-3 font-mono text-[11px] uppercase tracking-[0.22em] text-chalk/60">
            {eyebrow}
          </p>
          <h1 className="headline text-[clamp(2.8rem,8vw,6rem)]">{title}</h1>
        </div>
        <div className="flex flex-col justify-end gap-5 lg:col-span-4 lg:border-l lg:border-line-dark lg:pl-8">
          {blurb && (
            <p className="max-w-md text-sm leading-relaxed text-chalk/80">
              {blurb}
            </p>
          )}
          {children}
        </div>
      </div>
    </section>
  );
}
