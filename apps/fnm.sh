#!/bin/sh
if command -v fnm >/dev/null 2>&1; then
    echo "⚠️ FNM ya instalado"
else
    curl -fsSL https://fnm.vercel.app/install | zsh
    source ~/.zshrc
fi

fnm install --lts
echo "✅ Node"
