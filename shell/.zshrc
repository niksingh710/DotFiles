COMPLETION_WAITING_DOTS="true"
ZSH_WEB_SEARCH_ENGINES=(
   reddit "https://www.reddit.com/search/?q="
   yt "https://www.youtube.com/results?search_query="
   wikki "https://en.wikipedia.org/wiki/"
   gmap "https://www.google.co.in/maps/place/"
)
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
 ZVM_INSERT_MODE_CURSOR=$ZVM_CURSOR_BLINKING_BEAM
 ZVM_VI_INSERT_ESCAPE_BINDKEY=jk
