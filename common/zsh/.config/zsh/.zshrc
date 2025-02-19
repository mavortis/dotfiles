if [[ -x "/opt/homebrew/bin/brew" ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

if [[ ! -f "$ZINIT_HOME/zinit.zsh" ]]; then 
  print "zinit not found. Installing..."
  mkdir -p "$ZINIT_HOME" && \
    git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

source "$ZINIT_HOME/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

source "$ZDOTDIR/zsh.d/helpers.zsh"
source "$ZDOTDIR/zsh.d/bootstrap.zsh"
source "$ZDOTDIR/zsh.d/plugins.zsh"
source "$ZDOTDIR/zsh.d/keybinds.zsh"
source "$ZDOTDIR/zsh.d/env.zsh"
source "$ZDOTDIR/zsh.d/completions.zsh"
source "$ZDOTDIR/zsh.d/options.zsh"
source "$ZDOTDIR/zsh.d/aliases.zsh"
