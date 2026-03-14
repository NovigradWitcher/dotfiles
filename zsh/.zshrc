if [[ -z "$DISTROBOX_ENTER_PATH" ]]; then
    eval "$(mise activate zsh)"
    fastfetch &!
fi

DISABLE_AUTO_UPDATE="true"
DISABLE_UPDATE_PROMPT="true"

export ZSH="$ZDOTDIR/.oh-my-zsh"
export ZSH_COMPDUMP="$ZDOTDIR/cache/.zcompdump-$HOST"
export ZSH_CACHE_DIR="$ZDOTDIR/cache"

export ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
export ZSH_AUTOSUGGEST_USE_ASYNC=1
export ZSH_CUSTOM="$ZDOTDIR/zsh-custom"

# Set name of the theme to load
ZSH_THEME="passion"

plugins=(zsh-autosuggestions fast-syntax-highlighting git)

zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "$ZDOTDIR/completions"

autoload -Uz compinit 
if [[ -n ${ZDOTDIR}/cache/.zcompdump-$HOST(#qN.mh+24) ]]; then
	compinit;
else
	compinit -C;
fi;

source $ZSH/oh-my-zsh.sh

source $ZSH_CUSTOM/functions.zsh
