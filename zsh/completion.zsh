# -*- sh -*-
autoload -U compinit && compinit
autoload -U bashcompinit && bashcompinit

# Load Libraries
# ----------------------------------------------------------

  # auto-fu.zsh
  # https://github.com/hchbaw/auto-fu.zsh
  # source $DOTFILES_PREFIX/.vendor/auto-fu.zsh/auto-fu.zsh

  # git-completion.bash
  # https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
  source $DOTFILES_PREFIX/.vendor/git/contrib/completion/git-completion.bash

# Completion Style
# ----------------------------------------------------------

  zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
  zstyle ':completion:*:warnings' format '%BNo matches for: %d%b'
  zstyle ':completion:*' group-name ''
  # Case-insensitive completion
  zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
  zstyle ':completion:*' keep-prefix
  # Selecting matchers
  zstyle ':completion:*:default' menu select=1
  # auto-fu
  # zstyle ':completion:*' completer _oldlist _complete 
  # Doesn't show "-azfu-". (default is showing it).
  # zstyle ':auto-fu:var' postdisplay ''

# Options about completion
# ----------------------------------------------------------
#setopt correctall
setopt correct
#setopt extendedglob
setopt magic_equal_subst
setopt auto_menu
