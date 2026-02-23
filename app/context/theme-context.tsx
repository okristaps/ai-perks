"use client";

import React, { createContext, useCallback, useLayoutEffect, useSyncExternalStore } from "react";

export enum Theme {
  Light = "light",
  Dark = "dark",
}

export interface ThemeContextType {
  theme: Theme;
  toggleTheme: () => void;
}

export const ThemeContext = createContext<ThemeContextType | undefined>(undefined);

const THEME_KEY = "theme";
const listeners = new Set<() => void>();

function emitChange() {
  listeners.forEach((listener) => listener());
}

function subscribe(callback: () => void) {
  listeners.add(callback);
  return () => {
    listeners.delete(callback);
  };
}

function getSnapshot(): Theme {
  const stored = localStorage.getItem(THEME_KEY);
  if (stored === Theme.Dark) return Theme.Dark;
  if (stored === Theme.Light) return Theme.Light;
  if (window.matchMedia("(prefers-color-scheme: dark)").matches) return Theme.Dark;
  return Theme.Light;
}

function getServerSnapshot(): Theme {
  return Theme.Light;
}

export function ThemeProvider({ children }: { children: React.ReactNode }) {
  const theme = useSyncExternalStore(subscribe, getSnapshot, getServerSnapshot);

  useLayoutEffect(() => {
    document.documentElement.classList.toggle(Theme.Dark, theme === Theme.Dark);
  }, [theme]);

  const toggleTheme = useCallback(() => {
    const newTheme = getSnapshot() === Theme.Light ? Theme.Dark : Theme.Light;
    localStorage.setItem(THEME_KEY, newTheme);
    emitChange();
  }, []);

  return <ThemeContext.Provider value={{ theme, toggleTheme }}>{children}</ThemeContext.Provider>;
}
