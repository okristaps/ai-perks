"use client";

import { useCallback, useTransition, type RefObject } from "react";
import { useRouter, useSearchParams } from "next/navigation";
import { PAGE_SIZE as DEFAULT_PAGE_SIZE, SearchParam } from "@lib/constants";

interface UsePaginationOptions {
  total: number;
  pageSize?: number;
  paramName?: string;
  scrollRef?: RefObject<HTMLElement | null>;
}

export function usePagination({
  total,
  pageSize = DEFAULT_PAGE_SIZE,
  paramName = SearchParam.Page,
  scrollRef,
}: UsePaginationOptions) {
  const router = useRouter();
  const searchParams = useSearchParams();
  const [isPending, startTransition] = useTransition();

  const page = Number(searchParams.get(paramName)) || 1;
  const totalPages = Math.ceil(total / pageSize);

  const setPage = useCallback(
    (newPage: number) => {
      const params = new URLSearchParams(searchParams.toString());
      if (newPage <= 1) {
        params.delete(paramName);
      } else {
        params.set(paramName, String(newPage));
      }
      startTransition(() => {
        router.push(`?${params.toString()}`, { scroll: false });
      });
      if (scrollRef?.current) {
        window.scrollTo({ top: 0, behavior: "smooth" });
      }
    },
    [router, searchParams, paramName, scrollRef, startTransition],
  );

  const start = (page - 1) * pageSize + 1;
  const end = Math.min(page * pageSize, total);

  return { page, setPage, totalPages, start, end, total, pageSize, isPending };
}
