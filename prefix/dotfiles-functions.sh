dotfiles-setup () {
  local pwd=$PWD
  cd $DOTFILES_PREFIX && \
  git submodule init && \
  git submodule update || return 1
  cd $DOTFILES_PREFIX/.vendor/autojump && \
  ./install.sh --zsh --local --prefix $DOTFILES_PREFIX/local || return 1
  cd $pwd
}

dotfiles-sync () {

  local ret=0

  if [ $# -eq 0 ]; then
    local _home=$HOME
  else
    local _home=$1
  fi

  for dotfile in $(ls -A $DOTFILES_PREFIX/home); do
    if [ ! -e $_home/$dotfile ]; then
      echo -n "creating symbolic link $DOTFILES_PREFIX/home/$dotfile to $_home/$dotfile ..."
      ln -s $DOTFILES_PREFIX/home/$dotfile $_home
      echo "done."
    elif [ -L $_home/$dotfile ]; then
      local pt=`readlink $_home/$dotfile`
      if [ $pt = $DOTFILES_PREFIX/home/$dotfile ]; then
        echo "$_home/$dotfile exists and was skipped."
      else
        echo -n "warning: " 1>&2
        echo -n "$_home/$dotfile exists but points to $pt " 1>&2
        echo    "and doesn't points to $DOTFILES_PREFIX/home/$dotfile." 1>&2
        ret=1
      fi
    else
      echo "$0: $_home/$dotfile exists." 1>&2
      ret=1
    fi
  done

  return $ret
}

dotfiles-uninstall () {
  for dotfile in $(ls -A $DOTFILES_PREFIX/home); do
    if [ ! -e $HOME/$dotfile ]; then
      echo  "$HOME/$dotfile not exists and was skipped."
    elif [ -L $HOME/$dotfile ]; then
      local pt=`readlink $HOME/$dotfile`
      if [ $pt = $DOTFILES_PREFIX/home/$dotfile ]; then
        echo "remove $HOME/$dotfile."
	rm $HOME/$dotfile
      else
        echo -n "warning: " 1>&2
        echo -n "$HOME/$dotfile exists but points to $pt " 1>&2
        echo    "and doesn't points to $DOTFILES_PREFIX/home/$dotfile." 1>&2
      fi
    else
      echo "$0: $HOME/$dotfile exists." 1>&2
    fi
  done
}
