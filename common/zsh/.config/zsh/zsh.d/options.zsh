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
