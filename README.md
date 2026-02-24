# AI Perks

Discover exclusive credits and offers from leading AI providers.

## Tech Stack

- **Next.js** (App Router)
- **Supabase** (Auth + Database)
- **Polar** (Subscriptions + Checkout)
- **HeroUI** (Components)

## Setup

1. Install dependencies:
   ```bash
   pnpm install
   ```

2. Copy `.env.example` to `.env.local` and fill in the values.

3. Run the database migrations in the Supabase SQL Editor (files in `supabase/migrations/`).

4. Optionally seed the perks table with sample data:
   ```sql
   -- Run the contents of supabase/seeds/perks.sql in the SQL Editor
   ```

5. Start the dev server:
   ```bash
   pnpm dev
   ```

## Supabase Auth

Enable **Google** as an OAuth provider in your Supabase dashboard under **Authentication > Providers**. You'll need a Google OAuth client ID and secret from the Google Cloud Console.

## Polar Webhooks

When creating your webhook in the Polar dashboard, point it to `/api/webhook/polar` and enable these events:

- `checkout.created`, `checkout.updated`
- `subscription.active`, `subscription.updated`, `subscription.canceled`, `subscription.uncanceled`, `subscription.revoked`

The Polar access token needs **Products: Read** and **Subscriptions: Read/Write** permissions.

The Polar product must be a **recurring** (subscription) product, not a one-time purchase.
