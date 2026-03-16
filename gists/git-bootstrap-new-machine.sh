#!/usr/bin/env bash
set -e

git config --global user.name "Rainbowkillah"
git config --global user.email "39178890+rainbowkillah@users.noreply.github.com"
git config --global init.defaultBranch main
git config --global core.editor "code --wait"
git config --global fetch.prune true
git config --global push.default simple
git config --global pull.rebase false

echo "Global Git config applied successfully."
git config --global --list
