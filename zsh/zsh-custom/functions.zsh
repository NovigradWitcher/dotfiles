# https://boreal.social/post/15-practical-bash-functions-i-use-in-my-bashrc

# Create a directory (with parents) and cd into it immediately
mkcd() {
    mkdir -p "$1" && cd "$1"
}

# Search your command history
hist() {
    history | grep -i "$1"
}

# Fast recursive file finder (name search)
ff() {
    find . -type f -iname "*$1*" 2>/dev/null
}
# ff .pdf    → finds all PDFs anywhere below current dir

# Find directories by name
fd() {
    find . -type d -iname "*$1*" 2>/dev/null
}

# Quick Python HTTP server (Python 3)
serve() {
    local port=${1:-8000}
    echo "Serving on http://localhost:$port"
    python3 -m http.server "$port"
}

# Pretty-print your $PATH
path() {
    echo "$PATH" | tr ":" "\n"
}

# What's listening
ports() {
    lsof -iTCP -sTCP:LISTEN -P -n
}

# Git Panic button
git-undo() {
    git reset --soft HEAD~1
}

# Pull IPs from any text or file
extract-ip() {
    grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b" "$1" | sort -u
}

# Find the space hogs
top-size() {
    du -hs * | sort -rh | head -10
}

# Git "Commit All and Push"
gcap() {
    git add . && git commit -m "$*" && git push
}
# Usage: gcap "Fixed the header padding and updated README"
