CREATE TABLE public.perks (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  company text NOT NULL,
  title text NOT NULL,
  description text NOT NULL,
  category text NOT NULL CHECK (category IN ('llm', 'code', 'image', 'cloud', 'api')),
  status text NOT NULL CHECK (status IN ('active', 'expired', 'coming_soon')),
  credits text NOT NULL,
  instructions text NOT NULL,
  url text,
  created_at timestamptz NOT NULL DEFAULT now()
);

CREATE INDEX idx_perks_category ON public.perks (category);
CREATE INDEX idx_perks_status ON public.perks (status);
CREATE INDEX idx_perks_company ON public.perks (company);

ALTER TABLE public.perks ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Anyone can view all perks"
  ON public.perks
  FOR SELECT
  TO anon, authenticated
  USING (true);
