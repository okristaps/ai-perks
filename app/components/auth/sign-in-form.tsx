"use client";

import { Card, CardBody, CardHeader, Button } from "@heroui/react";
import { useTranslation } from "react-i18next";
import { getSupabaseBrowserClient } from "@lib/supabase/client";

export function SignInForm() {
  const { t } = useTranslation();

  async function handleGoogleSignIn() {
    const supabase = getSupabaseBrowserClient();
    await supabase.auth.signInWithOAuth({
      provider: "google",
      options: {
        redirectTo: `${window.location.origin}/auth/callback`,
      },
    });
  }

  return (
    <Card className="shadow-lg border border-divider">
      <CardHeader className="flex flex-col items-start px-6 py-8">
        <h1 className="text-3xl font-bold">{t("home.welcome")}</h1>
        <p className="text-sm text-default-500 mt-2">{t("home.subtitle")}</p>
      </CardHeader>
      <CardBody className="gap-4 px-6 pb-8">
        <Button variant="bordered" fullWidth size="lg" onPress={handleGoogleSignIn}>
          {t("home.signInGoogle")}
        </Button>
        <p className="text-xs text-center text-default-400 mt-2">{t("home.authCaption")}</p>
      </CardBody>
    </Card>
  );
}
