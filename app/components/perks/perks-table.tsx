"use client";

import {
  Table,
  TableHeader,
  TableColumn,
  TableBody,
  TableRow,
  TableCell,
  Chip,
  Button,
  Avatar,
} from "@heroui/react";
import { ExternalLink } from "lucide-react";
import { useTranslation } from "react-i18next";
import type { Perk } from "@lib/types";
import { CATEGORY_COLOR_MAP, STATUS_COLOR_MAP } from "@lib/constants";

interface PerksTableProps {
  perks: Perk[];
}

export function PerksTable({ perks }: PerksTableProps) {
  const { t } = useTranslation();

  const columns = [
    { key: "company", label: t("perks.table.company") },
    { key: "title", label: t("perks.table.title") },
    { key: "category", label: t("perks.table.category") },
    { key: "credits", label: t("perks.table.credits") },
    { key: "status", label: t("perks.table.status") },
    { key: "actions", label: t("perks.table.actions") },
  ];

  return (
    <Table
      aria-label={t("perks.title")}
      classNames={{
        wrapper: "shadow-sm border border-divider",
        th: "bg-transparent text-default-400 text-xs font-normal uppercase tracking-wider",
      }}
    >
      <TableHeader columns={columns}>
        {(column) => (
          <TableColumn key={column.key} align={column.key === "actions" ? "center" : "start"}>
            {column.label}
          </TableColumn>
        )}
      </TableHeader>
      <TableBody items={perks} emptyContent={t("perks.empty")}>
        {(perk) => (
          <TableRow key={perk.id}>
            <TableCell>
              <div className="flex items-center gap-3">
                <Avatar
                  name={perk.company[0]}
                  size="sm"
                  classNames={{
                    base: "bg-primary/10 text-primary",
                  }}
                />
                <span className="font-medium">{perk.company}</span>
              </div>
            </TableCell>
            <TableCell>
              <span className="text-sm">{perk.title}</span>
            </TableCell>
            <TableCell>
              <Chip size="sm" variant="flat" color={CATEGORY_COLOR_MAP[perk.category]}>
                {t(`perks.category.${perk.category}`)}
              </Chip>
            </TableCell>
            <TableCell>
              <span className="text-sm font-medium">{perk.credits}</span>
            </TableCell>
            <TableCell>
              <Chip size="sm" variant="dot" color={STATUS_COLOR_MAP[perk.status]}>
                {t(`perks.status.${perk.status}`)}
              </Chip>
            </TableCell>
            <TableCell>
              <Button
                size="sm"
                variant="light"
                color="primary"
                startContent={<ExternalLink size={14} />}
              >
                {t("perks.getPerk")}
              </Button>
            </TableCell>
          </TableRow>
        )}
      </TableBody>
    </Table>
  );
}
