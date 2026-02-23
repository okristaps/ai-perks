"use client";

import "./i18n";
import { HeroUIProvider } from "@heroui/react";
import { ThemeProvider } from "@context";

export function Providers({ children }: { children: React.ReactNode }) {
  return (
    <ThemeProvider>
      <HeroUIProvider>{children}</HeroUIProvider>
    </ThemeProvider>
  );
}
