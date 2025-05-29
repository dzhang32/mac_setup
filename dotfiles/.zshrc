# aliases
alias ll='ls -alh'

# set vim to copy to clipboard. 
alias vim='vim -c "set clipboard=unnamed"'

# zsh autocomplete and syntax highlighting
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
autoload -Uz compinit && compinit
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# starship
eval "$(starship init zsh)"

# atuin
eval "$(atuin init zsh)"