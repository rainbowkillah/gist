#!/usr/bin/env bash
set -e

code --install-extension dbaeumer.vscode-eslint
code --install-extension esbenp.prettier-vscode
code --install-extension ms-vscode.vscode-typescript-next
code --install-extension ms-azuretools.vscode-docker
code --install-extension github.vscode-github-actions
code --install-extension eamodio.gitlens

echo "VS Code extensions installed."
