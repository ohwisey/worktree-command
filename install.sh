#!/usr/bin/env bash
# Worktree + New Project commands: one-line installer.
# Installs two slash commands: /worktree and /newproject.
# It backs up any command of the same name before writing, so nothing is lost.
set -e

# Set automatically when published. Lets "curl ... | bash" download what it needs.
RAW_BASE="https://raw.githubusercontent.com/ohwisey/worktree-command/main"

CLAUDE_DIR="${HOME}/.claude"
CMD_DIR="${CLAUDE_DIR}/commands"
SRC="$(cd "$(dirname "${BASH_SOURCE[0]:-$0}")" 2>/dev/null && pwd || echo "")"

echo "Installing the worktree and newproject commands..."

# Use a local file if we are running from a clone, otherwise download it.
get() { # $1 = path relative to repo root
  if [ -n "$SRC" ] && [ -f "$SRC/$1" ]; then cat "$SRC/$1"; else curl -fsSL "$RAW_BASE/$1"; fi
}

mkdir -p "$CMD_DIR"

# Back up an existing command of the same name before writing over it.
install_cmd() { # $1 = command file name, like worktree.md
  local dest="$CMD_DIR/$1"
  if [ -f "$dest" ]; then
    cp "$dest" "${dest}.worktree-backup"
    echo "  - backed up your existing $1 to ${1}.worktree-backup"
  fi
  get "commands/$1" > "$dest"
}

install_cmd worktree.md
install_cmd newproject.md
install_cmd cleanup.md
echo "  - installed /worktree, /newproject, and /cleanup"

echo ""
echo "Done. Start a NEW Claude Code session, then try:"
echo "  /worktree my-experiment      (connected copy of this project)"
echo "  /newproject my-new-thing     (brand new separate project)"
echo "  /cleanup                     (tidy up worktrees you are done with)"
