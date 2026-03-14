#For python
alias python="python3"

#For Bitwarden CLI
alias bw="flatpak run --command=bw com.bitwarden.desktop"

#For cleaning up Git branches
alias pruneBranch="git branch | grep -vE '&\*|main*' | xargs git branch -D"
