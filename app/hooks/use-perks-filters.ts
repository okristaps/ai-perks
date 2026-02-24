"use client";

import { useState, useCallback, useEffect, useTransition } from "react";
import { useRouter, useSearchParams } from "next/navigation";
import { useDebounce } from "./use-debounce";
import { DEBOUNCE_MS, SearchParam } from "@lib/constants";
import type { PerkCategory, PerkStatus } from "@lib/types";

interface UsePerksFiltersReturn {
  searchInput: string;
  setSearchInput: (v: string) => void;
  selectedCategories: PerkCategory[];
  selectedStatuses: PerkStatus[];
  toggleCategory: (cat: PerkCategory) => void;
  toggleStatus: (status: PerkStatus) => void;
  clearAll: () => void;
  hasActiveFilters: boolean;
  isPending: boolean;
}

export function usePerksFilters(): UsePerksFiltersReturn {
  const router = useRouter();
  const searchParams = useSearchParams();
  const [isPending, startTransition] = useTransition();

  const urlSearch = searchParams.get(SearchParam.Search) ?? "";
  const urlCategories = (searchParams.get(SearchParam.Category)?.split(",").filter(Boolean) ?? []) as PerkCategory[];
  const urlStatuses = (searchParams.get(SearchParam.Status)?.split(",").filter(Boolean) ?? []) as PerkStatus[];

  const [searchInput, setSearchInput] = useState(urlSearch);
  const debouncedSearch = useDebounce(searchInput, DEBOUNCE_MS);

  // Sync URL → local input on external navigation (back/forward)
  const [prevUrlSearch, setPrevUrlSearch] = useState(urlSearch);
  if (urlSearch !== prevUrlSearch) {
    setPrevUrlSearch(urlSearch);
    setSearchInput(urlSearch);
  }

  // Shared URL push helper — always resets page to 1
  const pushParams = useCallback(
    (updater: (params: URLSearchParams) => void) => {
      const params = new URLSearchParams(searchParams.toString());
      updater(params);
      params.delete(SearchParam.Page);
      startTransition(() => {
        router.push(`?${params.toString()}`, { scroll: false });
      });
    },
    [router, searchParams, startTransition],
  );

  // Sync debounced search → URL
  useEffect(() => {
    const currentUrlSearch = searchParams.get(SearchParam.Search) ?? "";
    if (debouncedSearch !== currentUrlSearch) {
      pushParams((params) => {
        if (debouncedSearch) {
          params.set(SearchParam.Search, debouncedSearch);
        } else {
          params.delete(SearchParam.Search);
        }
      });
    }
  }, [debouncedSearch, pushParams, searchParams]);

  const toggleCategory = useCallback(
    (cat: PerkCategory) => {
      pushParams((params) => {
        const current = new Set(params.get(SearchParam.Category)?.split(",").filter(Boolean) ?? []);
        if (current.has(cat)) {
          current.delete(cat);
        } else {
          current.add(cat);
        }
        if (current.size > 0) {
          params.set(SearchParam.Category, [...current].join(","));
        } else {
          params.delete(SearchParam.Category);
        }
      });
    },
    [pushParams],
  );

  const toggleStatus = useCallback(
    (status: PerkStatus) => {
      pushParams((params) => {
        const current = new Set(params.get(SearchParam.Status)?.split(",").filter(Boolean) ?? []);
        if (current.has(status)) {
          current.delete(status);
        } else {
          current.add(status);
        }
        if (current.size > 0) {
          params.set(SearchParam.Status, [...current].join(","));
        } else {
          params.delete(SearchParam.Status);
        }
      });
    },
    [pushParams],
  );

  const clearAll = useCallback(() => {
    setSearchInput("");
    pushParams((params) => {
      params.delete(SearchParam.Search);
      params.delete(SearchParam.Category);
      params.delete(SearchParam.Status);
    });
  }, [pushParams]);

  const hasActiveFilters = urlSearch.length > 0 || urlCategories.length > 0 || urlStatuses.length > 0;

  return {
    searchInput,
    setSearchInput,
    selectedCategories: urlCategories,
    selectedStatuses: urlStatuses,
    toggleCategory,
    toggleStatus,
    clearAll,
    hasActiveFilters,
    isPending,
  };
}
