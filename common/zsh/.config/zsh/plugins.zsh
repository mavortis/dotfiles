zinit ice from"gh-r" as"program" mv"direnv* -> direnv"
zinit light direnv/direnv

# https://github.com/zdharma-continuum/zinit/issues/574
# zinit ice wait from"gh-r" as"program" lucid
# zinit light eza-community/eza
# zinit ice wait blockf atpull'zinit creinstall -q .'

zinit ice as"command" from"gh-r" mv"fd* -> fd" pick"fd/fd"
zinit light sharkdp/fd

zinit wait lucid light-mode for \
  from'gh-r' \
  as'program' \
  has'git' \
  mv'gh* -> src' \
  atclone'src/bin/gh completion -s zsh > src/bin/_gh' \
  atpull'%atclone' \
  pick'src/bin/gh' \
  id-as'gh' \
  'cli/cli'

# see issue above
# zinit ice wait lucid as"program" from"gh-r" pick"jqlang/jq"
# zinit light jqlang/jq

zinit ice as"command" from"gh-r" \
  atclone"./starship init zsh > init.zsh; ./starship completions zsh > _starship" \
  atpull"%atclone" src"init.zsh"
zinit light starship/starship

zinit ice as"command" from"gh-r" mv"bat* -> bat" pick"bat/bat"
zinit light sharkdp/bat

zinit ice as"command" from"gh-r" mv"delta* -> delta" pick"delta/delta"
zinit light dandavison/delta

zinit ice as"command" from"gh-r" mv"zoxide* -> zoxide" \
  pick"zoxide/zoxide" atload"source <(zoxide init zsh --no-aliases)"
zinit light ajeetdsouza/zoxide

# DUF - a modern df
zinit ice wait lucid as"program" mv"duf* -> duf" pick"duf/duf" from"gh-r" bpick'*.tar.gz'
zinit light muesli/duf

# dust - a modern du
zinit ice wait lucid as"program" mv"dust*/dust -> dust" pick"dust" from"gh-r"
zinit light bootandy/dust

# gtrash - trash replacement
zinit ice lucid wait"0" as"program" from"gh-r"
zinit light umlx5h/gtrash

# lazygit - git client
zinit ice lucid wait="0" as="program" from="gh-r" mv="lazygit* -> lazygit" atload="alias lg='lazygit'"
zinit light jesseduffield/lazygit

# xh - a nicer http client
zinit ice wait lucid as"program" mv"xh* -> xh" pick"xh/xh" from"gh-r"
zinit light ducaale/xh

# yazi - file browser
zinit ice lucid wait"0" as"program" from"gh-r" pick="*/yazi"
zinit light sxyazi/yazi

zinit wait lucid for \
  atinit"ZINIT[COMPINIT_OPTS]=-C; zicompinit; zicdreplay" \
  zdharma-continuum/fast-syntax-highlighting \
  blockf \
  atload"!_zsh_autosuggest_start" \
  zsh-users/zsh-autosuggestions

zinit light zsh-users/zsh-completions
zinit ice wait'0c' lucid
zinit light zdharma-continuum/history-search-multi-word
zinit light zsh-users/zsh-history-substring-search
zinit light hlissner/zsh-autopair