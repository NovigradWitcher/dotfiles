# .zshhistory variables
export HISTFILE="$ZDOTDIR/.zsh_history"
export HISTSIZE=10000
export SAVEHIST=10000

# Set nano as the default editor
export EDITOR="nano"

# Add distrobox binary exports to path
export PATH="$HOME/.local/bin:$PATH"

# .zshenv
[[ -z "$DISTROBOX_ENTER_PATH" ]] && eval "$(mise activate --shims)"