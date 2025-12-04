#!/bin/bash

# --- sync_up.sh ---
# Commits and pushes changes to the collaboration repo.

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$SCRIPT_DIR/.."

cd "$REPO_ROOT" || exit 1

echo "=== Syncing Up to GitHub ==="

# Add all changes
git add .

# Commit with timestamp
TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")
git commit -m "Auto-sync: $TIMESTAMP"

# Push to remote
git push origin HEAD

echo "✅ Synced successfully at $TIMESTAMP"
