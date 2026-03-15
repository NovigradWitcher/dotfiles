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

# For Android Dev
export ANDROID_HOME="$HOMEBREW_PREFIX/share/android-commandlinetools"

# For Bitwarden ssh agent
export SSH_AUTH_SOCK="$HOME/.var/app/com.bitwarden.desktop/data/.bitwarden-ssh-agent.sock"

# For protontricks
export STEAM_COMPAT_CLIENT_INSTALL_PATH=~/.steam/steam