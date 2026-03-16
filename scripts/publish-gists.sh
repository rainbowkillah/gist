#!/usr/bin/env bash
set -euo pipefail

if ! command -v gh >/dev/null 2>&1; then
  echo "GitHub CLI (gh) is required." >&2
  exit 1
fi

if [ ! -d "gists" ]; then
  echo "Run this script from the repository root so the ./gists folder exists." >&2
  exit 1
fi

while IFS= read -r -d '' file; do
  name=$(basename "$file")
  desc="${name%.*}"
  echo "Publishing $name ..."
  gh gist create "$file" -d "$desc"
done < <(find gists -maxdepth 1 -type f -print0 | sort -z)
