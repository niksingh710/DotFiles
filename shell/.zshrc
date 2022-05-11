COMPLETION_WAITING_DOTS="true"
export ZSH="$HOME/.oh-my-zsh"
plugins=(
  zsh-vi-mode
  fzf
  web-search
  colored-man-pages
  command-not-found
  zsh-autosuggestions
  F-Sy-H
  sudo
  zsh-256color
)
[ -d "$HOME/.config/myconf/zsh/zsh_func" ] && fpath+="$HOME/.config/myconf/zsh/zsh_func"
source $ZSH/oh-my-zsh.sh
[ -f "$HOME/.nikhilrc" ] && source "$HOME/.nikhilrc"
