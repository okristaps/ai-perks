"use client";

import { Modal, ModalContent, ModalHeader, ModalBody, Button } from "@heroui/react";
import { useTranslation } from "react-i18next";
import { getSupabaseBrowserClient } from "@lib/supabase/client";

interface SignInModalProps {
  isOpen: boolean;
  onOpenChange: (open: boolean) => void;
}

export function SignInModal({ isOpen, onOpenChange }: SignInModalProps) {
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
    <Modal isOpen={isOpen} onOpenChange={onOpenChange} placement="center">
      <ModalContent>
        <ModalHeader className="flex flex-col gap-1">
          <h2 className="text-xl font-bold">{t("auth.modal.title")}</h2>
          <p className="text-sm text-default-500 font-normal">{t("auth.modal.subtitle")}</p>
        </ModalHeader>
        <ModalBody className="pb-6">
          <Button variant="bordered" fullWidth size="lg" onPress={handleGoogleSignIn}>
            {t("home.signInGoogle")}
          </Button>
        </ModalBody>
      </ModalContent>
    </Modal>
  );
}
