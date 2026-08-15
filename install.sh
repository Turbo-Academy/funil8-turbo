#!/usr/bin/env bash
# Instala o Funil 8 Turbo (agente + 12 skills) no Claude Code.
# Idempotente — pode rodar de novo quando atualizar o repo (git pull && ./install.sh).
set -euo pipefail

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
SKILLS_DIR="$HOME/.claude/skills"
AGENTS_DIR="$HOME/.claude/agents"

mkdir -p "$SKILLS_DIR" "$AGENTS_DIR"

echo "Instalando skills em $SKILLS_DIR ..."
for skill in "$REPO_DIR"/skills/*/; do
  name="$(basename "$skill")"
  rm -rf "${SKILLS_DIR:?}/$name"
  cp -R "$skill" "$SKILLS_DIR/$name"
  echo "  ✓ $name"
done

echo "Instalando agente em $AGENTS_DIR ..."
cp "$REPO_DIR/agents/funil8-turbo.md" "$AGENTS_DIR/"
echo "  ✓ funil8-turbo"

echo ""
echo "Pronto. Agora REINICIE o Claude Code (feche a sessão e abra outra):"
echo "  skills e agente só carregam em sessão NOVA — a sessão desta instalação"
echo "  não enxerga o que ela mesma instalou."
echo ""
echo "Confira: /skills lista as skills · e chame o agente:"
echo "  \"Use o agente funil8-turbo para estruturar meu funil de entrada\""
