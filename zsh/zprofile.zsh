# -*- sh -*-
#
# Settings that is available only in zsh.
# ==========================================================

# ~/.zprofile にこのファイルが置かれている場合
if [ "$ZSH_EVAL_CONTEXT" = "file" ]; then
  SHELL=$0
  DOTFILES_PREFIX=`dirname $(dirname $(readlink -f ~/.zprofile))`
# source path/to/zsh/zprofile.zsh で呼ばれた場合
elif [[ -z $DOTFILES_PREFIX ]]; then
  DOTFILES_PREFIX=`dirname $(dirname $(readlink -f "$0"))`
fi

# First of all, merge .prefix_profile
# ----------------------------------------------------------
source $DOTFILES_PREFIX/prefix/prefix_profile.sh

export PATH=$DOTFILES_PREFIX/zsh/bin:$PATH
