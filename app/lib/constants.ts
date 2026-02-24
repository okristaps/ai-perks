import type { PerkCategory, PerkStatus } from "./types";

export const PERK_CATEGORIES: PerkCategory[] = ["llm", "code", "image", "cloud", "api"];
export const PERK_STATUSES: PerkStatus[] = ["active", "expired", "coming_soon"];

export const ACTIVE_SUBSCRIPTION_STATUSES = ["active", "trialing"] as const;

export const PAGE_SIZE = 10;
export const DEBOUNCE_MS = 300;

export enum SearchParam {
  Page = "page",
  Search = "search",
  Category = "category",
  Status = "status",
}

export const CATEGORY_COLOR_MAP: Record<PerkCategory, "primary" | "secondary" | "warning" | "success" | "default"> = {
  llm: "primary",
  code: "secondary",
  image: "warning",
  cloud: "success",
  api: "default",
};

export const STATUS_COLOR_MAP: Record<PerkStatus, "success" | "danger" | "warning"> = {
  active: "success",
  expired: "danger",
  coming_soon: "warning",
};
