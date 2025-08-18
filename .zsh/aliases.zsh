alias lg='lazygit'
alias vim='nvim'
alias deeplink='xcrun simctl openurl booted'
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias erc='nvim ~/.zshrc'
alias src='source ~/.zshrc;echo "ZSH sourced."'
alias fov='f=$(fd --type f --hidden --ignore-file=$HOME/.ignore \
  | fzf --preview "bat --color=always --style=numbers --line-range=:500 {}") && [ -n "$f" ] && nvim "$f"'
alias ls='eza'

# git aliases
alias gap='git add -p'
alias gst='git status --ignore-submodules=all'
alias gco='git checkout'
alias gcb='git checkout -b'
alias grb='git rebase'
alias gri='git rebase -i'
alias gcpr='git rev-parse HEAD | pbcopy'
