# XDG base directories
export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"
export XDG_CACHE_HOME="${XDG_CACHE_HOME:-$HOME/.cache}"
export XDG_DATA_HOME="${XDG_DATA_HOME:-$HOME/.local/share}"
export XDG_STATE_HOME="${XDG_DATA_HOME:-$HOME/.local/state}"
export XDG_BIN_HOME="${XDG_DATA_HOME:-$HOME/.local/bin}"

# env variables
export DOTFILES_DIR="$XDG_DATA_HOME/dotfiles"
if [[ -z "$LESSHISTFILE" ]]; then
    export LESSHISTFILE="$XDG_STATE_HOME/less/history"
    mkdir -p "$(dirname "$LESSHISTFILE")"
fi
export GNUPG_HOME="$XDG_CONFIG_HOME/gnupg"

# zsh specific directories
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export ZSH_CACHE_DIR="$XDG_CACHE_HOME/zshcache"
export ZSH_COMPDUMP="$XDG_CACHE_HOME/zsh/zcompdump"
export ZINIT_HOME="$XDG_DATA_HOME/zinit/zinit.git"