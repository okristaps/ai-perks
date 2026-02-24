import { NextRequest, NextResponse } from "next/server";
import { Checkout } from "@polar-sh/nextjs";
import { getSupabaseServerClient } from "@lib/supabase/server";
import { ACTIVE_SUBSCRIPTION_STATUSES } from "@lib/constants";

const handler = Checkout({
  accessToken: process.env.POLAR_ACCESS_TOKEN!,
  successUrl: process.env.NEXT_PUBLIC_SITE_URL,
  server: (process.env.POLAR_SERVER as "sandbox" | "production") ?? "sandbox",
});

export async function GET(req: NextRequest) {
  const supabase = await getSupabaseServerClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  const { data: subscription } = await supabase
    .from("subscriptions")
    .select("id")
    .eq("user_id", user.id)
    .in("status", [...ACTIVE_SUBSCRIPTION_STATUSES])
    .limit(1)
    .maybeSingle();

  if (subscription) {
    return NextResponse.json({ error: "Already subscribed" }, { status: 409 });
  }

  const url = new URL(req.url);

  if (!url.searchParams.has("products")) {
    url.searchParams.set("products", process.env.POLAR_PRODUCT_ID!);
  }
  return handler(new NextRequest(url, req));
}
