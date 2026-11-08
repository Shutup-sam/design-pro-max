---
name: design-pro-max
description: "The complete, all-in-one UI/UX design intelligence, design system, frontend styling, brand identity, generative UI, creative assets, and quality audit suite for AI agents. Combines 84 UI styles, 192 color palettes, 74 font pairings, 98 UX guidelines, 22 technology stacks, 3-layer design tokens, Tailwind CSS + shadcn/ui, Impeccable UX/craft audits, interactive Generative UI widgets, logo & icon generation, multi-format social banners, and data-driven pitch decks with Chart.js."
argument-hint: "[action: audit | style | tokens | brand | logo | banner | slides | widget] [target or description]"
license: MIT
metadata:
  version: "2.0.0"
  author: "Community"
  categories: ["ui-ux", "design-system", "frontend", "brand", "generative-ui", "creative", "audit"]
---

# Design Pro Max - All-in-One Design Intelligence & Studio

The unified design authority for AI agents. Bridges high-level brand strategy, systematic design token architecture, modern UI component styling, interactive generative widgets, creative media generation, and rigorous heuristic quality audits into a single cohesive workflow.

---

## The 9 Core Capabilities

```
┌──────────────────────────────────────────────────────────────────────────────────┐
│                             DESIGN PRO MAX ARCHITECTURE                         │
├──────────────────────────────────────────────────────────────────────────────────┤
│ 1. BRAND & IDENTITY       │ Voice, tone, messaging pillars, brand guidelines     │
│ 2. DESIGN TOKENS          │ 3-layer architecture (Primitive → Semantic → Comp)   │
│ 3. DESIGN INTELLIGENCE    │ 84 styles, 192 palettes, 74 fonts, 22 tech stacks    │
│ 4. COMPONENT & UI STYLING │ Tailwind CSS, shadcn/ui accessible components        │
│ 5. GENERATIVE UI          │ Sandboxed interactive chat widgets & HTML artifacts  │
│ 6. LOGO & ICON STUDIO     │ 55 logo styles, 15 SVG icon styles, 50 CIP mockups   │
│ 7. BANNER & SOCIAL MEDIA  │ Multi-platform banners (10 platforms, 22 styles)     │
│ 8. STRATEGIC SLIDE DECKS  │ Data-driven HTML presentations with Chart.js         │
│ 9. IMPECCABLE AUDIT & QA  │ Heuristic UX checks (98 rules), WCAG, anti-patterns  │
└──────────────────────────────────────────────────────────────────────────────────┘
```

---

## When to Apply

Use this skill whenever the task touches **visual aesthetics, frontend code, branding, interaction design, creative collateral, or UX quality**:
- Building new pages, apps, or refactoring UI components
- Selecting color palettes, typography scales, spacing systems, and CSS variables
- Developing brand style guides, tone-of-voice frameworks, and logos
- Styling with Tailwind CSS and adding shadcn/ui components
- Rendering interactive inline HTML preview widgets or standalone dashboards
- Designing banners for social media (X, LinkedIn, IG, YouTube), ads, or web heroes
- Creating investor pitch decks or strategic presentations with Chart.js
- Auditing UI for accessibility, contrast (WCAG AA/AAA), cumulative layout shift (CLS), or design anti-patterns

---

## Quick-Dispatch Commands

| Intent / Action | CLI / Tooling Command | Reference Guide |
|---|---|---|
| **Search UI Style** | `python scripts/search.py "<query>" --domain style` | `references/quick-reference.md` |
| **Search Color Palette** | `python scripts/search.py "<mood/industry>" --domain color` | `references/color-palette-management.md` |
| **Search Tech Stack** | `python scripts/search.py "<term>" --stack <react\|nextjs\|vue\|svelte\|...>` | `references/pro-rules.md` |
| **Generate Design System** | `python scripts/search.py "<project>" --design-system --persist` | `references/token-architecture.md` |
| **Tailwind Config** | `python scripts/tailwind_config_gen.py --framework <nextjs\|react\|vue>` | `references/tailwind-customization.md` |
| **Add shadcn Component** | `python scripts/shadcn_add.py <button\|dialog\|table\|...>` | `references/shadcn-components.md` |
| **Impeccable Context** | `node scripts/context.mjs --target <file>` | `reference/craft-floor.md` |
| **UX & Anti-Pattern Audit** | `node scripts/detector/cli/main.mjs <target>` | `reference/audit.md` |
| **Logo Design Brief** | `python scripts/logo/search.py "<industry>" --design-brief` | `references/logo-prompt-engineering.md` |
| **Corporate Identity (CIP)** | `python scripts/cip/search.py "<industry>" --cip-brief -b "<Brand>"` | `references/cip-mockups.md` |
| **Slide Search & Strategy** | `python scripts/search-slides.py "<topic>"` | `references/slide-strategies.md` |
| **Generate Slide Deck** | `python scripts/generate-slide.py --topic "<topic>" --count 5` | `references/html-template.md` |
| **Sync Brand to Tokens** | `node scripts/sync-brand-to-tokens.cjs` | `references/brand-guideline-template.md` |

---

## Domain Workflows

### 1. Brand Identity & Strategy
- Define brand voice, tone spectrum, and messaging frameworks before writing copy.
- Validate assets against brand consistency rules: `node scripts/validate-asset.cjs <path>`.
- Use `templates/brand-guidelines-starter.md` as the baseline specification.
- Reference: `references/voice-framework.md` and `references/consistency-checklist.md`.

### 2. Design Tokens (3-Tier Architecture)
Always structure design tokens in three strict layers:
1. **Primitive Tokens**: Raw values (e.g., `color-blue-500: #3b82f6`, `space-4: 16px`).
2. **Semantic Tokens**: Purpose-driven aliases (e.g., `color-surface-primary`, `color-action-hover`).
3. **Component Tokens**: Scoped component definitions (e.g., `button-primary-bg: var(--color-action-primary)`).
- Starter file: `templates/design-tokens-starter.json`.
- Reference: `references/token-architecture.md`, `references/semantic-tokens.md`.

### 3. Component & Frontend UI Styling
- **Tailwind CSS**: Use semantic utility classes (`bg-card`, `text-foreground`, `border-border`). Avoid hardcoded arbitrary values or raw hex colors directly in components.
- **shadcn/ui**: Add accessible Radix-backed primitives via `python scripts/shadcn_add.py <component>`.
- **Canvas Typography**: Curated collection of 80+ high-end typefaces available in `canvas-fonts/` for poster/graphic rendering.
- Reference: `references/shadcn-theming.md` and `references/tailwind-utilities.md`.

### 4. Generative UI (Interactive Chat Widgets & Artifacts)
- Render self-contained interactive HTML/Tailwind widgets directly in chat or side-pane artifacts.
- Use allowlisted CDN Tailwind: `<script src="https://www.gstatic.com/antigravity/web/dev/tailwindcss.min.js"></script>`.
- Inherit host CSS variables (`--background`, `--card`, `--foreground`, `--border`, `--primary`).
- Sizing constraints:
  - **Inline Chat Widgets (`<agent-embed>`)**: Keep under 500px height. Set `<body class="bg-transparent ...">`.
  - **Standalone Artifacts**: Full viewport dashboards, use `bg-[var(--background)]`.
  - Never use `h-screen`, `min-h-screen`, or `100vh` on top-level embedded containers.
- Reference: `references/generative-ui.md`.

### 5. Creative Assets (Logos, Icons & CIP)
- **Logos**: Explore 55 visual styles (minimalist, negative space, geometric, emblem, mascot). Use `python scripts/logo/search.py`.
- **Icons**: 15 distinct SVG icon styles (duotone, linear, glassmorphic, neo-brutalist). Never use emoji as UI icons.
- **CIP (Corporate Identity Program)**: 50 deliverables covering business cards, envelopes, vehicle wraps, uniforms, and mockups.
- Reference: `references/logo-color-psychology.md` and `references/icon-design.md`.

### 6. Banner & Social Creative Studio
- Multi-format generation for 10 platforms: X/Twitter, LinkedIn, Instagram, YouTube, Facebook, Pinterest, Google Display, Web Hero, and Print.
- 22 art direction styles: glassmorphism, neo-brutalism, bold typography, duotone, editorial, 3D, minimalist.
- Reference: `references/banner-sizes-and-styles.md`.

### 7. Strategic Slide Presentations
- High-impact data-driven HTML slide decks with Chart.js and responsive typography.
- Persuasive copywriting patterns (PAS, AIDA, Before-After-Bridge, Star-Story-Solution).
- Reference: `references/layout-patterns.md` and `references/slide-strategies.md`.

### 8. Impeccable Heuristic Audit & Craft Floor
- Strict quality floor applied before declaring UI complete:
  - **Accessibility**: Minimum 4.5:1 text contrast, visible focus rings, aria-labels for icon buttons.
  - **Touch Targets**: Minimum 44×44px interactive areas, 8px+ touch separation.
  - **Performance**: Zero Cumulative Layout Shift (CLS < 0.1), WebP/AVIF formats, reserved image dimensions.
  - **Motion**: Purposeful 150–300ms transitions with reduced-motion media query support.
  - **Typography**: Minimum 16px body, 1.5 line height, never use sub-12px microtext.
- Reference: `reference/craft-floor.md` and `references/quick-reference.md`.

---

## Directory Overview

```
design-pro-max/
├── SKILL.md                 # Master skill prompt and instructions
├── README.md                # Open-source GitHub documentation & quickstart
├── reference -> references  # Symlink for backward & cross-platform compatibility
├── references/              # 87 comprehensive design & UX guides
│   ├── quick-reference.md   # Priority 1→10 UX rules & checklist
│   ├── craft-floor.md       # Impeccable craft floor & anti-pattern bans
│   ├── token-architecture.md# 3-tier token system
│   ├── generative-ui.md     # Interactive widget guidelines
│   └── ...
├── scripts/                 # 64 CLI tools and automation scripts
│   ├── search.py            # Design database query tool
│   ├── tailwind_config_gen.py
│   ├── shadcn_add.py
│   ├── context.mjs          # Impeccable context resolver
│   ├── cip/ & logo/ & icon/ # Asset generators
│   └── detector/            # Automated anti-pattern & audit engine
├── data/                    # 25 datasets (styles, palettes, tech stacks, UX rules)
├── templates/               # Starter templates (tokens, brand guidelines)
├── canvas-fonts/            # 81 curated typography fonts
└── agents/                  # Impeccable agent specifications
```
