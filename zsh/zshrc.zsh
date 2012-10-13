# -*- sh -*-
# My local favorite flavoring
# that is available only in zsh.
# ==========================================================

# Initialize Shell Variables  Dotfiles
# ----------------------------------------------------------

if [ "$ZSH_EVAL_CONTEXT" = "file" ]; then
  SHELL=$0
  DOTFILES_PREFIX=`dirname $(dirname $(readlink -f ~/.zshrc))`
elif [[ -z $DOTFILES_PREFIX ]]; then
  DOTFILES_PREFIX=`dirname $(dirname $(readlink -f "$0"))`
fi

# First of all, merge .prefixrc
# ----------------------------------------------------------
source $DOTFILES_PREFIX/prefix/prefixrc.sh

# Load Libraries
# ----------------------------------------------------------

fpath=($DOTFILES_PREFIX/local/functions $fpath)

source $DOTFILES_PREFIX/zsh/cd.zsh
source $DOTFILES_PREFIX/zsh/prompt.zsh
source $DOTFILES_PREFIX/zsh/keybinding.zsh
source $DOTFILES_PREFIX/zsh/completion.zsh

# Options about the history
# ----------------------------------------------------------
setopt share_history
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt hist_no_store
setopt extended_history
