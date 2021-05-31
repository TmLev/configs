## Aliases
# neovim
alias vim=nvim
# Docker
alias dc=docker-compose
# Rust utils
alias ls=exa
alias grep=rg

## Paths
# Rust / Cargo
set -Ua fish_user_paths $HOME/.cargo/bin
# Yandex Cloud
set -Ua fish_user_paths /Users/lev/yandex-cloud/bin
# Haskell language server
set -Ua fish_user_paths /Users/lev/.haskell-ls
# local bin
set -Ua fish_user_paths /Users/lev/.local/bin

# `starship` initialization must be close to the end
starship init fish | source

# `pyenv` must be close to the end also, but after `starship`
pyenv init - | source

# ghcup-env
set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME
test -f /Users/lev/.ghcup/env ; and set -gx PATH $HOME/.cabal/bin /Users/lev/.ghcup/bin $PATH

# tmux session
# tmux new-session -A -s main

# zoxide - `z`-like navigation
zoxide init fish | source
