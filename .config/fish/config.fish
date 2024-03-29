# ------------------------------------------------------------------------------
# Aliases

# neovim
alias vim=nvim

# Docker
alias dc=docker-compose

# Rust utils
alias ls=exa
alias grep=rg

# vcpkg
alias vcpkg=$HOME/repos/vcpkg/vcpkg

# ------------------------------------------------------------------------------
# Paths

# Reset everything before adding anything
set -x fish_user_paths

# Rust / Cargo
set -Ua fish_user_paths $HOME/.cargo/bin

# pyenv
set -Ux PYENV_ROOT $HOME/.pyenv
set -Ua fish_user_paths $PYENV_ROOT/bin

# Yandex Cloud
set -Ua fish_user_paths $HOME/yandex-cloud/bin

# Haskell language server
set -Ua fish_user_paths $HOME/.haskell-ls

# local bin
set -Ua fish_user_paths $HOME/.local/bin

# ------------------------------------------------------------------------------
# Initialization

# zoxide - `z`-like navigation
zoxide init fish | source

# `starship`, must be close to the end
starship init fish | source

# `pyenv` must be close to the end also, but after `starship`
status is-interactive; and pyenv init --path | source

# ghcup-env
set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME
test -f $HOME/.ghcup/env ; and set -gx PATH $HOME/.cabal/bin $HOME/.ghcup/bin $PATH

