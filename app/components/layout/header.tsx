"use client";

import {
  Navbar,
  NavbarBrand,
  NavbarContent,
  NavbarItem,
  NavbarMenuToggle,
  NavbarMenu,
  NavbarMenuItem,
  Button,
  Link,
} from "@heroui/react";
import { Sun, Moon, Sparkles } from "lucide-react";
import { useTranslation } from "react-i18next";
import { useTheme } from "@hooks";
import { Theme } from "@context";
import { SignOutButton } from "@components";
import { useState, useEffect } from "react";
import { getSupabaseBrowserClient } from "@lib/supabase/client";
import type { User, AuthChangeEvent, Session } from "@supabase/supabase-js";

interface HeaderProps {
  user: User | null;
}

export function Header({ user: serverUser }: HeaderProps) {
  const { theme, toggleTheme } = useTheme();
  const { t } = useTranslation();
  const [isMenuOpen, setIsMenuOpen] = useState(false);
  const [user, setUser] = useState<User | null>(serverUser);

  useEffect(() => {
    const supabase = getSupabaseBrowserClient();
    const { data: { subscription } } = supabase.auth.onAuthStateChange(
      (_event: AuthChangeEvent, session: Session | null) => {
        setUser(session?.user ?? null);
      }
    );
    return () => subscription.unsubscribe();
  }, []);

  const navItems = [
    { label: t("header.perks"), href: "#" },
    { label: t("header.about"), href: "#" },
  ];

  return (
    <Navbar
      isMenuOpen={isMenuOpen}
      onMenuOpenChange={setIsMenuOpen}
      maxWidth="xl"
      classNames={{
        base: "bg-background/80 backdrop-blur-md border-b border-divider",
        wrapper: "px-4 sm:px-6",
      }}
    >
      <NavbarContent justify="start">
        <NavbarMenuToggle className="sm:hidden" />
        <NavbarBrand>
          <Sparkles size={20} className="text-blue-500 mr-2" />
          <p className="font-bold text-lg text-foreground">{t("brand")}</p>
        </NavbarBrand>
      </NavbarContent>

      <NavbarContent className="hidden sm:flex gap-6" justify="center">
        {navItems.map((item) => (
          <NavbarItem key={item.label}>
            <Link href={item.href} className="text-sm text-default-500 hover:text-foreground transition-colors">
              {item.label}
            </Link>
          </NavbarItem>
        ))}
      </NavbarContent>

      <NavbarContent justify="end" className="gap-2">
        <NavbarItem>
          <Button isIconOnly variant="light" size="sm" onPress={toggleTheme} aria-label="Toggle theme">
            {theme === Theme.Light ? <Moon size={18} /> : <Sun size={18} />}
          </Button>
        </NavbarItem>
        <NavbarItem className="hidden sm:flex">
          {user ? (
            <SignOutButton />
          ) : (
            <Button as={Link} href="/login" color="primary" size="sm" variant="flat" radius="full">
              {t("header.signIn")}
            </Button>
          )}
        </NavbarItem>
      </NavbarContent>

      <NavbarMenu className="pt-4 bg-background/95 backdrop-blur-md">
        {navItems.map((item) => (
          <NavbarMenuItem key={item.label}>
            <Link href={item.href} className="w-full text-foreground py-2" size="lg">
              {item.label}
            </Link>
          </NavbarMenuItem>
        ))}
        <NavbarMenuItem>
          {user ? (
            <SignOutButton />
          ) : (
            <Button as={Link} href="/login" color="primary" fullWidth variant="flat" radius="full" className="mt-2">
              {t("header.signIn")}
            </Button>
          )}
        </NavbarMenuItem>
      </NavbarMenu>
    </Navbar>
  );
}
