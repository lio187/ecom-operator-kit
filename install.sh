#!/bin/bash
# E-com Operator Kit — installer
# Installs 16 e-com skills and 17 agents for Claude Code
# Created by Leon — @lio · @liogpt

set -e

REPO="lio187/ecom-operator-kit"
REPO_URL="https://github.com/${REPO}.git"
INSTALL_DIR="$HOME/.ecom-operator-kit"
SKILL_DIR="$HOME/.claude/commands/webshop"
AGENT_DIR="$HOME/.claude/agents/webshop"

echo ""
echo "  E-COM OPERATOR KIT"
echo "  ================="
echo ""

# -- Add common Claude install locations to PATH for this session --
for dir in "$HOME/.local/bin" "$HOME/.claude/local/bin" "/usr/local/bin"; do
    if [ -d "$dir" ] && [[ ":$PATH:" != *":$dir:"* ]]; then
        export PATH="$dir:$PATH"
    fi
done

# -- Check for Claude Code --
if ! command -v claude &> /dev/null; then
    echo "  Claude Code is nog niet geinstalleerd."
    echo ""
    echo "  Installeer Claude Code via de actuele officiele handleiding:"
    echo "  https://docs.anthropic.com/en/docs/claude-code/setup"
    echo ""
    echo "  Installeer Claude Code en draai daarna lokaal opnieuw: bash install.sh"
    echo ""
    echo "  ---------------------------------------------"
    echo "  Hulp nodig? Volg @liogpt"
    echo "  ---------------------------------------------"
    echo ""
    exit 0
fi

echo "  OK  Claude Code gevonden"
echo ""

# -- Check for git --
if ! command -v git &> /dev/null; then
    echo "  Git is nog niet geinstalleerd."
    echo "  Installeer via: https://git-scm.com/downloads"
    echo "  Draai daarna deze installer opnieuw."
    echo ""
    exit 0
fi

# -- Clone or update the repo --
if [ -d "$INSTALL_DIR" ]; then
    echo "  Bestaande installatie updaten..."
    cd "$INSTALL_DIR"
    git pull --quiet origin main
    echo "  Ge-update naar laatste versie."
else
    echo "  Kit downloaden..."
    git clone --quiet "$REPO_URL" "$INSTALL_DIR"
    echo "  Gedownload."
fi

# -- Install agents to Claude Code --
echo ""
echo "  Agents installeren..."
mkdir -p "$AGENT_DIR"

AGENT_COUNT=0
for agent_file in "$INSTALL_DIR/agents/"*.md; do
    if [ -f "$agent_file" ] && [ "$(basename "$agent_file")" != "README.md" ]; then
        cp "$agent_file" "$AGENT_DIR/"
        echo "    OK  $(basename "$agent_file" .md)"
        AGENT_COUNT=$((AGENT_COUNT + 1))
    fi
done
echo "  ${AGENT_COUNT} agent(s) geinstalleerd."

echo ""

# -- Install skills to Claude Code --
echo "  Skills installeren..."
mkdir -p "$SKILL_DIR"

SKILL_COUNT=0
for skill_file in "$INSTALL_DIR/skills/"*.md; do
    if [ -f "$skill_file" ]; then
        cp "$skill_file" "$SKILL_DIR/"
        SKILL_NAME=$(basename "$skill_file" .md)
        echo "    OK  /webshop:${SKILL_NAME}"
        SKILL_COUNT=$((SKILL_COUNT + 1))
    fi
done

if [ "$SKILL_COUNT" -eq 0 ]; then
    echo "    Geen skills gevonden."
else
    echo "  ${SKILL_COUNT} skill(s) geinstalleerd."
fi

echo ""
echo "  Klaar!"
echo ""
echo "  Geinstalleerd:"
echo "  |-- Skills  -> ~/.claude/commands/webshop/"
echo "  |-- Agents  -> ~/.claude/agents/webshop/"
echo "  |-- Bestanden -> ~/.ecom-operator-kit/"
echo ""
echo "  Updaten? Draai dit commando gewoon opnieuw."
echo ""
echo "  ---------------------------------------------"
echo "  Boek een 187N Agency Scan: https://calendly.com/lio-187n/187n-agency-scan-t-clone"
echo "  Volledige cursus: https://lio.circle.so"
echo "  Volg @liogpt voor dagelijkse AI-tutorials"
echo "  ---------------------------------------------"
echo ""
echo "  Klaar. Open README.md voor de volledige startvolgorde."
echo ""
