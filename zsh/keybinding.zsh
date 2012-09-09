# -*- sh -*-
# Key bindings
# ==========================================================

autoload -U history-search-end

# http://d.hatena.ne.jp/kei_q/20110406/1302091565
function alls () {
  zle accept-line
  if [[ -z "$BUFFER" ]]; then
    echo
    ls
  fi
}

zle -N alls
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end

bindkey '^R' history-incremental-pattern-search-backward
bindkey '^S' history-incremental-pattern-search-forward
bindkey '^m' alls
