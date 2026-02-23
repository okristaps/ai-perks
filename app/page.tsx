import { getSupabaseServerClient } from "@lib/supabase/server";
import { PerksView } from "@components";
import type { Perk } from "@lib";

const PAGE_SIZE = 10;

export default async function Home({
  searchParams,
}: {
  searchParams: Promise<{ page?: string }>;
}) {
  const { page: pageParam } = await searchParams;
  const page = Math.max(1, Number(pageParam) || 1);
  const start = (page - 1) * PAGE_SIZE;

  const supabase = await getSupabaseServerClient();
  const { data: perks, count } = await supabase
    .from("perks")
    .select("*", { count: "exact" })
    .order("created_at", { ascending: false })
    .range(start, start + PAGE_SIZE - 1);

  return (
    <div className="max-w-7xl mx-auto px-4 sm:px-6 py-8">
      <PerksView
        perks={(perks as Perk[]) ?? []}
        total={count ?? 0}
      />
    </div>
  );
}
