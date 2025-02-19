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

zinit for \
    light-mode \
  zsh-users/zsh-autosuggestions \
  zsh-users/zsh-history-substring-search \
  zdharma-continuum/fast-syntax-highlighting \
  zdharma-continuum/history-search-multi-word \
    as"command" from"gh-r" \
    atclone"./starship init zsh > init.zsh; ./starship completions zsh > _starship" \
    atpull"%atclone" src"init.zsh" \
  starship/starship \
    as"program" pick"direnv" \
  direnv/direnv \
    as"program" \
  eza-community/eza \
    atload"zicompinit; zicdreplay" \
    blockf \
    lucid \
    wait \
  zsh-users/zsh-completions \
  hlissner/zsh-autopair

zmodload zsh/complist
zmodload zsh/zutil
zmodload zsh/zle

bindkey -v     # vi mode, follow with insert mode keys before fish-style
KEYTIMEOUT=1

bindkey '^H' backward-delete-char
bindkey '^W' backward-kill-word
bindkey '^A' beginning-of-line
bindkey '^E' end-of-line
bindkey '^K' kill-line
bindkey '^U' backward-kill-line
bindkey '^Y' yank

bindkey '^[[A' history-substring-search-up    # up arrow
bindkey '^[[B' history-substring-search-down  # down arrow
bindkey '^[[C' forward-char                   # right arrow
bindkey '^[[D' backward-char                  # left arrow
bindkey '^P' history-substring-search-up
bindkey '^N' history-substring-search-down
ZSH_AUTOSUGGEST_ACCEPT_WIDGETS=(forward-char end-of-line)
ZSH_AUTOSUGGEST_PARTIAL_ACCEPT_WIDGETS=(forward-word)

bindkey '\e[1;3C' forward-word     # alt+right (alternative)
bindkey '\e[1;3D' backward-word    # alt+left (alternative)
bindkey '\e\e[C' forward-word      # meta+right (another alternative)
bindkey '\e\e[D' backward-word     # meta+left (another alternative)
bindkey '^L' clear-screen
bindkey '\e^?' backward-kill-word  # alt+backspace

autoload -Uz compinit; compinit

setopt extendedglob globdots
setopt append_history share_history inc_append_history inc_append_history_time
setopt hist_ignore_dups hist_ignore_space hist_reduce_blanks
setopt correct nobeep auto_list auto_remove_slash menu_complete
setopt no_clobber interactive_comments complete_aliases
setopt auto_cd auto_name_dirs
setopt no_hup multi_byte
HISTFILESIZE=100000
SAVEHIST=100000

zstyle ':completion:*' menu select
zstyle ':completion:*' group-name ''
zstyle ':completion:*:descriptions' format '%B%d%b'
zstyle ':completion:*:messages' format '%B%U%d%u%b'
zstyle ':completion:*:warnings' format '%B%F{red}%d%f%b'
zstyle ':completion:*:corrections' format '%B%F{yellow}%d%f (errors: %e)%b'
zstyle ':completion:*:*:kill:*:processes' list-colors "=(#b) #([0-9]#)*=36=31"
zstyle ':completion:*:*:kill:*' command 'ps -u $USER -o pid,%cpu,%mem,command'
zstyle ':completion:*:cd:*' ignore-parents parent pwd ..
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{A-Z}={a-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

source "$ZDOTDIR/aliases.zsh"