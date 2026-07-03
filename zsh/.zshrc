if [[ -o interactive ]]; then
  fastfetch
fi

source /usr/share/cachyos-zsh-config/cachyos-config.zsh

export ZSH_COMPDUMP="$ZDOTDIR/cache/.zcompdump-$HOST"
export ZSH_CACHE_DIR="$ZDOTDIR/cache"
export ZSH_CUSTOM="$ZDOTDIR/zsh-custom"

export DOTFILES="$HOME/.config/dotfiles"

zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "$ZDOTDIR/completions"

fpath=(~/.zfunc $fpath)

autoload -Uz compinit

if [[ -n $ZDOTDIR/cache/.zcompdump-$HOST(#qN.mh+24) ]]; then
    compinit
else
    compinit -C
fi

source $ZSH_CUSTOM/aliases.zsh

# Mapping systemctl and journalctl completions to my custom aliases
compdef '_systemctl' sysstart sysstop sysrestart sysenable sysdisable sysstatus

compdef '_journalctl' syslog
