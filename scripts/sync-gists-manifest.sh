#!/usr/bin/env bash
set -euo pipefail

out="gist-manifest.txt"
: > "$out"
for file in gists/*; do
  [ -f "$file" ] || continue
  printf "%s
" "$(basename "$file")" >> "$out"
done

echo "Wrote $out"
