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
zstyle ':prompt:truncate' symbol '… '
zstyle ':prompt:truncate' max_length 40
zstyle ":prompt:truncate" show_working_parent yes
zstyle ":prompt:truncate" show_backward_parent yes
zstyle ":prompt:truncate" show_slash_second_root yes
zstyle ":prompt:truncate" show_home_second_root yes

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
