# Setup fzf
# ---------
if [[ ! "$PATH" == */home/niksingh710/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/niksingh710/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/niksingh710/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/niksingh710/.fzf/shell/key-bindings.zsh"
