# .zshhistory variables
export HISTFILE="$ZDOTDIR/.zsh_history"
export HISTSIZE=10000
export SAVEHIST=10000

# Set nano as the default editor
export EDITOR="nano"

# Add distrobox binary exports to path
export PATH="$HOME/.local/bin:$PATH"

# Activate mise for all shells
if [[ -z "$DISTROBOX_ENTER_PATH" ]] && [[ -x "$HOME/.local/bin/mise" ]]; then
  eval "$($HOME/.local/bin/mise activate --shims)"
fi