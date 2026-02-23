"use client";

import { Link } from "@heroui/react";
import { useTranslation } from "react-i18next";

export function Footer() {
  const { t } = useTranslation();

  return (
    <footer className="border-t border-divider mt-auto">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 py-3">
        <div className="flex flex-col sm:flex-row items-center justify-between gap-2">
          <p className="text-sm text-default-400">
            &copy; {new Date().getFullYear()} {t("brand")}
          </p>
          <div className="flex items-center gap-6">
            <Link href="#" className="text-sm text-default-400 hover:text-foreground transition-colors">
              {t("footer.privacy")}
            </Link>
            <Link href="#" className="text-sm text-default-400 hover:text-foreground transition-colors">
              {t("footer.terms")}
            </Link>
          </div>
        </div>
      </div>
    </footer>
  );
}
