import { redirect } from "next/navigation";
import { getSupabaseServerClient } from "@lib/supabase/server";
import { SignInForm } from "@components";

export default async function LoginPage() {
  const supabase = await getSupabaseServerClient();
  const { data: { user } } = await supabase.auth.getUser();

  if (user) {
    redirect("/");
  }

  return (
    <div className="flex items-center justify-center py-20 px-4 min-h-[calc(100vh-120px)]">
      <div className="w-full max-w-md">
        <SignInForm />
      </div>
    </div>
  );
}
