"use client";

import {
  Input,
  Button,
  Dropdown,
  DropdownTrigger,
  DropdownMenu,
  DropdownItem,
  Chip,
} from "@heroui/react";
import { Search, X, ChevronDown } from "lucide-react";
import { useTranslation } from "react-i18next";
import type { PerkCategory, PerkStatus } from "@lib/types";
import { CATEGORY_COLOR_MAP, STATUS_COLOR_MAP } from "@lib/constants";

interface PerksToolbarProps {
  searchInput: string;
  onSearchChange: (value: string) => void;
  selectedCategories: PerkCategory[];
  onToggleCategory: (cat: PerkCategory) => void;
  selectedStatuses: PerkStatus[];
  onToggleStatus: (status: PerkStatus) => void;
  onClearAll: () => void;
  hasActiveFilters: boolean;
  availableCategories: PerkCategory[];
  availableStatuses: PerkStatus[];
}

export function PerksToolbar({
  searchInput,
  onSearchChange,
  selectedCategories,
  onToggleCategory,
  selectedStatuses,
  onToggleStatus,
  onClearAll,
  hasActiveFilters,
  availableCategories,
  availableStatuses,
}: PerksToolbarProps) {
  const { t } = useTranslation();

  return (
    <div className="flex flex-col gap-3 sm:flex-row sm:items-center">
      <Input
        placeholder={t("perks.toolbar.searchPlaceholder")}
        value={searchInput}
        onValueChange={onSearchChange}
        startContent={<Search size={18} className="text-default-400" />}
        endContent={
          searchInput ? (
            <Button
              isIconOnly
              size="sm"
              variant="light"
              onPress={() => onSearchChange("")}
            >
              <X size={16} />
            </Button>
          ) : null
        }
        isClearable={false}
        classNames={{
          inputWrapper: "border border-divider",
        }}
        className="sm:flex-1"
        size="sm"
      />

      <div className="flex items-center gap-2">
        <Dropdown>
          <DropdownTrigger>
            <Button
              size="sm"
              variant="bordered"
              endContent={<ChevronDown size={14} />}
            >
              {t("perks.toolbar.category")}
              {selectedCategories.length > 0 && (
                <Chip size="sm" variant="solid" color="primary" className="ml-1">
                  {selectedCategories.length}
                </Chip>
              )}
            </Button>
          </DropdownTrigger>
          <DropdownMenu
            aria-label={t("perks.toolbar.category")}
            selectionMode="multiple"
            selectedKeys={new Set(selectedCategories)}
            onSelectionChange={(keys) => {
              const selected = [...keys] as PerkCategory[];
              const current = new Set(selectedCategories);
              for (const cat of availableCategories) {
                const isSelected = selected.includes(cat);
                const wasSelected = current.has(cat);
                if (isSelected !== wasSelected) {
                  onToggleCategory(cat);
                }
              }
            }}
          >
            {availableCategories.map((cat) => (
              <DropdownItem key={cat} startContent={
                <span className={`w-2 h-2 rounded-full bg-${CATEGORY_COLOR_MAP[cat]}`} />
              }>
                {t(`perks.category.${cat}`)}
              </DropdownItem>
            ))}
          </DropdownMenu>
        </Dropdown>

        <Dropdown>
          <DropdownTrigger>
            <Button
              size="sm"
              variant="bordered"
              endContent={<ChevronDown size={14} />}
            >
              {t("perks.toolbar.status")}
              {selectedStatuses.length > 0 && (
                <Chip size="sm" variant="solid" color="primary" className="ml-1">
                  {selectedStatuses.length}
                </Chip>
              )}
            </Button>
          </DropdownTrigger>
          <DropdownMenu
            aria-label={t("perks.toolbar.status")}
            selectionMode="multiple"
            selectedKeys={new Set(selectedStatuses)}
            onSelectionChange={(keys) => {
              const selected = [...keys] as PerkStatus[];
              const current = new Set(selectedStatuses);
              for (const status of availableStatuses) {
                const isSelected = selected.includes(status);
                const wasSelected = current.has(status);
                if (isSelected !== wasSelected) {
                  onToggleStatus(status);
                }
              }
            }}
          >
            {availableStatuses.map((status) => (
              <DropdownItem key={status} startContent={
                <span className={`w-2 h-2 rounded-full bg-${STATUS_COLOR_MAP[status]}`} />
              }>
                {t(`perks.status.${status}`)}
              </DropdownItem>
            ))}
          </DropdownMenu>
        </Dropdown>

        {hasActiveFilters && (
          <Button
            size="sm"
            variant="light"
            color="danger"
            isIconOnly
            onPress={onClearAll}
          >
            <X size={16} />
          </Button>
        )}
      </div>
    </div>
  );
}
