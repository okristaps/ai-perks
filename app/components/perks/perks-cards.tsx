"use client";

import {
  Card,
  CardHeader,
  CardBody,
  CardFooter,
  Chip,
  Button,
  Avatar,
} from "@heroui/react";
import { Check, ExternalLink } from "lucide-react";
import { useTranslation } from "react-i18next";
import type { Perk } from "@lib/types";
import { CATEGORY_COLOR_MAP, STATUS_COLOR_MAP } from "@lib/constants";
import { useCheckout } from "@hooks";
import { SignInModal } from "../auth/sign-in-modal";

interface PerksCardsProps {
  perks: Perk[];
  hasActiveSubscription: boolean;
}

export function PerksCards({ perks, hasActiveSubscription }: PerksCardsProps) {
  const { t } = useTranslation();
  const { isOpen, onOpenChange, loadingPerkId, handleGetPerk } = useCheckout();

  if (perks.length === 0) {
    return <p className="text-center text-default-400 py-8">{t("perks.empty")}</p>;
  }

  return (
    <>
      <div className="flex flex-col gap-4">
        {perks.map((perk) => (
          <Card key={perk.id} className="shadow-sm border border-divider">
            <CardHeader className="flex items-center gap-3 pb-0">
              <Avatar
                name={perk.company[0]}
                size="sm"
                classNames={{
                  base: "bg-primary/10 text-primary",
                }}
              />
              <div className="flex flex-col">
                <span className="font-medium">{perk.company}</span>
                <span className="text-sm text-default-500">{perk.title}</span>
              </div>
            </CardHeader>
            <CardBody className="py-3">
              <p className="text-sm font-medium">{perk.credits}</p>
            </CardBody>
            <CardFooter className="flex items-center justify-between pt-0">
              <div className="flex gap-2">
                <Chip size="sm" variant="flat" color={CATEGORY_COLOR_MAP[perk.category]}>
                  {t(`perks.category.${perk.category}`)}
                </Chip>
                <Chip size="sm" variant="dot" color={STATUS_COLOR_MAP[perk.status]}>
                  {t(`perks.status.${perk.status}`)}
                </Chip>
              </div>
              {hasActiveSubscription ? (
                <Chip size="sm" variant="flat" color="success" startContent={<Check size={14} />}>
                  {t("perks.subscribed")}
                </Chip>
              ) : (
                <Button
                  size="sm"
                  variant="light"
                  color="primary"
                  isLoading={loadingPerkId === perk.id}
                  startContent={loadingPerkId !== perk.id ? <ExternalLink size={14} /> : undefined}
                  onPress={() => handleGetPerk(perk.id)}
                >
                  {t("perks.getPerk")}
                </Button>
              )}
            </CardFooter>
          </Card>
        ))}
      </div>
      <SignInModal isOpen={isOpen} onOpenChange={onOpenChange} />
    </>
  );
}
