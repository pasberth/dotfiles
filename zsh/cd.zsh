# -*- sh -*-
# autojump.zsh
# https://github.com/joelthelion/autojump
# [ -e $DOTFILES_PREFIX/local/etc/profile.d/autojump.zsh ] && \
# source $DOTFILES_PREFIX/local/etc/profile.d/autojump.zs

# slipd & backd
# https://github.com/pasberth/slipd
# https://github.com/pasberth/backd
source $DOTFILES_PREFIX/.vendor/slipd/slipd.sh
source $DOTFILES_PREFIX/.vendor/backd/backd.sh
fpath=($DOTFILES_PREFIX/.vendor/slipd/functions $fpath)
fpath=($DOTFILES_PREFIX/.vendor/backd/functions $fpath)
alias _=popd
alias ..=slipd
alias __=backd
autoload -U compinit && compinit
autoload -U compdef
compdef _slipd ..
compdef _backd __

# Options about the 'cd' command
# ----------------------------------------------------------
setopt autocd
setopt autopushd
# setopt pushdignoredups
setopt pushd_silent
