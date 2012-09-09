# -*- sh -*-

if [ -z "$DOTFILES_PREFIX" ]; then
  DOTFILES_PREFIX=`dirname $(dirname $(readlink -f "$BASH_SOURCE"))`
fi

# merge prefix_profile
# ----------------------------------------------------------
  source $DOTFILES_PREFIX/prefix/prefix_profile.sh

# Path
# ----------------------------------------------------------

  # Paths that are required by Bash,
  # But that are available only in Bash.
  PATH=$DOTFILES_PREFIX/bash/bin:$PATH
  export PATH
