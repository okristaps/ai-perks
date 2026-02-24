import { useState, useCallback } from "react";
import { useDisclosure } from "@heroui/react";
import { getSupabaseBrowserClient } from "@lib/supabase/client";

export function useCheckout() {
  const { isOpen, onOpen, onOpenChange } = useDisclosure();
  const [loadingPerkId, setLoadingPerkId] = useState<string | null>(null);

  const handleGetPerk = useCallback(
    async (perkId: string) => {
      setLoadingPerkId(perkId);
      try {
        const supabase = getSupabaseBrowserClient();
        const {
          data: { user },
        } = await supabase.auth.getUser();
        if (!user) {
          onOpen();
        } else {
          const email = user.email ? `&customerEmail=${encodeURIComponent(user.email)}` : "";
          window.location.href = `/api/checkout?${email}`;
        }
      } finally {
        setLoadingPerkId(null);
      }
    },
    [onOpen],
  );

  return { isOpen, onOpenChange, loadingPerkId, handleGetPerk };
}
