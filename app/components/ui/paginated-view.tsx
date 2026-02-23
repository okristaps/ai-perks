"use client";

import type { ReactNode, RefObject } from "react";
import { Pagination, Spinner } from "@heroui/react";
import { useTranslation } from "react-i18next";

interface PaginationState {
  page: number;
  setPage: (page: number) => void;
  totalPages: number;
  start: number;
  end: number;
  total: number;
}

export interface PaginatedViewProps {
  isPending: boolean;
  pagination: PaginationState;
  listRef: RefObject<HTMLDivElement | null>;
  renderTable: () => ReactNode;
  renderCards: () => ReactNode;
  minHeight?: string;
  showingTextKey?: string;
}

export function PaginatedView({
  isPending,
  pagination,
  listRef,
  renderTable,
  renderCards,
  minHeight = "540px",
  showingTextKey = "common.pagination.showing",
}: PaginatedViewProps) {
  const { t } = useTranslation();
  const { page, setPage, totalPages, start, end, total } = pagination;

  return (
    <>
      <div ref={listRef} className="relative" style={{ minHeight }}>
        {isPending && (
          <div className="absolute inset-0 z-10 flex items-center justify-center bg-background/50 rounded-lg">
            <Spinner size="lg" />
          </div>
        )}
        <div className={isPending ? "opacity-50 pointer-events-none" : ""}>
          <div className="hidden sm:block">{renderTable()}</div>
          <div className="block sm:hidden">{renderCards()}</div>
        </div>
      </div>

      {totalPages > 1 && (
        <div className="flex flex-col items-center gap-2">
          <Pagination
            total={totalPages}
            page={page}
            onChange={setPage}
            showControls
            color="primary"
            size="sm"
            classNames={{
              cursor: "cursor-pointer",
              item: "cursor-pointer",
              next: "cursor-pointer",
              prev: "cursor-pointer",
            }}
          />
          <p className="text-sm text-default-400">
            {t(showingTextKey, { start, end, total })}
          </p>
        </div>
      )}
    </>
  );
}
