import { parseDescription, splitLabel } from "@/lib/description";

/* The admin writes plain text; this lays it out. See lib/description.ts for
   the rules. Everything renders as React text — no HTML is ever injected. */

function Line({ text }: { text: string }) {
  const parts = splitLabel(text);
  if (!parts) return <>{text}</>;
  const [label, value] = parts;
  return (
    <>
      <strong className="font-semibold text-ink">{label}:</strong>
      {value ? ` ${value}` : null}
    </>
  );
}

export default function ProductDescription({ text }: { text: string | undefined }) {
  const blocks = parseDescription(text);
  if (blocks.length === 0) return null;

  return (
    <div className="flex flex-col gap-4 text-[15px] leading-relaxed text-ink-soft">
      {blocks.map((b, i) => {
        if (b.kind === "heading") {
          return (
            <h3
              key={i}
              className="mt-3 font-display text-lg font-bold uppercase tracking-wide text-ink first:mt-0"
            >
              {b.text}
            </h3>
          );
        }
        if (b.kind === "list") {
          return (
            <ul key={i} className="flex flex-col gap-1.5 pl-5 [list-style:square]">
              {b.items.map((item, j) => (
                <li key={j}>
                  <Line text={item} />
                </li>
              ))}
            </ul>
          );
        }
        return (
          <p key={i}>
            {b.lines.map((line, j) => (
              <span key={j}>
                {j > 0 && <br />}
                <Line text={line} />
              </span>
            ))}
          </p>
        );
      })}
    </div>
  );
}
