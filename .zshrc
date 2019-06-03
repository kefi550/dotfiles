source ~/.zplug/init.zsh
zplug 'zplug/zplug', hook-build:'zplug --self-manage'
#zplug "mafredri/zsh-async"
## history関係
#zplug "zsh-users/zsh-history-substring-search"

# テーマ
zplug "yous/lime"

# 構文のハイライト(https://github.com/zsh-users/zsh-syntax-highlighting)
zplug "zsh-users/zsh-syntax-highlighting"
## タイプ補完
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"

zplug "chrissicool/zsh-256color"
zplug "b4b4r07/enhancd"

#zplug "sindresorhus/pure"

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi
## Then, source plugins and add commands to $PATH
zplug load
##
##
autoload -U compinit
compinit -u
#autoload -Uz colors
#colors
##
#
#export PROMPT="%{$fg_bold[blue]%} %m:%~ $PROMPT"
export PROMPT=$'%{\e[30;48;5;082m%}%{\e[38;5;001m%}[%n@%m]%{\e[0m%} %~ $ '
#export PROMPT="%{$fg_bold[gray]%} %m:%{$fg_bold[cyan]%}~ $ "
export RPROMPT="${HOST} %*"
#
setopt print_eight_bit
setopt nolistbeep
setopt no_beep
#
##export PATH="$(echo "$PATH" | sed -r -e 's;:/mnt/[^:]+;;g')"
##export PATH="$PATH:/mnt/c/Program Files/Oracle/VirtualBox"
export VAGRANT_WSL_ENABLE_WINDOWS_ACCESS="1"
export VAGRANT_WSL_WINDOWS_ACCESS_USER_HOME_PATH=/home/kefi/


## pure setting
#local username=''
#DEFAULT_USERNAME='getwild'
#[ $USER != $DEFAULT_USERNAME ] && local username='%n@%m '
