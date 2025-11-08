#!/usr/bin/env bash
# Copy or symlink central ~/chatmodes into a project's .github/chatmodes
set -euo pipefail

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 /path/to/project"
  exit 2
fi
PROJECT=$1
DEST="$PROJECT/.github/chatmodes"

mkdir -p "$DEST"

if [ -d "$HOME/chatmodes" ]; then
  echo "Syncing from $HOME/chatmodes to $DEST"
  cp -a "$HOME/chatmodes/." "$DEST/"
  echo "Done."
else
  echo "No central ~/chatmodes directory found. Create it first or copy modes manually."
  exit 1
fi
