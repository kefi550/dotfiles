export TERM=xterm-256color

export DOTFILE_DIR=$HOME/dotfiles
export XDG_CONFIG_HOME=~/.config
export XDG_CACHE_HOME=~/.cache

# vagrant
#export VAGRANT_WSL_ENABLE_WINDOWS_ACCESS="1"
#export VAGRANT_HOME="~/.vagrant.d"
#export VAGRANT_WSL_WINDOWS_ACCESS_USER=ishibashi

## golang
# export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export GO111MODULE=on

## python
#PYTHON_BIN_PATH="$(python3 -m site --user-base)/bin"
#PATH="$PATH:$PYTHON_BIN_PATH"
#export PATH="$HOME/.local/bin:$PATH"

## pyenv
#if [ -d $HOME/.pyenv ]; then
#  PYENV_ROOT="$HOME/.pyenv"
#  PATH="$PYENV_ROOT/bin:$PATH"
#  if command -v pyenv 1>/dev/null 2>&1; then
#    eval "$(pyenv init -)"
#  #eval "$(pyenv virtualenv-init -)"
#  fi
#fi

# poetry
if [ -d $HOME/.poetry ]; then
  export PATH=$HOME/.poetry/bin:$PATH
fi

# pipenv
export PIPENV_VENV_IN_PROJECT=1

# brew for ubuntu
if [ -d /home/linuxbrew/.linuxbrew ] ; then
#if which brew &> /dev/null; then
  export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
  export MANPATH="/home/linuxbrew/.linuxbrew/share/man:$MANPATH"
  export INFOPATH="/home/linuxbrew/.linuxbrew/share/info:$INFOPATH"
  #umask 002
fi

## volta
export VOLTA_HOME=$HOME/.volta
export PATH="$VOLTA_HOME/bin:$PATH"

# asdf
if [ -d $HOME/.asdf ]; then
  . $HOME/.asdf/asdf.sh
  fpath=(${ASDF_DIR}/completions $fpath)
fi

## yarn
if which yarn &> /dev/null ; then
  export PATH="$PATH:`yarn global bin`"
fi

# aws-vault
if type aws-vault > /dev/null 2>&1; then
  eval "$(aws-vault --completion-script-zsh)"
  export AWS_VAULT_BACKEND=pass
  export AWS_VAULT_PASS_PREFIX=aws-vault
fi

# kubectl
if type kubectl > /dev/null 2>&1; then
  source <(kubectl completion zsh)
fi

# awscli
## completion
LATEST_AWSCLI_PATH=$(ls -d ${HOME}/.asdf/installs/awscli/* | sort | head -n1)
if [ -f "${LATEST_AWSCLI_PATH}/bin/aws_zsh_completer.sh" ]; then
  source "${LATEST_AWSCLI_PATH}/bin/aws_zsh_completer.sh"
fi

# fzf
# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# p10k
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# terraform
if type terraform > /dev/null 2>&1; then
  autoload -U +X bashcompinit && bashcompinit
  complete -o nospace -C $HOME/.asdf/shims/terraform terraform
fi

# docker
export DOCKER_BUILDKIT=1
