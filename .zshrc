autoload -U compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
bindkey -v

PROMPT='%F{yellow}%~%f > '
RPROMPT='%F{green}%*%f'

if [ $USER = 'ht4n' ]; then
    source ~/.zsh/ht4n.zsh
fi

source ~/.zsh/aliases.zsh

source <(fzf --zsh) # Set up fzf key bindings and fuzzy completion
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
