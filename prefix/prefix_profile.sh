# For bash, and zsh.
# ==========================================================

# Initialize Variables of Dotfiles
# ----------------------------------------------------------
if [ -z "$DOTFILES_PREFIX" ]; then
  DOTFILES_PREFIX=`dirname $(dirname $(readlink "$0"))`
fi

# Language
# ----------------------------------------------------------
export LANG=ja_JP.UTF-8
export LESSCHARSET=utf-8

# Setting for the history
# ----------------------------------------------------------
export HISTSIZE=10000
export HISTFILE=$HOME/.bash_history
export SAVEHIST=$HISTSIZE

# Ncurses
# ----------------------------------------------------------
# export ESCDELAY=25

export EDITOR=emacs

# PATH
# ----------------------------------------------------------

  PATH=$DOTFILES_PREFIX/prefix/bin:$PATH
  PATH=$DOTFILES_PREFIX/local/bin:$PATH

  # for rubygems
  PATH=$HOME/.gem/ruby/$(ruby -e 'puts (RUBY_VERSION > "1.9.1") ? "1.9.1" : "1.8"')/bin:$PATH

  export PATH

# OS Dependencies
# ----------------------------------------------------------
case ${OSTYPE} in
# For Lion
# ----------------------------------------------------------
darwin11*)
  [ -f $DOTFILES_PREFIX/osx/10.7/bash_profile.sh ] && \
  source $DOTFILES_PREFIX/osx/10.7/bash_profile.sh;;
# For Mountain Lion
# ----------------------------------------------------------
darwin12*)
  [ -f $DOTFILES_PREFIX/osx/10.8/bash_profile.sh ] && \
  source $DOTFILES_PREFIX/osx/10.8/bash_profile.sh;;
esac
