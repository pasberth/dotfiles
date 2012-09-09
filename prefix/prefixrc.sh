# -*- sh -*-
#
# Configs that are available in both Bash and Zsh,
# And, core settings they MUST need.
# ==========================================================

# Initialize Shell Variables  Dotfiles
# ----------------------------------------------------------
if [ -z "$DOTFILES_PREFIX" ]; then
  DOTFILES_PREFIX=`dirname $(dirname $(readlink "$0"))`
fi

# Any programs don't use $DOTFILES_PREFIX.
# export DOTFILES_PREFIX

# Load Libraries
# ----------------------------------------------------------
#source $DOTFILES_PREFIX/.vendor/promptway/promptway.sh
source $DOTFILES_PREFIX/.vendor/slipd/slipd.sh
source $DOTFILES_PREFIX/.vendor/backd/backd.sh

# Changing directory
# ----------------------------------------------------------
alias cd=pushd
alias _=popd
alias __=backd
alias ..=slipd

# about Emacs
# ----------------------------------------------------------
alias emacs="emacs -nw" # Don't use GUI.

# Coloring
# ----------------------------------------------------------
alias ls='ls -B --color=auto'
eval $(dircolors $DOTFILES_PREFIX/prefix/dir_colors -b)
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
