# -*- sh -*-
# Key bindings
# ==========================================================

# autoload -U history-search-end

function uncd () {
  echo
  pushd ..
  zle reset-prompt
}

function recd () {
  echo
  popd
  zle reset-prompt
}

zle -N uncd
zle -N recd
# bindkey '^z' uncd
# bindkey 'Z' recd

# zle -N history-beginning-search-backward-end history-search-end
# zle -N history-beginning-search-forward-end history-search-end

#bindkey '^R' history-incremental-pattern-search-forward
#bindkey '^S' history-incremental-pattern-search-backward

source $DOTFILES_PREFIX/.vendor/zsh-history-substring-search/zsh-history-substring-search.zsh
