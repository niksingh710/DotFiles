export ZSH="$HOME/.oh-my-zsh"
plugins=(
  git
  vi-mode
  web-search
  command-not-found
  zsh-autosuggestions
  fast-syntax-highlighting
)
[ -d "$HOME/.config/myconf/zsh/completions" ] && fpath+="$HOME/.config/myconf/zsh/completions"
source $ZSH/oh-my-zsh.sh
[ -f "$HOME/.nikhilrc" ] && source "$HOME/.nikhilrc"

