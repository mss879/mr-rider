export default function Lock({ className = "" }: { className?: string }) {
  return (
    <svg
      viewBox="0 0 12 14"
      width="10"
      height="12"
      aria-hidden
      fill="currentColor"
      className={`inline-block shrink-0 ${className}`}
    >
      <path d="M6 0a3.5 3.5 0 0 0-3.5 3.5V5H1v9h10V5H9.5V3.5A3.5 3.5 0 0 0 6 0Zm2 5H4V3.5a2 2 0 1 1 4 0V5Z" />
    </svg>
  );
}
