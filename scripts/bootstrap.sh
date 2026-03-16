#!/usr/bin/env bash
set -euo pipefail

echo "Local project bootstrap"
command -v git >/dev/null 2>&1 || { echo "git is required"; exit 1; }

git config --get init.defaultBranch >/dev/null 2>&1 || git config --global init.defaultBranch main

echo "Bootstrap complete. Next: ./scripts/init-repo.sh <repo-name> [public|private]"
