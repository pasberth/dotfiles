#!/usr/bin/env bash
if [ -z "$DOTFILES_PREFIX" ]; then
  DOTFILES_PREFIX=$(dirname $(readlink -f $0))
fi

echo "\$DOTFILES_PREFIX="$DOTFILES_PREFIX
source $DOTFILES_PREFIX/prefix/dotfiles-functions.sh && \
dotfiles-setup && \
dotfiles-sync && \
echo    "dotfiles was set up successfully." && \
echo -n "remember to reload ~/.bash_profile, ~/.bashrc, " && \
echo    "or more environment files you need."
