#systemctl --user wrappers

alias sysstart="systemctl --user start"
alias sysstop="systemctl --user stop"
alias sysrestart="systemctl --user restart"
alias sysenable="systemctl --user enable"
alias sysdisable="systemctl --user disable"
alias sysstatus="systemctl --user status"
alias sysreload="systemctl --user daemon-reload"

syslog() {
    if [ -z "$1" ]; then
        journalctl --user -e
    else
        journalctl --user -u "$1" -f -n 50
    fi
}

# --- Help Command ---
syshelp() {
    echo "===================================================="
    echo "          SYSTEMD USER ALIASES (sys*)               "
    echo "===================================================="
    echo "  sysstart [unit]   -> Start a user service"
    echo "  sysstop [unit]    -> Stop a user service"
    echo "  sysrestart [unit] -> Restart a user service"
    echo "  sysstatus [unit]  -> Check status of a user service"
    echo "  sysreload         -> Reload daemon after config changes"
    echo "----------------------------------------------------"
    echo "  sysenable [unit]  -> Enable service on boot"
    echo "  sysdisable [unit] -> Disable service on boot"
    echo "----------------------------------------------------"
    echo "  syslog [unit]     -> Tail logs (last 50 lines + follow)"
    echo "  syslog            -> View global user logs (end of file)"
    echo "===================================================="
}

# https://boreal.social/post/15-practical-bash-functions-i-use-in-my-bashrc

# Create a directory (with parents) and cd into it immediately
mkcd() {
    mkdir -p "$1" && cd "$1"
}

# Search your command history
hist() {
    history | grep -i "$1"
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
