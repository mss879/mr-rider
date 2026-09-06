import ProductGridSkeleton from "@/components/ProductGridSkeleton";

/* Streamed in while ShopPage awaits getProducts(). See the component for why
   the skeleton mirrors the real grid rather than being a spinner. */
export default function Loading() {
  return <ProductGridSkeleton />;
}
