alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../../..'

alias cddl='cd ~/Downloads'
alias cdp='cd ~/Projects'
alias cdd='cd ~/.local/share/dotfiles'

alias e='$EDITOR'
alias v='nvim'
alias vim='nvim'

alias md='mkdir -p'
alias mcd='mkdir -p && cd'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

alias tare='tar -xzvf' # 'e' for extract
alias ziprx='zip -r -X'
alias uz='unzip'

alias resource='exec zsh'

alias ip='ipconfig getifaddr en0'
alias myip='curl ifconfig.me'

alias b='brew'
alias bi='brew install'
alias bu='brew uninstall'
alias bs='brew search'
alias bz='brew uninstall --zap'
alias bci='brew install --cask'
alias bcu='brew uninstall --cask'
alias bcr='brew reinstall --cask'
alias bcz='brew uninstall --cask --zap'

alias gla='git log --oneline --author="%an" --pretty=format:"%h %ad | %s%d [%an]" --date=short'
alias glg='git log --oneline --decorate --graph'
alias glga='git log --graph --pretty=format:"%C(yellow)%h%C(reset) %C(green)%ad%C(reset) | %C(white)%s%C(reset) %C(blue)[%an]%C(reset)%d" --relative-date'
alias gnps='git log @{u}..'
alias glt='git log --pretty=format:"%C(yellow)%h %C(blue)%ad %C(green)%an%C(reset)%d %s" --date=short'

alias ls='eza -lF --color=auto --group-directories-first --git --no-quotes'
alias l='eza -lF --color=auto --group-directories-first --git --no-quotes'
alias la='eza -laF --color=auto --group-directories-first --git --no-quotes'
alias ll='eza -lF --color=auto --group-directories-first --git --no-quotes'
alias lla='eza -laF --color=auto --group-directories-first --git --no-quotes'
alias lx='eza -laxo --color=auto --group-directories-first --git --no-quotes'
alias tree='eza -T --color=auto --group-directories-first --git --no-quotes'
