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
