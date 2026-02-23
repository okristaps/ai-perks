"use client";

import { createBrowserClient } from "@supabase/ssr";
import { env } from "@config";

let client: ReturnType<typeof createBrowserClient> | null = null;

export function getSupabaseBrowserClient() {
  if (client) return client;

  client = createBrowserClient(
    env.supabase.url,
    env.supabase.key
  );

  return client;
}
