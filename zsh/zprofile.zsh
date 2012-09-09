# -*- sh -*-
#
# Settings that is available only in zsh.
# ==========================================================

if [ "${0%%/bin/zsh}" != "$0" ]; then
  SHELL=$0
  DOTFILES_PREFIX=`dirname $(dirname $(readlink -f ~/.zprofile))`
elif [[ -z $DOTFILES_PREFIX ]]; then
  DOTFILES_PREFIX=`dirname $(dirname $(readlink -f "$0"))`
fi

# First of all, merge .prefix_profile
# ----------------------------------------------------------
source $DOTFILES_PREFIX/prefix/prefix_profile.sh

export PATH=$DOTFILES_PREFIX/zsh/bin:$PATH
