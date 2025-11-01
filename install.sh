#!/usr/bin/env bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

command -v brew || export PATH="/opt/homebrew/bin:/home/linuxbrew/.linuxbrew/bin:/usr/local/bin:$PATH"
command -v brew && eval "$(brew shellenv)"

sh -c "$(curl -fsLS get.chezmoi.io/lb)" -- init --apply gvwalker
