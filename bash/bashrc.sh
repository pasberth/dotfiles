# -*- sh -*-
#
# Configs that are available only in Bash.
# ==========================================================

if [ -z "$DOTFILES_PREFIX" ]; then
  DOTFILES_PREFIX=`dirname $(dirname $(readlink -f "$BASH_SOURCE"))`
fi

# First of all, merge .prefixrc
# ----------------------------------------------------------
source $DOTFILES_PREFIX/prefix/prefixrc.sh

# Load Libraries
# ----------------------------------------------------------

  # git-completion.bash
  # https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
  source $DOTFILES_PREFIX/.vendor/git/contrib/completion/git-completion.bash

  # autojump.bash
  # [[ -s $DOTFILES_PREFIX/local/autojump/etc/profile.d/autojump.bash ]] && \
  # source $DOTFILES_PREFIX/local/autojump/etc/profile.d/autojump.bash

alias cd=pushd

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
