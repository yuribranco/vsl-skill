#!/usr/bin/env bash
# Instala a skill /vsl no Claude Code.
#   ./install.sh            -> global   (~/.claude/skills/vsl)
#   ./install.sh --project  -> projeto  (./.claude/skills/vsl)
set -euo pipefail

SRC="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/skills/vsl"

if [[ "${1:-}" == "--project" ]]; then
  DEST="$PWD/.claude/skills/vsl"
  ESCOPO="projeto ($PWD)"
else
  DEST="$HOME/.claude/skills/vsl"
  ESCOPO="global"
fi

if [[ ! -f "$SRC/SKILL.md" ]]; then
  echo "erro: não encontrei $SRC/SKILL.md — rode o script de dentro do repositório clonado." >&2
  exit 1
fi

if [[ -d "$DEST" ]]; then
  BACKUP="$DEST.backup-$(date +%Y%m%d%H%M%S)"
  mv "$DEST" "$BACKUP"
  echo "· já existia uma skill 'vsl' — movida para $BACKUP"
fi

mkdir -p "$(dirname "$DEST")"
cp -R "$SRC" "$DEST"

echo "✅ skill /vsl instalada ($ESCOPO) em $DEST"
echo "   Reinicie o Claude Code e rode /vsl para usar."
