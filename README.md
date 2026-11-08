# 🎨 Design Pro Max

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Compatible with Antigravity](https://img.shields.io/badge/Compatible-Google%20Antigravity-4285F4.svg)](https://antigravity.google)
[![Compatible with Claude Code](https://img.shields.io/badge/Compatible-Claude%20Code-D97706.svg)](https://docs.anthropic.com/en/docs/agents-and-tools/claude-code)
[![Compatible with Cursor](https://img.shields.io/badge/Compatible-Cursor%20IDE-000000.svg)](https://cursor.com)
[![Compatible with Windsurf](https://img.shields.io/badge/Compatible-Windsurf-0284C7.svg)](https://codeium.com/windsurf)

**The complete, all-in-one UI/UX design intelligence, design system, frontend styling, brand identity, generative UI, creative assets, and quality audit suite for AI coding agents.**

Design Pro Max combines 9 distinct design powerhouses into a single, cohesive open-source skill that equips your AI assistant (Google Antigravity, Claude Code, Cursor, Windsurf, OpenCode, Roo Code) with human-level design director intelligence.

---

## ⚡ What's Inside

| Domain | What It Powers | Assets & Datasets |
|---|---|---|
| **🎨 Design Intelligence** | 84 visual styles, 192 color palettes, 74 font pairings, 192 product archetypes | 22 tech stack rules (React, Next.js, Svelte, Vue, SwiftUI, Flutter, etc.) |
| **🔍 Impeccable Audit & QA** | 98 heuristic UX rules, anti-pattern scanner, contrast verification, visual hierarchy | Heuristic audit engine, craft floor standards, automated AST & CSS checks |
| **🧩 Modern UI Styling** | Tailwind CSS theme generator, accessible shadcn/ui components | 80+ curated typography fonts (`canvas-fonts/`), responsive utilities |
| **✨ Generative UI** | Interactive inline chat widgets (`<agent-embed>`) & responsive standalone artifacts | Sandboxed HTML/Tailwind templates, host CSS variable adapters |
| **🏷️ Brand & Voice** | Tone spectrum, messaging pillars, brand voice frameworks, asset validation | Brand guideline starters, automated brand-to-tokens sync scripts |
| **📐 Design Token System** | 3-tier token architecture (Primitive → Semantic → Component), CSS variables | Token generator, validator, and starter schema |
| **💎 Logo & Icon Studio** | 55 logo styles, color psychology, 15 SVG icon styles, 50 CIP mockups | Automated logo & CIP brief search tools and prompt engineering guides |
| **📢 Banner & Social Creative** | Multi-platform banners (X/Twitter, LinkedIn, IG, YouTube, Web Hero, Ads, Print) | 22 creative styles, platform dimension specs |
| **📊 Strategic Slide Decks** | High-impact data-driven HTML presentations with Chart.js | Layout patterns, copywriting formulas (PAS, AIDA, Before-After) |

---

## 🚀 Quick Installation

### One-Line Install (Automatic Harness Detection)
```bash
curl -fsSL https://raw.githubusercontent.com/shutup-sam/design-pro-max/main/install.sh | bash
```

### Or Manual Installation by Agent

#### For Google Antigravity
```bash
# Global skills (accessible across all workspaces)
git clone https://github.com/shutup-sam/design-pro-max.git ~/.agents/skills/design-pro-max
```

#### For Claude Code
```bash
git clone https://github.com/shutup-sam/design-pro-max.git ~/.claude/skills/design-pro-max
```

#### For Cursor / Windsurf / Project-level
```bash
# In your project root
mkdir -p .agents/skills
git clone https://github.com/shutup-sam/design-pro-max.git .agents/skills/design-pro-max
```

---

## 🛠️ CLI & Search Tooling

Design Pro Max ships with ready-to-use search and generation scripts:

### 1. UI & Design Intelligence Search
Query styles, color palettes, UX rules, or stack-specific best practices:
```bash
# Search UI visual styles (e.g. minimalist, glassmorphic, neo-brutalist)
python scripts/search.py "minimalist dashboard" --domain style

# Search color palettes by mood or industry
python scripts/search.py "fintech security" --domain color

# Get stack-specific guidance (e.g. Next.js, Svelte, SwiftUI)
python scripts/search.py "responsive navbar" --stack nextjs

# Generate a complete project design system specification
python scripts/search.py "E-commerce fashion" --design-system --persist
```

### 2. Frontend Styling (Tailwind + shadcn/ui)
```bash
# Generate a customized Tailwind CSS configuration
python scripts/tailwind_config_gen.py --framework nextjs --colors brand:#3b82f6 accent:#8b5cf6

# Add an accessible shadcn/ui component pattern
python scripts/shadcn_add.py dialog
```

### 3. Impeccable Quality & UX Audit
```bash
# Run the anti-pattern detector on your source code or components
node scripts/detector/cli/main.mjs src/components/Navbar.tsx

# Load context and check design tokens
node scripts/context.mjs --target src/app/page.tsx
```

### 4. Logos, Icons & Corporate Identity
```bash
# Generate a logo design brief
python scripts/logo/search.py "cybersecurity" --design-brief -p "ShieldGuard"

# Generate a Corporate Identity Program (CIP) specification
python scripts/cip/search.py "coffee shop" --cip-brief -b "Velvet Roast"
```

### 5. Strategic Presentation Decks
```bash
# Search slide strategies and layouts
python scripts/search-slides.py "series A pitch"

# Generate an interactive HTML presentation with Chart.js
python scripts/generate-slide.py --topic "SaaS Growth 2026" --count 6
```

---

## 📂 Repository Structure

```text
design-pro-max/
├── SKILL.md                 # Agent instruction specification & workflows
├── README.md                # Documentation and quickstart
├── LICENSE                  # MIT License
├── package.json             # Package configuration
├── reference -> references  # Symlink for cross-platform compatibility
├── references/              # 87 in-depth reference manuals
│   ├── quick-reference.md   # UX Priority checklist & anti-patterns
│   ├── craft-floor.md       # Impeccable craft floor requirements
│   ├── token-architecture.md# 3-tier token system
│   ├── generative-ui.md     # Interactive widget guidelines
│   ├── shadcn-theming.md    # Component theming with Radix
│   ├── logo-prompt-engineering.md
│   ├── banner-sizes-and-styles.md
│   └── slide-strategies.md
├── scripts/                 # 64 CLI tools and automation scripts
│   ├── search.py            # Main database search tool
│   ├── tailwind_config_gen.py
│   ├── shadcn_add.py
│   ├── context.mjs          # Impeccable context resolver
│   ├── cip/                 # Corporate identity generator
│   ├── logo/                # Logo design tool
│   └── detector/            # Automated heuristic & code review engine
├── data/                    # 25 CSV datasets & tech stack databases
├── templates/               # Starter schemas (tokens, brand guidelines)
├── canvas-fonts/            # 81 curated typography fonts
└── agents/                  # Impeccable agent specifications
```

---

## 🎯 The Quality Floor

Before considering any UI or design work complete, Design Pro Max enforces:

- **Contrast**: Minimum 4.5:1 for body copy; 3:1 for large headers and interactive icons (WCAG AA/AAA).
- **Touch Targets**: Minimum 44×44px interactive areas with at least 8px spacing on mobile touch viewports.
- **Layout Stability**: Cumulative Layout Shift (CLS) < 0.1. Images and embeds must declare aspect ratios or reserved heights.
- **Semantic Motion**: Transitions between 150ms and 300ms using ease-out or ease-in-out curves. Respects `prefers-reduced-motion`.
- **Typography Floor**: 16px minimum for body text; never use sub-12px micro-text.

---

## 🤝 Contributing

Contributions, new styles, font pairings, and additional stack specifications are welcome! Please open an issue or submit a pull request.

## 📄 License

Distributed under the [MIT License](LICENSE).

