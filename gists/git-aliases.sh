#!/usr/bin/env bash

git config --global alias.st status
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.cm "commit -m"
git config --global alias.last "log -1 HEAD"
git config --global alias.lg "log --oneline --graph --decorate --all"

echo "Git aliases installed."
