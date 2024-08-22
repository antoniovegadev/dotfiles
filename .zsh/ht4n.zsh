# adds Ruby rbenv to Path
eval "$(rbenv init -)"
# adds local 'rake' to Path in fla-ios
PATH=./bin:$PATH
source ~/.ht4nprofile
echo "ht4n.zsh loaded"
