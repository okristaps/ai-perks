INSERT INTO public.perks (company, title, description, category, status, credits, instructions, url)
VALUES
-- LLM category (20 items: 12 active, 4 expired, 4 coming_soon)
(
  'Anthropic',
  'Claude Pro Startup Credits',
  'Get $500 in Claude API credits for qualifying startups. Access Claude 3.5 Sonnet and Opus models for building AI-powered applications.',
  'llm', 'active', '$500 API credits',
  '1. Visit https://anthropic.com/startups and click Apply Now
2. Fill out the startup application form with your company details
3. Wait for approval (typically 3-5 business days)
4. Credits will be applied to your Anthropic Console account automatically',
  'https://anthropic.com/startups'
),
(
  'OpenAI',
  'ChatGPT Plus Free Trial',
  'Try ChatGPT Plus free for 1 month including GPT-4o access, DALL-E image generation, and Advanced Data Analysis.',
  'llm', 'active', '1 month free',
  '1. Go to https://chat.openai.com and sign up for a new account
2. Navigate to Settings > Subscription
3. Select ChatGPT Plus plan and enter promo code AIPERKS2026
4. Your first month will be free, cancel anytime before renewal',
  'https://chat.openai.com'
),
(
  'Google DeepMind',
  'Gemini Advanced Credits',
  'Access Gemini Ultra model with 3 months of Gemini Advanced plan for free. Includes 2TB Google One storage.',
  'llm', 'active', '3 months free',
  '1. Sign in at https://gemini.google.com with your Google account
2. Click Upgrade to Gemini Advanced
3. Enter promo code DEEPMIND2026 at checkout
4. Enjoy 3 months of Gemini Advanced including Ultra model access',
  'https://gemini.google.com'
),
(
  'Mistral',
  'Le Chat Pro Credits',
  'Get 6 months of Mistral Le Chat Pro including access to Mistral Large and code generation capabilities.',
  'llm', 'active', '6 months free',
  '1. Create an account at https://chat.mistral.ai
2. Go to account settings and select Upgrade
3. Apply promo code MISTRAL-STARTUP
4. Pro features activate immediately',
  'https://chat.mistral.ai'
),
(
  'Cohere',
  'Command R+ Enterprise Trial',
  'Try Cohere Command R+ for enterprise RAG and text generation. Includes 10M tokens per month for 3 months.',
  'llm', 'active', '10M tokens/month for 3 months',
  '1. Sign up at https://dashboard.cohere.com
2. Navigate to the Billing section
3. Select Enterprise Trial and apply code COHERE-TRIAL
4. Start building with Command R+ immediately',
  'https://dashboard.cohere.com'
),
(
  'AI21 Labs',
  'Jamba Model Credits',
  'Access AI21 Jamba model with $200 in free API credits for text generation and summarization tasks.',
  'llm', 'active', '$200 API credits',
  '1. Register at https://studio.ai21.com
2. Verify your email and complete onboarding
3. Enter promo code AI21PERKS in the billing section
4. Credits appear within 24 hours',
  'https://studio.ai21.com'
),
(
  'Perplexity',
  'Perplexity Pro Annual Discount',
  'Get 50% off the first year of Perplexity Pro. Includes unlimited Pro searches, file uploads, and API access.',
  'llm', 'active', '50% off first year',
  '1. Visit https://perplexity.ai and sign in or create an account
2. Click on Upgrade to Pro
3. Select Annual plan and apply code PPLX50
4. Discount applies to the first year of subscription',
  'https://perplexity.ai'
),
(
  'Together AI',
  'Open-Source LLM Credits',
  'Run open-source models like Llama 3, Mixtral, and more with $100 in free inference credits.',
  'llm', 'active', '$100 inference credits',
  '1. Sign up at https://api.together.xyz
2. Complete your profile setup
3. New accounts receive $100 in free credits automatically
4. Access 100+ open-source models via API',
  'https://api.together.xyz'
),
(
  'Fireworks AI',
  'Fast Inference Credits',
  'Get $50 in credits for ultra-fast LLM inference. Supports Llama, Mixtral, and custom fine-tuned models.',
  'llm', 'active', '$50 inference credits',
  '1. Create an account at https://fireworks.ai
2. Navigate to Billing > Credits
3. Apply code FWORKS50 for bonus credits
4. Start making API calls with sub-200ms latency',
  'https://fireworks.ai'
),
(
  'Groq',
  'GroqCloud Free Tier',
  'Access Groq LPU inference engine with generous free tier. Blazing fast inference for Llama and Mixtral models.',
  'llm', 'active', '14,400 tokens/min free',
  '1. Sign up at https://console.groq.com
2. Generate an API key from the dashboard
3. Free tier includes 14,400 tokens per minute
4. No credit card required to start',
  'https://console.groq.com'
),
(
  'xAI',
  'Grok API Early Access',
  'Get early access to the Grok API with $100 in free credits for text generation and analysis.',
  'llm', 'active', '$100 API credits',
  '1. Apply at https://x.ai/api and request access
2. Receive approval email with API credentials
3. Credits are automatically loaded to your account
4. Access Grok models via REST API',
  'https://x.ai/api'
),
(
  'Reka',
  'Reka Core Model Access',
  'Try Reka Core multimodal model with $75 in API credits. Supports text, image, and video understanding.',
  'llm', 'active', '$75 API credits',
  '1. Register at https://platform.reka.ai
2. Complete the developer profile
3. Redeem code REKASTART for bonus credits
4. Explore multimodal capabilities via playground or API',
  'https://platform.reka.ai'
),
(
  'Meta AI',
  'Llama Enterprise Program (Ended)',
  'The Meta Llama Enterprise early adopter program has concluded. Credits have expired for all participants.',
  'llm', 'expired', '$1,000 credits (expired)',
  '1. This program is no longer accepting applications
2. Existing credits expired on December 31, 2025
3. Consider using Llama models via Together AI or Fireworks AI
4. Visit https://llama.meta.com for open-source downloads',
  'https://llama.meta.com'
),
(
  'Inflection',
  'Pi Personal AI Credits',
  'Inflection Pi personal AI assistant credits program has ended following the company pivot.',
  'llm', 'expired', '6 months free (expired)',
  '1. This offer is no longer available
2. Inflection has pivoted to enterprise AI
3. Existing subscriptions were honored until expiration
4. Visit https://inflection.ai for enterprise offerings',
  'https://inflection.ai'
),
(
  'Aleph Alpha',
  'Luminous Model Trial (Ended)',
  'The Aleph Alpha Luminous model trial for EU startups has concluded.',
  'llm', 'expired', '€500 credits (expired)',
  '1. This EU-focused program has ended
2. Credits expired on March 1, 2026
3. Contact sales@aleph-alpha.com for enterprise pricing
4. Visit https://aleph-alpha.com for current offerings',
  'https://aleph-alpha.com'
),
(
  'Character.AI',
  'Character.AI Pro Promo (Ended)',
  'The promotional 3-month free Character.AI Pro offer has expired.',
  'llm', 'expired', '3 months free (expired)',
  '1. This promotion has ended
2. Visit https://character.ai for current pricing
3. Pro plan starts at $9.99/month
4. Free tier still available with limited features',
  'https://character.ai'
),
(
  'Amazon Bedrock',
  'Bedrock LLM Startup Credits',
  'Upcoming program offering $2,000 in Amazon Bedrock credits for startups. Access Claude, Llama, and Titan models.',
  'llm', 'coming_soon', '$2,000 Bedrock credits',
  '1. Program launches in Q2 2026
2. Pre-register at https://aws.amazon.com/bedrock/startups
3. Must be an AWS Activate member to qualify
4. Credits will be valid for 12 months after activation',
  'https://aws.amazon.com/bedrock'
),
(
  'Anthropic',
  'Claude Enterprise Pilot',
  'Upcoming enterprise pilot program with custom Claude deployments and dedicated support.',
  'llm', 'coming_soon', 'Custom enterprise pricing',
  '1. Applications open in March 2026
2. Visit https://anthropic.com/enterprise to express interest
3. Requires minimum 50-seat commitment
4. Includes dedicated solutions engineer',
  'https://anthropic.com/enterprise'
),
(
  'OpenAI',
  'GPT-5 Early Access Program',
  'Be among the first to access GPT-5 when it launches. Priority API access and dedicated support.',
  'llm', 'coming_soon', 'Priority access + $500 credits',
  '1. Sign up for the waitlist at https://platform.openai.com/gpt5-preview
2. Existing API customers get priority
3. Expected launch in Q2 2026
4. Includes $500 in bonus API credits at launch',
  'https://platform.openai.com'
),
(
  'Mistral',
  'Mistral Large 3 Preview',
  'Get early access to Mistral Large 3 model before general availability. Enhanced reasoning and multilingual support.',
  'llm', 'coming_soon', '5M free tokens at launch',
  '1. Join the preview waitlist at https://mistral.ai/preview
2. Selected participants notified by email
3. Expected availability in April 2026
4. Preview includes 5M free tokens',
  'https://mistral.ai'
),

-- CODE category (20 items: 12 active, 4 expired, 4 coming_soon)
(
  'Cursor',
  'Cursor Pro Free Trial',
  'Try Cursor Pro AI code editor for 2 weeks free. Includes GPT-4 powered code completion, chat, and codebase understanding.',
  'code', 'active', '2 weeks free',
  '1. Download Cursor from https://cursor.com
2. Sign up and select Start Pro Trial
3. No credit card required for trial
4. Includes unlimited GPT-4 completions during trial',
  'https://cursor.com'
),
(
  'GitHub Copilot',
  'Copilot Free for Open Source',
  'GitHub Copilot is free for verified open source maintainers. AI pair programming in your favorite IDE.',
  'code', 'active', 'Free for OSS maintainers',
  '1. Verify your open source maintainer status at https://github.com/settings/copilot
2. Must maintain a popular public repository
3. Apply through GitHub Copilot settings
4. Approval typically within 1 week',
  'https://github.com/features/copilot'
),
(
  'Replit',
  'Replit AI Pro Credits',
  'Get 3 months of Replit AI Pro including Ghostwriter code completion, generation, and debugging assistance.',
  'code', 'active', '3 months free',
  '1. Sign up at https://replit.com
2. Navigate to Account > Subscription
3. Enter promo code REPLITAI2026
4. AI Pro features activate immediately',
  'https://replit.com'
),
(
  'Sourcegraph',
  'Cody AI Assistant Credits',
  'Try Sourcegraph Cody AI assistant free for teams. Includes code search, AI chat, and autocomplete across your entire codebase.',
  'code', 'active', '3 months free for teams',
  '1. Visit https://sourcegraph.com/cody and click Get Started
2. Connect your code repositories
3. Apply code CODY-TEAM-FREE for 3 months free
4. Works with VS Code, JetBrains, and Neovim',
  'https://sourcegraph.com/cody'
),
(
  'Tabnine',
  'Tabnine Pro Developer License',
  'Get 6 months of Tabnine Pro AI code completions. Supports 30+ languages with privacy-focused local models.',
  'code', 'active', '6 months free',
  '1. Install Tabnine from your IDE marketplace
2. Create account at https://app.tabnine.com
3. Redeem code TABNINE-DEV in billing settings
4. Pro features including whole-line completions activate immediately',
  'https://tabnine.com'
),
(
  'JetBrains',
  'JetBrains AI Assistant Trial',
  'Extended 60-day trial of JetBrains AI Assistant. AI chat, code generation, and refactoring in all JetBrains IDEs.',
  'code', 'active', '60-day extended trial',
  '1. Open any JetBrains IDE (IntelliJ, PyCharm, WebStorm, etc.)
2. Go to Settings > Plugins and install AI Assistant
3. Log in with JetBrains account
4. Extended trial activates automatically for new users',
  'https://jetbrains.com/ai'
),
(
  'Windsurf',
  'Windsurf Pro Editor Credits',
  'Try Windsurf AI-powered code editor with 1 month of Pro tier. Includes Cascade AI flows and intelligent code generation.',
  'code', 'active', '1 month Pro free',
  '1. Download Windsurf from https://codeium.com/windsurf
2. Create an account and start the Pro trial
3. No credit card needed
4. Includes unlimited AI completions and Cascade flows',
  'https://codeium.com/windsurf'
),
(
  'Bolt',
  'Bolt AI App Builder Credits',
  'Get $50 in credits for Bolt AI full-stack app builder. Generate and deploy web apps from natural language prompts.',
  'code', 'active', '$50 builder credits',
  '1. Sign up at https://bolt.new
2. Credits are added to new accounts automatically
3. Each app generation uses approximately $1-5 in credits
4. Deploy directly to the cloud with one click',
  'https://bolt.new'
),
(
  'v0 by Vercel',
  'v0 Pro UI Generation',
  'Get 3 months of v0 Pro for AI-powered UI component generation. Create React components from text descriptions.',
  'code', 'active', '3 months Pro free',
  '1. Visit https://v0.dev and sign in with your Vercel account
2. Navigate to Settings > Billing
3. Apply promo code V0PRO2026
4. Unlimited generations for 3 months',
  'https://v0.dev'
),
(
  'Supermaven',
  'Supermaven Pro Code Completion',
  'Ultra-fast AI code completions with 1 month free Pro access. 300ms latency with 300,000 token context window.',
  'code', 'active', '1 month Pro free',
  '1. Install Supermaven from VS Code marketplace
2. Create account at https://supermaven.com
3. Free tier available, Pro trial starts automatically
4. Supports all major programming languages',
  'https://supermaven.com'
),
(
  'CodeRabbit',
  'CodeRabbit AI Code Review',
  'Free AI-powered code reviews for open source projects. Automated PR reviews with actionable suggestions.',
  'code', 'active', 'Free for open source',
  '1. Install CodeRabbit GitHub App at https://coderabbit.ai
2. Authorize access to your repositories
3. Free for all public repositories
4. AI reviews appear automatically on new PRs',
  'https://coderabbit.ai'
),
(
  'Continue',
  'Continue AI Dev Assistant',
  'Open-source AI code assistant with free access to multiple LLM providers. Works in VS Code and JetBrains.',
  'code', 'active', 'Free (open source)',
  '1. Install Continue from VS Code or JetBrains marketplace
2. Configure your preferred LLM provider (OpenAI, Anthropic, Ollama, etc.)
3. Use Tab for autocomplete and Cmd+L for chat
4. Fully open source at https://github.com/continuedev/continue',
  'https://continue.dev'
),
(
  'Devin',
  'Devin AI Engineer Beta (Ended)',
  'The Devin AI software engineer early access beta has concluded. Original participants retain access.',
  'code', 'expired', 'Beta access (ended)',
  '1. The early access beta is no longer accepting applications
2. Devin is now generally available with paid plans
3. Visit https://devin.ai for current pricing
4. Enterprise plans available for team deployments',
  'https://devin.ai'
),
(
  'Aider',
  'Aider Pro Cloud Credits (Ended)',
  'The Aider cloud-hosted AI pair programming credits program has ended.',
  'code', 'expired', '$100 credits (expired)',
  '1. This promotion has ended
2. Aider remains free as open-source CLI tool
3. Install via pip: pip install aider-chat
4. Bring your own API key for LLM providers',
  'https://aider.chat'
),
(
  'GitHub Copilot',
  'Copilot Workspace Preview (Ended)',
  'The GitHub Copilot Workspace technical preview invitation program has concluded.',
  'code', 'expired', 'Preview access (ended)',
  '1. The technical preview has ended
2. Copilot Workspace is now in general availability
3. Available to all GitHub Copilot subscribers
4. Visit https://github.com/features/copilot for plans',
  'https://github.com/features/copilot'
),
(
  'Replit',
  'Replit Agent Promo (Ended)',
  'The promotional Replit Agent credits for building full apps from prompts have expired.',
  'code', 'expired', '50 agent runs (expired)',
  '1. This promotion has ended
2. Replit Agent is available with Replit Core subscription
3. Visit https://replit.com/pricing for current plans
4. Free tier includes limited AI features',
  'https://replit.com'
),
(
  'Cursor',
  'Cursor Business Launch Offer',
  'Upcoming Cursor Business tier with team management, SSO, and centralized billing. Early adopter pricing available.',
  'code', 'coming_soon', '40% off first year',
  '1. Express interest at https://cursor.com/business
2. Early adopter pricing: 40% off the first year
3. Expected launch Q2 2026
4. Includes admin dashboard and team analytics',
  'https://cursor.com/business'
),
(
  'GitHub',
  'Copilot Workspace GA Bonus',
  'Bonus credits for GitHub Copilot Workspace general availability launch. Build entire features from issues.',
  'code', 'coming_soon', '100 free workspace sessions',
  '1. Available to existing Copilot subscribers at GA launch
2. Expected in Q2 2026
3. 100 free Workspace sessions upon activation
4. Check https://github.com/features/copilot for updates',
  'https://github.com/features/copilot'
),
(
  'Windsurf',
  'Windsurf Team Edition',
  'Upcoming team collaboration features for Windsurf with shared AI context and codebase understanding.',
  'code', 'coming_soon', '3 months free for teams',
  '1. Pre-register at https://codeium.com/windsurf/teams
2. Expected launch in March 2026
3. Includes shared AI context across team members
4. Free 3-month trial for early adopters',
  'https://codeium.com/windsurf'
),
(
  'JetBrains',
  'Junie AI Agent Preview',
  'JetBrains Junie autonomous coding agent coming to all JetBrains IDEs. Handle complex refactoring tasks autonomously.',
  'code', 'coming_soon', 'Free preview access',
  '1. Sign up for preview at https://jetbrains.com/junie
2. Currently in closed beta
3. Expected open preview in Q2 2026
4. Will be included with JetBrains AI subscription',
  'https://jetbrains.com/junie'
),

-- IMAGE category (20 items: 12 active, 4 expired, 4 coming_soon)
(
  'Midjourney',
  'Midjourney Basic Plan Trial',
  'Try Midjourney Basic plan with 200 image generations. Create stunning AI art through Discord or the web interface.',
  'image', 'active', '200 free generations',
  '1. Visit https://midjourney.com and sign in
2. New users receive 200 trial generations
3. Use /imagine command in Discord or the web app
4. No credit card required for trial',
  'https://midjourney.com'
),
(
  'Stability AI',
  'Stable Diffusion API Credits',
  'Get $50 in Stability AI API credits for Stable Diffusion XL, SD3, and Stable Video models.',
  'image', 'active', '$50 API credits',
  '1. Create an account at https://platform.stability.ai
2. Navigate to Account > Billing
3. New accounts receive $50 in free credits
4. Access SDXL, SD3, and video generation models',
  'https://platform.stability.ai'
),
(
  'Adobe Firefly',
  'Adobe Firefly Free Credits',
  'Get 25 monthly generative credits for Adobe Firefly. Create images, vectors, and text effects with AI.',
  'image', 'active', '25 credits/month free',
  '1. Sign in at https://firefly.adobe.com with your Adobe ID
2. Free plan includes 25 generative credits per month
3. Generate images, vectors, and text effects
4. Credits refresh monthly',
  'https://firefly.adobe.com'
),
(
  'Leonardo AI',
  'Leonardo AI Pro Trial',
  'Get 1 month of Leonardo AI Pro with 8,500 tokens daily. Create high-quality images with fine-tuned models.',
  'image', 'active', '1 month Pro free',
  '1. Sign up at https://leonardo.ai
2. Go to Settings > Subscription
3. Apply code LEOPRO2026 for free Pro month
4. Includes 8,500 daily tokens and priority generation',
  'https://leonardo.ai'
),
(
  'Ideogram',
  'Ideogram Plus Credits',
  'Try Ideogram Plus with 400 priority generations. Best-in-class text rendering in AI-generated images.',
  'image', 'active', '400 priority generations',
  '1. Create an account at https://ideogram.ai
2. Navigate to subscription settings
3. Enter code IDEO-PLUS for bonus generations
4. Priority queue access for faster generation',
  'https://ideogram.ai'
),
(
  'Playground AI',
  'Playground Pro Subscription',
  'Get 3 months of Playground Pro including 2,000 images per day and all premium filters and models.',
  'image', 'active', '3 months Pro free',
  '1. Sign up at https://playground.ai
2. Click Upgrade to Pro in your dashboard
3. Apply promo code PLAY2026
4. Generate up to 2,000 images per day',
  'https://playground.ai'
),
(
  'Black Forest Labs',
  'FLUX Model API Credits',
  'Get $75 in API credits for FLUX image generation models. State-of-the-art quality and prompt adherence.',
  'image', 'active', '$75 API credits',
  '1. Register at https://api.bfl.ml
2. New developer accounts receive $75 in credits
3. Access FLUX Pro and FLUX Dev models
4. Integrate via REST API or Python SDK',
  'https://api.bfl.ml'
),
(
  'Canva',
  'Canva Pro AI Features',
  'Get 3 months of Canva Pro with AI-powered Magic Studio. Includes text-to-image, background removal, and Magic Eraser.',
  'image', 'active', '3 months Pro free',
  '1. Visit https://canva.com and create an account
2. Navigate to Pricing and select Pro
3. Use code CANVAAI3 at checkout
4. Access all Magic Studio AI features immediately',
  'https://canva.com'
),
(
  'RunwayML',
  'Runway Gen-3 Credits',
  'Get 125 credits for Runway Gen-3 Alpha video and image generation. Create cinematic AI-generated content.',
  'image', 'active', '125 free credits',
  '1. Sign up at https://runwayml.com
2. New accounts receive 125 free credits
3. Use credits for Gen-3 Alpha video generation
4. Credits do not expire',
  'https://runwayml.com'
),
(
  'Pika',
  'Pika Pro Video Generation',
  'Try Pika Pro with 250 monthly credits for AI video generation and editing from text and images.',
  'image', 'active', '250 credits/month free',
  '1. Sign up at https://pika.art
2. Free tier includes 250 monthly credits
3. Generate videos from text prompts or images
4. Download in HD quality',
  'https://pika.art'
),
(
  'Krea AI',
  'Krea Pro Real-Time Generation',
  'Get 2 months of Krea Pro for real-time AI image generation, upscaling, and enhancement tools.',
  'image', 'active', '2 months Pro free',
  '1. Create account at https://krea.ai
2. Go to Settings > Subscription
3. Apply code KREA2FREE for 2 months Pro
4. Includes real-time generation and 4K upscaling',
  'https://krea.ai'
),
(
  'NightCafe',
  'NightCafe Creator Credits',
  'Get 100 bonus credits for NightCafe AI art generation. Access multiple algorithms including SDXL and DALL-E.',
  'image', 'active', '100 bonus credits',
  '1. Sign up at https://nightcafe.studio
2. New accounts receive 5 free credits daily
3. Enter code NIGHTBONUS for 100 additional credits
4. Use credits across all generation algorithms',
  'https://nightcafe.studio'
),
(
  'DALL-E',
  'DALL-E Free Credits Bundle (Ended)',
  'The OpenAI DALL-E bonus credits promotion for new users has expired.',
  'image', 'expired', '50 credits (expired)',
  '1. This promotion has ended
2. DALL-E is now accessible via ChatGPT Plus subscription
3. API access available at https://platform.openai.com
4. Free tier still available with limited generations',
  'https://openai.com/dall-e'
),
(
  'Stability AI',
  'DreamStudio Launch Promo (Ended)',
  'The DreamStudio launch promotion with bonus generation credits has concluded.',
  'image', 'expired', '500 generations (expired)',
  '1. This launch promotion has ended
2. DreamStudio has been replaced by the Stability AI platform
3. Visit https://platform.stability.ai for current offerings
4. API credits available for purchase',
  'https://platform.stability.ai'
),
(
  'Clipdrop',
  'Clipdrop Pro Promo (Ended)',
  'The Stability AI Clipdrop Pro free trial promotion has ended following the platform restructuring.',
  'image', 'expired', '3 months free (expired)',
  '1. This offer is no longer available
2. Clipdrop features have been integrated into Stability AI platform
3. Visit https://stability.ai for current tools
4. Some features remain free with limitations',
  'https://stability.ai'
),
(
  'Midjourney',
  'Midjourney v7 Early Access (Ended)',
  'The Midjourney v7 beta early access program for annual subscribers has concluded.',
  'image', 'expired', 'Early access (ended)',
  '1. The v7 beta has concluded
2. Midjourney v7 is now available to all subscribers
3. Visit https://midjourney.com for current plans
4. Annual subscribers receive priority for future betas',
  'https://midjourney.com'
),
(
  'Adobe',
  'Firefly Video Generation',
  'Upcoming Adobe Firefly video generation model. Create short video clips from text prompts within Creative Cloud.',
  'image', 'coming_soon', '50 free video credits at launch',
  '1. Expected launch in Q2 2026
2. Will be available to all Creative Cloud subscribers
3. 50 free video generation credits at launch
4. Follow updates at https://firefly.adobe.com',
  'https://firefly.adobe.com'
),
(
  'Midjourney',
  'Midjourney Web Editor Launch',
  'Full-featured web-based image editor with AI inpainting, outpainting, and style transfer coming soon.',
  'image', 'coming_soon', 'Free with subscription',
  '1. Coming to all Midjourney subscribers
2. Expected in Q2 2026
3. Will include AI inpainting and outpainting
4. No additional cost for existing subscribers',
  'https://midjourney.com'
),
(
  'Stability AI',
  'Stable Diffusion 4 Preview',
  'Be among the first to access Stable Diffusion 4 with dramatically improved quality and consistency.',
  'image', 'coming_soon', '1,000 free generations at launch',
  '1. Join waitlist at https://stability.ai/sd4-preview
2. Expected preview in Q3 2026
3. 1,000 free generations for preview participants
4. New architecture with improved coherence',
  'https://stability.ai'
),
(
  'RunwayML',
  'Runway Gen-4 Alpha Access',
  'Early access to Gen-4 model with unprecedented video quality and longer generation lengths.',
  'image', 'coming_soon', 'Priority access + 200 credits',
  '1. Express interest at https://runwayml.com/gen4
2. Priority given to existing Pro subscribers
3. Expected Q3 2026
4. 200 bonus credits for early access participants',
  'https://runwayml.com'
),

-- CLOUD category (20 items: 12 active, 4 expired, 4 coming_soon)
(
  'AWS',
  'AWS Activate Startup Credits',
  'Get up to $100,000 in AWS credits for startups. Covers EC2, S3, Lambda, Bedrock, and all AWS services.',
  'cloud', 'active', 'Up to $100,000 credits',
  '1. Apply at https://aws.amazon.com/activate
2. Must be associated with an approved accelerator, incubator, or VC
3. Submit startup details and business plan
4. Credits valid for 2 years after approval',
  'https://aws.amazon.com/activate'
),
(
  'Google Cloud',
  'Google for Startups Cloud Credits',
  'Get up to $200,000 in Google Cloud credits over 2 years. Includes access to Vertex AI and all GCP services.',
  'cloud', 'active', 'Up to $200,000 credits',
  '1. Apply at https://cloud.google.com/startup
2. Must be a seed to Series A startup
3. Application review takes 1-2 weeks
4. Credits distributed over 2 years',
  'https://cloud.google.com/startup'
),
(
  'Microsoft Azure',
  'Azure for Startups Credits',
  'Get up to $150,000 in Azure credits including access to Azure OpenAI Service, Cosmos DB, and all Azure services.',
  'cloud', 'active', 'Up to $150,000 credits',
  '1. Apply through Microsoft for Startups Founders Hub at https://foundershub.startups.microsoft.com
2. Available for startups at any stage
3. Includes free access to GitHub Enterprise and Microsoft 365
4. Credits scale with startup stage',
  'https://foundershub.startups.microsoft.com'
),
(
  'Vercel',
  'Vercel Pro Free for Open Source',
  'Vercel Pro is free for open source projects. Includes preview deployments, analytics, and edge functions.',
  'cloud', 'active', 'Free Pro tier',
  '1. Deploy your open source project on https://vercel.com
2. Go to Settings > Billing
3. Apply for open source sponsorship
4. Approval typically within 3 business days',
  'https://vercel.com'
),
(
  'Cloudflare',
  'Cloudflare Workers AI Free Tier',
  'Run AI models on Cloudflare edge network with 10,000 free neurons per day. No cold starts.',
  'cloud', 'active', '10,000 neurons/day free',
  '1. Sign up at https://dash.cloudflare.com
2. Navigate to Workers & Pages > AI
3. Free tier includes 10,000 neurons per day
4. Access Llama, Whisper, and Stable Diffusion models at the edge',
  'https://cloudflare.com/developer-platform/ai'
),
(
  'DigitalOcean',
  'DigitalOcean Startup Credits',
  'Get $10,000 in DigitalOcean credits for startups through the Hatch program. Covers Droplets, Kubernetes, and managed databases.',
  'cloud', 'active', '$10,000 credits',
  '1. Apply at https://digitalocean.com/hatch
2. Must be a startup less than 5 years old
3. Revenue must be under $10M annually
4. Credits valid for 12 months',
  'https://digitalocean.com/hatch'
),
(
  'Fly.io',
  'Fly.io Startup Plan',
  'Get $500 in Fly.io credits for deploying apps globally. Includes GPU instances for AI workloads.',
  'cloud', 'active', '$500 credits',
  '1. Sign up at https://fly.io
2. Contact startups@fly.io with your project details
3. Credits applied within 1 week of approval
4. Valid for all Fly.io services including GPU machines',
  'https://fly.io'
),
(
  'Railway',
  'Railway Pro Startup Credits',
  'Get $500 in Railway credits for deploying web apps, databases, and background workers.',
  'cloud', 'active', '$500 credits',
  '1. Sign up at https://railway.app
2. Navigate to Settings > Billing
3. Apply code RAILWAY-START for $500 bonus
4. Credits cover all Railway services',
  'https://railway.app'
),
(
  'Render',
  'Render Startup Credits',
  'Get $500 in Render credits for cloud hosting. Covers web services, databases, and background workers.',
  'cloud', 'active', '$500 credits',
  '1. Sign up at https://render.com
2. Email startups@render.com with your project details
3. Must be a startup less than 3 years old
4. Credits valid for 12 months',
  'https://render.com'
),
(
  'Supabase',
  'Supabase Pro Free for Startups',
  'Get 12 months of Supabase Pro free for startups. Includes 8GB database, 250GB bandwidth, and 100GB storage.',
  'cloud', 'active', '12 months Pro free',
  '1. Sign up at https://supabase.com/dashboard
2. Apply for startup program at https://supabase.com/startups
3. Must be a seed to Series A startup
4. Pro features activate immediately upon approval',
  'https://supabase.com/startups'
),
(
  'Neon',
  'Neon Serverless Postgres Credits',
  'Get $300 in Neon serverless Postgres credits. Includes branching, autoscaling, and point-in-time recovery.',
  'cloud', 'active', '$300 credits',
  '1. Sign up at https://neon.tech
2. Create your first project
3. Apply startup credit code NEON-START
4. Credits cover compute and storage costs',
  'https://neon.tech'
),
(
  'Netlify',
  'Netlify Pro Open Source Plan',
  'Free Netlify Pro for open source projects. Includes build minutes, bandwidth, and serverless functions.',
  'cloud', 'active', 'Free Pro for OSS',
  '1. Deploy your open source project on https://netlify.com
2. Apply for open source plan in team settings
3. Must be a genuine open source project
4. Includes 25,000 build minutes and 1TB bandwidth',
  'https://netlify.com'
),
(
  'Heroku',
  'Heroku Startup Program (Ended)',
  'The Heroku for Startups credit program has been discontinued.',
  'cloud', 'expired', '$10,000 credits (expired)',
  '1. This program has been discontinued
2. Heroku now offers standard paid plans only
3. Visit https://heroku.com/pricing for current options
4. Consider alternatives like Railway or Render',
  'https://heroku.com'
),
(
  'PlanetScale',
  'PlanetScale Startup Credits (Ended)',
  'The PlanetScale startup credits program has concluded following the company pivot to enterprise-only.',
  'cloud', 'expired', '$5,000 credits (expired)',
  '1. This program has ended
2. PlanetScale now focuses on enterprise customers
3. Hobby tier has been discontinued
4. Consider Neon or Supabase as alternatives',
  'https://planetscale.com'
),
(
  'AWS',
  'AWS GameDay AI Credits (Ended)',
  'The AWS GameDay promotional AI/ML credits event has concluded.',
  'cloud', 'expired', '$500 ML credits (expired)',
  '1. This GameDay event has ended
2. Check https://aws.amazon.com/events for upcoming events
3. AWS Activate is available for ongoing startup credits
4. Free tier ML services still available',
  'https://aws.amazon.com'
),
(
  'Google Cloud',
  'GCP Next 2025 Credits (Ended)',
  'The Google Cloud Next 2025 attendee credits promotion has expired.',
  'cloud', 'expired', '$1,000 credits (expired)',
  '1. This promotion has expired
2. Credits were valid for 90 days post-event
3. Apply for Google for Startups for ongoing credits
4. Visit https://cloud.google.com/free for free tier',
  'https://cloud.google.com'
),
(
  'Vercel',
  'Vercel AI SDK Enterprise',
  'Upcoming enterprise tier for Vercel AI SDK with dedicated support, custom model routing, and SLAs.',
  'cloud', 'coming_soon', 'Custom enterprise pricing',
  '1. Express interest at https://vercel.com/contact/ai-enterprise
2. Expected launch in Q2 2026
3. Includes dedicated solutions architect
4. Custom SLAs and priority support',
  'https://vercel.com'
),
(
  'Cloudflare',
  'Cloudflare AI Gateway Pro',
  'Upcoming Cloudflare AI Gateway with advanced caching, rate limiting, and analytics for AI API calls.',
  'cloud', 'coming_soon', 'Free tier + Pro at $50/month',
  '1. Currently in beta at https://developers.cloudflare.com/ai-gateway
2. GA expected in Q2 2026
3. Free tier includes 100,000 requests/month
4. Pro tier adds advanced analytics and caching',
  'https://developers.cloudflare.com/ai-gateway'
),
(
  'Fly.io',
  'Fly.io GPU Cloud Expansion',
  'Upcoming GPU cloud regions with A100 and H100 instances for AI workloads at competitive prices.',
  'cloud', 'coming_soon', '$1,000 GPU credits at launch',
  '1. Join GPU waitlist at https://fly.io/gpu
2. New regions launching Q2 2026
3. $1,000 in GPU credits for early adopters
4. Available in US, EU, and APAC regions',
  'https://fly.io/gpu'
),
(
  'Supabase',
  'Supabase Vector 2.0',
  'Enhanced pgvector support with automatic embeddings, hybrid search, and RAG pipeline tools.',
  'cloud', 'coming_soon', 'Free with Pro plan',
  '1. Available to all Pro and Enterprise customers at launch
2. Expected in Q2 2026
3. Includes automatic embedding generation
4. Pre-register at https://supabase.com/vector',
  'https://supabase.com/vector'
),

-- API category (20 items: 12 active, 4 expired, 4 coming_soon)
(
  'OpenAI',
  'OpenAI API Free Credits',
  'New OpenAI API accounts receive $5 in free credits. Access GPT-4o, DALL-E, Whisper, and TTS models.',
  'api', 'active', '$5 free credits',
  '1. Create an account at https://platform.openai.com
2. Navigate to Settings > Billing
3. New accounts receive $5 in free credits
4. Credits expire after 3 months if unused',
  'https://platform.openai.com'
),
(
  'Anthropic',
  'Anthropic API Build Credits',
  'Get $25 in free Anthropic API credits for building with Claude. Access Claude 3.5 Sonnet and Haiku models.',
  'api', 'active', '$25 free credits',
  '1. Sign up at https://console.anthropic.com
2. Complete the developer onboarding
3. New accounts receive $25 in build credits
4. Access all Claude models via the Messages API',
  'https://console.anthropic.com'
),
(
  'Hugging Face',
  'Hugging Face Pro Inference',
  'Get 2 months of Hugging Face Pro with access to Inference Endpoints and accelerated model downloads.',
  'api', 'active', '2 months Pro free',
  '1. Sign up at https://huggingface.co
2. Navigate to Settings > Billing
3. Apply code HFPRO2026 for 2 months free
4. Includes dedicated Inference Endpoints and ZeroGPU',
  'https://huggingface.co'
),
(
  'Replicate',
  'Replicate Startup Credits',
  'Get $100 in Replicate API credits for running open-source AI models. Access Llama, SDXL, Whisper, and more.',
  'api', 'active', '$100 API credits',
  '1. Sign up at https://replicate.com
2. Go to Billing > Credits
3. Apply startup code REP-START for $100 bonus
4. Run any model from the Replicate model catalog',
  'https://replicate.com'
),
(
  'Pinecone',
  'Pinecone Vector DB Free Tier',
  'Free Pinecone serverless tier with 100K vectors and 1M read units per month for vector search.',
  'api', 'active', 'Free tier (100K vectors)',
  '1. Create an account at https://pinecone.io
2. Create a serverless index in the free tier
3. Free includes 100K vectors with 1M read units
4. No credit card required',
  'https://pinecone.io'
),
(
  'Weaviate',
  'Weaviate Cloud Free Tier',
  'Free Weaviate Cloud sandbox with vector search and RAG capabilities. Includes 50K objects.',
  'api', 'active', 'Free sandbox',
  '1. Sign up at https://console.weaviate.cloud
2. Create a free sandbox cluster
3. Includes 50K objects with vector search
4. Sandbox auto-deletes after 14 days of inactivity',
  'https://console.weaviate.cloud'
),
(
  'AssemblyAI',
  'AssemblyAI Speech-to-Text Credits',
  'Get $50 in AssemblyAI API credits for speech-to-text, speaker diarization, and audio intelligence.',
  'api', 'active', '$50 API credits',
  '1. Sign up at https://assemblyai.com
2. New accounts receive $50 in free credits
3. Supports 100+ languages
4. Includes real-time and batch transcription',
  'https://assemblyai.com'
),
(
  'Deepgram',
  'Deepgram Speech API Credits',
  'Get $200 in Deepgram API credits for real-time and pre-recorded speech-to-text with industry-leading accuracy.',
  'api', 'active', '$200 free credits',
  '1. Sign up at https://deepgram.com
2. New accounts receive $200 in free credits
3. Access Nova-2 model with 90%+ accuracy
4. Credits valid for 12 months',
  'https://deepgram.com'
),
(
  'ElevenLabs',
  'ElevenLabs Voice AI Credits',
  'Get 10,000 free characters per month with ElevenLabs text-to-speech. Access lifelike AI voices.',
  'api', 'active', '10,000 chars/month free',
  '1. Create account at https://elevenlabs.io
2. Free tier includes 10,000 characters per month
3. Access multilingual voices and voice cloning
4. No credit card required',
  'https://elevenlabs.io'
),
(
  'Google Vertex AI',
  'Vertex AI Free Trial Credits',
  'Get $300 in Google Cloud credits applicable to Vertex AI. Access Gemini, PaLM, and custom model training.',
  'api', 'active', '$300 GCP credits',
  '1. Sign up for Google Cloud at https://cloud.google.com/free
2. New accounts receive $300 in credits
3. Apply credits to Vertex AI services
4. Credits valid for 90 days',
  'https://cloud.google.com/vertex-ai'
),
(
  'Unstructured',
  'Unstructured API Free Tier',
  'Free tier for Unstructured document parsing API. Process PDFs, images, and documents into structured data.',
  'api', 'active', '1,000 pages/month free',
  '1. Sign up at https://unstructured.io
2. Get your API key from the dashboard
3. Free tier includes 1,000 pages per month
4. Supports PDF, DOCX, PPTX, images, and more',
  'https://unstructured.io'
),
(
  'Resend',
  'Resend Email API Free Tier',
  'Send up to 3,000 emails per month free with Resend. Modern email API built for developers.',
  'api', 'active', '3,000 emails/month free',
  '1. Sign up at https://resend.com
2. Add and verify your domain
3. Free tier includes 3,000 emails per month
4. Includes React Email component library',
  'https://resend.com'
),
(
  'Twilio',
  'Twilio AI Assistant Credits (Ended)',
  'The Twilio AI Assistant early access credits program has concluded.',
  'api', 'expired', '$100 credits (expired)',
  '1. This program has ended
2. Twilio AI Assistant is now generally available
3. Visit https://twilio.com/ai for current pricing
4. Free tier available with limited usage',
  'https://twilio.com'
),
(
  'Cohere',
  'Cohere Embed v3 Launch Credits (Ended)',
  'The promotional credits for the Cohere Embed v3 launch have expired.',
  'api', 'expired', '$50 credits (expired)',
  '1. This launch promotion has ended
2. Embed v3 is now available at standard pricing
3. Visit https://cohere.com/pricing for current rates
4. Free trial tier still available',
  'https://cohere.com'
),
(
  'LangChain',
  'LangSmith Early Adopter Credits (Ended)',
  'The LangSmith early adopter program with bonus tracing credits has concluded.',
  'api', 'expired', '1M free traces (expired)',
  '1. This early adopter program has ended
2. LangSmith now offers standard free and paid tiers
3. Free tier includes 5,000 traces per month
4. Visit https://smith.langchain.com for current plans',
  'https://smith.langchain.com'
),
(
  'Pinecone',
  'Pinecone Pods Promo (Ended)',
  'The Pinecone pod-based deployment promotional credits have expired following the serverless migration.',
  'api', 'expired', '$100 credits (expired)',
  '1. This promotion has ended
2. Pinecone has transitioned to serverless architecture
3. Pod-based deployments are being phased out
4. Use the free serverless tier instead',
  'https://pinecone.io'
),
(
  'OpenAI',
  'Realtime API Startup Credits',
  'Upcoming credits program for OpenAI Realtime API. Build voice-enabled AI applications with low latency.',
  'api', 'coming_soon', '$250 Realtime API credits',
  '1. Program launching Q2 2026
2. Pre-register at https://platform.openai.com/realtime
3. Must have existing OpenAI API account
4. Credits specifically for Realtime API usage',
  'https://platform.openai.com'
),
(
  'Anthropic',
  'Claude MCP Toolkit Credits',
  'Upcoming credits for Model Context Protocol integrations. Build agents with tool use and external data sources.',
  'api', 'coming_soon', '$100 bonus credits',
  '1. Expected launch in Q2 2026
2. Sign up for updates at https://anthropic.com/mcp
3. Must have existing Anthropic API account
4. Credits for MCP-enabled API calls',
  'https://anthropic.com/mcp'
),
(
  'ElevenLabs',
  'ElevenLabs Conversational AI',
  'Upcoming real-time conversational AI voice API for building interactive voice agents and assistants.',
  'api', 'coming_soon', '100 hours free at launch',
  '1. Join waitlist at https://elevenlabs.io/conversational-ai
2. Expected GA in Q2 2026
3. 100 free hours of conversational AI at launch
4. Sub-500ms latency for real-time conversations',
  'https://elevenlabs.io'
),
(
  'Deepgram',
  'Deepgram Aura TTS Launch',
  'Upcoming Aura text-to-speech API with natural-sounding voices and real-time streaming support.',
  'api', 'coming_soon', '$100 TTS credits at launch',
  '1. Pre-register at https://deepgram.com/aura
2. Expected launch in Q2 2026
3. $100 in TTS credits for early adopters
4. Real-time streaming with sub-300ms latency',
  'https://deepgram.com'
);
