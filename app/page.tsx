import { PerksService } from "@lib/supabase/queries";
import { PerksView } from "@components";
import { SearchParam } from "@lib";

type SearchParams = Partial<Record<SearchParam, string>>;

export default async function Home({
  searchParams,
}: {
  searchParams: Promise<SearchParams>;
}) {
  const params = await searchParams;
  const page = Math.max(1, Number(params.page) || 1);

  const perksService = await PerksService.create();

  const { perks, total, availableCategories, availableStatuses } = await perksService.getPerks(page, {
    search: params.search,
    category: params.category,
    status: params.status,
  });

  return (
    <div className="max-w-7xl mx-auto px-4 sm:px-6 py-8">
      <PerksView
        perks={perks}
        total={total}
        availableCategories={availableCategories}
        availableStatuses={availableStatuses}
      />
    </div>
  );
}
