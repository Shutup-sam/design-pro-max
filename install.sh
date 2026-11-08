#!/usr/bin/env bash
# Design Pro Max - Unified Installer for AI Coding Agents
set -e

REPO_URL="https://github.com/shutup-sam/design-pro-max.git"
INSTALL_DIR="$HOME/.agents/skills/design-pro-max"

echo ""
echo "=================================================="
echo "   🎨 Installing Design Pro Max for AI Agents    "
echo "=================================================="
echo ""

if ! command -v git &> /dev/null; then
    echo "❌ Error: git is required to install Design Pro Max."
    exit 1
fi

# 1. Install or update in ~/.agents/skills
mkdir -p "$HOME/.agents/skills"

if [ -d "$INSTALL_DIR/.git" ]; then
    echo "🔄 Existing installation detected. Pulling latest updates..."
    git -C "$INSTALL_DIR" pull --ff-only origin main
elif [ -d "$INSTALL_DIR" ]; then
    echo "ℹ️  $INSTALL_DIR exists. Skipping clone."
else
    echo "📦 Cloning Design Pro Max repository..."
    git clone "$REPO_URL" "$INSTALL_DIR"
fi

# Ensure executable permissions on key scripts
chmod +x "$INSTALL_DIR/scripts"/*.py 2>/dev/null || true
chmod +x "$INSTALL_DIR/scripts"/*.cjs 2>/dev/null || true
chmod +x "$INSTALL_DIR/scripts"/*.mjs 2>/dev/null || true

# 2. Automatically link to Claude Code if ~/.claude/skills exists
if [ -d "$HOME/.claude/skills" ]; then
    mkdir -p "$HOME/.claude/skills"
    if [ ! -e "$HOME/.claude/skills/design-pro-max" ]; then
        ln -s "$INSTALL_DIR" "$HOME/.claude/skills/design-pro-max"
        echo "🔗 Linked to Claude Code at ~/.claude/skills/design-pro-max"
    fi
fi

# 3. Automatically link to Gemini / Antigravity config if present
if [ -d "$HOME/.gemini/config/skills" ]; then
    if [ ! -e "$HOME/.gemini/config/skills/design-pro-max" ]; then
        ln -s "$INSTALL_DIR" "$HOME/.gemini/config/skills/design-pro-max"
        echo "🔗 Linked to Gemini config at ~/.gemini/config/skills/design-pro-max"
    fi
fi

echo ""
echo "✅ Design Pro Max successfully installed!"
echo ""
echo "Quick Test:"
echo "  python3 $INSTALL_DIR/scripts/search.py \"minimalist dashboard\" --domain style"
echo ""
echo "Happy designing! 🚀"
