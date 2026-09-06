import ProductGridSkeleton from "@/components/ProductGridSkeleton";

/* Same wait, same treatment — this rail reads from the same catalogue. */
export default function Loading() {
  return <ProductGridSkeleton cards={6} />;
}
