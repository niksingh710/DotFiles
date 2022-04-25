export ZSH="$HOME/.oh-my-zsh"
plugins=(
  vi-mode
  web-search
  colored-man-pages
  command-not-found
  zsh-autosuggestions
  fast-syntax-highlighting
  sudo
  zsh-256color
)
[ -d "$HOME/.config/myconf/zsh/zsh_func" ] && fpath+="$HOME/.config/myconf/zsh/zsh_func"
source $ZSH/oh-my-zsh.sh
[ -f "$HOME/.nikhilrc" ] && source "$HOME/.nikhilrc"


