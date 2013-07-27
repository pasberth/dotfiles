# -*- sh -*-
autoload -U add-zsh-hook

# promptway
# https://github.com/pasberth/promptway
source $DOTFILES_PREFIX/.vendor/promptway/promptway.zsh

# zsh-syntax-highlighting
# https://github.com/zsh-users/zsh-syntax-highlighting
source $DOTFILES_PREFIX/.vendor/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# The Prompt Style
# ----------------------------------------------------------

zstyle ':prompt:dir' formats "%B%a%b"
zstyle ':prompt:dir:symlink' formats "%B%F{cyan}%a@%f%b"
zstyle ':prompt:way' formats "%a"
zstyle ':prompt:backward' enable t
zstyle ':prompt:backward:dir' formats "%U%a%u"
zstyle ':prompt:backward:dir:symlink' formats "%U%F{cyan}%a@%f%u"
zstyle ':prompt:backward:way' formats "%a"
zstyle ':prompt:truncate' enable t
zstyle ':prompt:truncate' symbol '..'
zstyle ':prompt:truncate' max_length 20
zstyle ":prompt:truncate" show_working_parent t
zstyle ":prompt:truncate" show_backward_parent t
zstyle ":prompt:truncate" show_slash_second_root t
zstyle ":prompt:truncate" show_home_second_root t
zstyle ':prompt:truncate' show_named_dir_second_root t
zstyle ':prompt:permission:dir' formats ' %F{yellow}%b%B%a%%b%f'
zstyle ':prompt:permission:dir' non_owner_symbol '#'
zstyle ':prompt:permission:backward' formats ''
zstyle ':prompt:permission:backward' non_owner_symbol ''

setopt prompt_subst
setopt prompt_percent
setopt transient_rprompt
PROMPT='
$(_print_promptway)
$PROMPT_MAIN  $ '
RPROMPT='%27>..>%(?..%F{red}%B%S%7v%s%b%f)'
PROMPT2='$(echo $PROMPT_MAIN_CONCEALED)... '
RPROMPT2='$(echo "%{\e[1;5m%}%_%{\e[m%}")'
SPROMPT="%F{red}もしかして:%f %U%B%F{blue}%r%f%b%u ? "

  # Hooking for resetting the prompt
  # ........................................................
  add-zsh-hook precmd _rprompt2_precmd
  add-zsh-hook precmd _update_prompt_main
  # add-zsh-hook precmd _update_vcs_info

  function _print_promptway () {
    if [ -n "$_prompt_backward" ]; then
      echo $PROMPT_MAIN_CONCEALED',-- '$_prompt_backward
      echo $PROMPT_MAIN_CONCEALED'`-> '$_prompt_way
    else
      echo $PROMPT_MAIN_CONCEALED'   ['$_prompt_way']'
    fi
  }

  function _rprompt2_precmd () {
    local before_cmd="$history[$[HISTCMD-1]]"
    psvar[7]="$before_cmd" 
  }

  function _update_prompt_main () {
    _update_vcs_info
    PROMPT_MAIN=$VCS_INFO
    local a
    a=$(echo $PROMPT_MAIN | perl -pe 's/%.(\{[^\}]*\})?//g')
    PROMPT_MAIN_CONCEALED=$(perl -e "print ' ' x $#a")
  }

  function _print_overview () {
    echo
    echo -e "\e[1m>>> ls\e[0m"

    if [[ $(ls -C | wc -l) -ge 4 ]] ; then
      ls -C --color=always | head -n3 | sed 's/^/| /'
      #echo -e ":"
      #ls -C --color=always | tail -n1 | sed 's/^/| /'
        echo -e "\e[30;47mlines 1-3/$(ls -C | wc -l)\e[0m"
    else
      ls -C --color=always | sed 's/^/| /'
    fi

    if git status > /dev/null 2>&1 ; then
      echo
      echo -e "\e[1m>>> git status\e[0m"

      if [[ $(git status | wc -l) -ge 10 ]] ; then
        git status | head -n9 | sed 's/^/| /'
        echo -e "\e[30;47mlines 1-9/$(git status | wc -l)\e[0m"
        #git status | tail -n1 | sed 's/^/| /'
      else
        git status | sed 's/^/| /'
      fi
    fi
  }

  function _update_vcs_info () {
    vcs_info
    VCS_INFO=$vcs_info_msg_0_
  }

  # Initialize Variables
  # ........................................................
  # _update_vcs_info # not necessary

# View VCS information
# ----------------------------------------------------------
autoload -U vcs_info

  # Git
  # ........................................................
  zstyle ":vcs_info:git:*" check-for-changes true
  zstyle ":vcs_info:git:*" formats "[%F{green}%c%u%b%f@%r]"
  zstyle ":vcs_info:git:*" actionformats "[%F{red}%b%f@%r]"
  zstyle ":vcs_info:git:*" unstagedstr "%F{yellow}"
  zstyle ":vcs_info:git:*" stagedstr "%F{blue}"

  # Mercurial
  # ........................................................
  zstyle ':vcs_info:hg:*' get-revision ''
  zstyle ':vcs_info:hg:*' formats "[%F{green}%b%f@%r]"
  zstyle ':vcs_info:hg:*' actionformats "[%F{red}%b%f@%r]"

  # Other (TODO)
  # ........................................................
  #zstyle ':vcs_info:*' max-exports 6
  #zstyle ':vcs_info:*' get-unapplied t

# Ghost Windows
# ----------------------------------------------------------

  GHOSTDIR=/tmp/dotfiles/$$/ghost
  mkdir -p $GHOSTDIR
  #export LESS="$LESS -w0 -h0"

  # Overview window
  ghost.new $GHOSTDIR/overview -x 0 -y 3
  ghost.open $GHOSTDIR/overview &

  add-zsh-hook zshexit ghost-zshexit

  function ghost-zshexit () {
    ghost.close $GHOSTDIR/overview
  }

  zle -A .self-insert self-insert
  zle -A .accept-line accept-line
  zle -N self-insert
  zle -N accept-line

  function self-insert () {
    echo > $GHOSTDIR/overview/view
    zle reset-prompt
    zle .self-insert
  }

  function accept-line () {

    if [[ -z $BUFFER ]] ; then
      zle clear-screen
      _print_overview > $GHOSTDIR/overview/view
    else
      zle .accept-line
    fi
  }
