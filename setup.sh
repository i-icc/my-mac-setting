#!/usr/bin/env bash
set -euo pipefail

# ssh-key の作成
ssh-keygen


# git-prompt のインストール
mkdir -p ~/.zsh
pushd ~/.zsh > /dev/null
curl -o git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
curl -o git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
curl -o _git https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh
popd > /dev/null


# brew のインストール
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


# uv のインストール
brew install uv


# task のインストール
brew install go-task


# 開発ツール類のインストール (可能な限り brew を利用)
brew install --cask codex
brew install --cask xcode
brew install --cask deepl
brew install --cask orbstack
brew install fvm
