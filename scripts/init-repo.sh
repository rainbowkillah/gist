#!/usr/bin/env bash
set -euo pipefail

REPO_NAME="${1:-}"
VISIBILITY="${2:-public}"

if [[ -z "$REPO_NAME" ]]; then
  echo "Usage: ./scripts/init-repo.sh <repo-name> [public|private]"
  exit 1
fi

if [[ "$VISIBILITY" != "public" && "$VISIBILITY" != "private" ]]; then
  echo "Visibility must be 'public' or 'private'"
  exit 1
fi

command -v git >/dev/null 2>&1 || { echo "git is required"; exit 1; }
command -v gh >/dev/null 2>&1 || { echo "gh is required"; exit 1; }

echo "Checking GitHub CLI authentication..."
gh auth status >/dev/null 2>&1 || {
  echo "GitHub CLI is not authenticated. Run: gh auth login"
  exit 1
}

if [[ ! -d .git ]]; then
  echo "Initializing repository..."
  git init
fi

git branch -M main

echo "Staging files..."
git add .

if git diff --cached --quiet; then
  echo "Nothing to commit. Creating an empty initial commit..."
  git commit --allow-empty -m "Initial commit"
else
  git commit -m "Initial commit"
fi

echo "Creating GitHub repository '$REPO_NAME' ($VISIBILITY)..."
gh repo create "$REPO_NAME" --"$VISIBILITY" --source=. --remote=origin --push

echo
if repo_url=$(gh repo view --json url -q '.url' 2>/dev/null); then
  echo "Repository ready: $repo_url"
else
  echo "Repository ready."
fi

gh repo view --web 2>/dev/null || true
