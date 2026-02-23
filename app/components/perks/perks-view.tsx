"use client";

import { useRef } from "react";
import { useTranslation } from "react-i18next";
import { usePagination } from "@hooks";
import { PaginatedView } from "@components/ui/paginated-view";
import { PerksTable } from "./perks-table";
import { PerksCards } from "./perks-cards";
import type { Perk } from "@lib";

interface PerksViewProps {
  perks: Perk[];
  total: number;
}

export function PerksView({ perks, total }: PerksViewProps) {
  const { t } = useTranslation();
  const listRef = useRef<HTMLDivElement>(null);
  const { page, setPage, totalPages, start, end, isPending } = usePagination({
    total,
    scrollRef: listRef,
  });

  return (
    <div className="flex flex-col gap-6">
      <div>
        <h1 className="text-2xl sm:text-3xl font-bold">{t("perks.title")}</h1>
        <p className="text-default-500 mt-1">{t("perks.subtitle")}</p>
      </div>

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
