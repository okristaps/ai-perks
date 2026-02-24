import { Webhooks } from "@polar-sh/nextjs";
import { getSupabaseAdminClient } from "@lib/supabase/admin";

interface SubscriptionData {
  id: string;
  status: string;
  customer: { id: string; email: string };
  currentPeriodEnd?: Date | string | null;
  cancelAtPeriodEnd?: boolean;
}

export const POST = Webhooks({
  webhookSecret: process.env.POLAR_WEBHOOK_SECRET!,

  onPayload: async (payload) => {
    console.log("[polar webhook] Event received:", payload.type);
  },

  onSubscriptionActive: async (payload) => {
    console.log("[polar webhook] subscription.active fired");
    await upsertSubscription(payload.data);
  },
  onSubscriptionUpdated: async (payload) => {
    console.log("[polar webhook] subscription.updated fired");
    await upsertSubscription(payload.data);
  },
  onSubscriptionCanceled: async (payload) => {
    await upsertSubscription(payload.data);
  },
  onSubscriptionUncanceled: async (payload) => {
    await upsertSubscription(payload.data);
  },
  onSubscriptionRevoked: async (payload) => {
    await upsertSubscription(payload.data);
  },
});

async function upsertSubscription(subscription: SubscriptionData) {
  const supabase = getSupabaseAdminClient();

  const { data: userId, error: lookupError } = await supabase.rpc("get_user_id_by_email", {
    email_input: subscription.customer.email,
  });

  if (lookupError || !userId) {
    console.error("[polar webhook] Could not find user for email:", subscription.customer.email, lookupError);
    return;
  }

  const { error } = await supabase.from("subscriptions").upsert(
    {
      user_id: userId,
      polar_subscription_id: subscription.id,
      polar_customer_id: subscription.customer.id,
      status: subscription.status,
      current_period_end: subscription.currentPeriodEnd ?? null,
      cancel_at_period_end: subscription.cancelAtPeriodEnd ?? false,
      updated_at: new Date().toISOString(),
    },
    { onConflict: "polar_subscription_id" },
  );

  if (error) {
    console.error("[polar webhook] Failed to upsert subscription:", error);
  } else {
    console.log("[polar webhook] Upserted subscription:", subscription.id, subscription.status);
  }
}
