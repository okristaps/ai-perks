import { createServerClient } from "@supabase/ssr";
import { cookies } from "next/headers";
import { env } from "@config";

export async function getSupabaseServerClient() {
  const cookieStore = await cookies();

  return createServerClient(
    env.supabase.url,
    env.supabase.key,
    {
      cookies: {
        getAll() {
          return cookieStore.getAll();
        },
        setAll(cookiesToSet) {
          try {
            cookiesToSet.forEach(({ name, value, options }) =>
              cookieStore.set(name, value, options)
            );
          } catch {
            // Called from Server Component where cookies are read-only.
            // The middleware handles persisting the refreshed session.
          }
        },
      },
    }
  );
}
