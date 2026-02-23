"use client";

import { Button } from "@heroui/react";
import { useTranslation } from "react-i18next";
import { useRouter } from "next/navigation";
import { getSupabaseBrowserClient } from "@lib/supabase/client";

export function SignOutButton() {
  const { t } = useTranslation();
  const router = useRouter();

  async function handleSignOut() {
    const supabase = getSupabaseBrowserClient();
    await supabase.auth.signOut();
    router.refresh();
  }

  return (
    <Button color="primary" size="sm" variant="flat" radius="full" onPress={handleSignOut}>
      {t("header.signOut")}
    </Button>
  );
}
