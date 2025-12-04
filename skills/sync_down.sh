#!/bin/bash

# --- sync_down.sh ---
# Pulls the latest changes from GitHub.

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$SCRIPT_DIR/.."

cd "$REPO_ROOT" || exit 1

echo "=== Syncing Down from GitHub ==="

git pull origin HEAD

echo "✅ Context updated."
