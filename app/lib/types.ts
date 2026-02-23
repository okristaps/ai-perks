export type PerkCategory = "llm" | "code" | "image" | "cloud" | "api";
export type PerkStatus = "active" | "expired" | "coming_soon";

export interface Perk {
  id: string;
  company: string;
  title: string;
  description: string;
  category: PerkCategory;
  status: PerkStatus;
  credits: string;
  instructions: string;
  url: string | null;
  created_at: string;
}
