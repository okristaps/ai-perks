import { getSupabaseServerClient } from "@lib/supabase/server";
import { redirect } from "next/navigation";
import en from "@locales/en.json";

export default async function Home() {
  const supabase = await getSupabaseServerClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) {
    redirect("/login");
  }

  return (
    <div className="flex items-center justify-center py-20 px-4 min-h-[calc(100vh-120px)]">
      <div className="w-full max-w-md text-center">
        <h1 className="text-3xl font-bold">{en.home.welcome}</h1>
        <p className="text-default-500 mt-2">{user.email}</p>
      </div>
    </div>
  );
}
