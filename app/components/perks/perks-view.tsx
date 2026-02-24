"use client";

import { useRef } from "react";
import { useTranslation } from "react-i18next";
import { usePagination, usePerksFilters } from "@hooks";
import { PaginatedView } from "@components/ui/paginated-view";
import { PerksToolbar } from "./perks-toolbar";
import { PerksTable } from "./perks-table";
import { PerksCards } from "./perks-cards";
import type { Perk, PerkCategory, PerkStatus } from "@lib/types";

interface PerksViewProps {
  perks: Perk[];
  total: number;
  availableCategories: PerkCategory[];
  availableStatuses: PerkStatus[];
}

export function PerksView({ perks, total, availableCategories, availableStatuses }: PerksViewProps) {
  const { t } = useTranslation();
  const listRef = useRef<HTMLDivElement>(null);
  const { page, setPage, totalPages, start, end, isPending: isPaginationPending } = usePagination({
    total,
    scrollRef: listRef,
  });

  const {
    searchInput,
    setSearchInput,
    selectedCategories,
    selectedStatuses,
    toggleCategory,
    toggleStatus,
    clearAll,
    hasActiveFilters,
    isPending: isFilterPending,
  } = usePerksFilters();

  const isPending = isPaginationPending || isFilterPending;

  return (
    <div className="flex flex-col gap-6">
      <div>
        <h1 className="text-2xl sm:text-3xl font-bold">{t("perks.title")}</h1>
        <p className="text-default-500 mt-1">{t("perks.subtitle")}</p>
      </div>

      <PerksToolbar
        searchInput={searchInput}
        onSearchChange={setSearchInput}
        selectedCategories={selectedCategories}
        onToggleCategory={toggleCategory}
        selectedStatuses={selectedStatuses}
        onToggleStatus={toggleStatus}
        onClearAll={clearAll}
        hasActiveFilters={hasActiveFilters}
        availableCategories={availableCategories}
        availableStatuses={availableStatuses}
      />

      <PaginatedView
        isPending={isPending}
        pagination={{ page, setPage, totalPages, start, end, total }}
        listRef={listRef}
        renderTable={() => <PerksTable perks={perks} />}
        renderCards={() => <PerksCards perks={perks} />}
        showingTextKey="perks.pagination.showing"
      />
    </div>
  );
}
