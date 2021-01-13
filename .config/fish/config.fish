## Aliases
# neovim
alias vim=nvim

# `starship` initialization must be close to the end
starship init fish | source

# `pyenv` must be close to the end also, but after `starship`
pyenv init - | source

# ghcup-env
set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME
test -f /Users/lev/.ghcup/env ; and set -gx PATH $HOME/.cabal/bin /Users/lev/.ghcup/bin $PATH

