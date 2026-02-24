import type { SupabaseClient } from "@supabase/supabase-js";
import type { Perk, PerkCategory, PerkStatus } from "../types";
import { PAGE_SIZE } from "../constants";
import { getSupabaseServerClient } from "./server";

export interface PerksFilters {
  search?: string;
  category?: string;
  status?: string;
}

export interface PerksResult {
  perks: Perk[];
  total: number;
  availableCategories: PerkCategory[];
  availableStatuses: PerkStatus[];
}

export class PerksService {
  private constructor(private supabase: SupabaseClient) {}

  static async create() {
    const supabase = await getSupabaseServerClient();
    return new PerksService(supabase);
  }

  async getPerks(page: number, filters: PerksFilters): Promise<PerksResult> {
    const start = (page - 1) * PAGE_SIZE;

    let query = this.supabase.from("perks").select("*", { count: "exact" });

    if (filters.search?.trim()) {
      const term = `%${filters.search.trim()}%`;
      query = query.or(`company.ilike.${term},title.ilike.${term},description.ilike.${term}`);
    }

    const categories = parseList<PerkCategory>(filters.category);
    if (categories.length > 0) {
      query = query.in("category", categories);
    }

    const statuses = parseList<PerkStatus>(filters.status);
    if (statuses.length > 0) {
      query = query.in("status", statuses);
    }

    const [{ data: perks, count }, { data: filterRows }] = await Promise.all([
      query.order("created_at", { ascending: false }).range(start, start + PAGE_SIZE - 1),
      this.supabase.from("perks").select("category, status"),
    ]);

    return {
      perks: (perks as Perk[]) ?? [],
      total: count ?? 0,
      availableCategories: unique(filterRows?.map((r) => r.category)),
      availableStatuses: unique(filterRows?.map((r) => r.status)),
    };
  }
}

function parseList<T extends string>(raw?: string): T[] {
  return (raw?.split(",").filter(Boolean) ?? []) as T[];
}

function unique<T>(items?: T[]): T[] {
  return [...new Set(items ?? [])];
}
