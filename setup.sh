#!/bin/bash

DOTFILE_DIR=$(pwd)

if [ "$(uname)" == 'Darwin' ]; then
  #mac
  if !(type gln > /dev/null); then
    brew install coreutils
  fi
  LN=gln
  :
else
  #linux
  LN=ln
  :
fi

$LN -snfv $DOTFILE_DIR/_config/zsh/p10k.zsh ~/.p10k.zsh
$LN -snfv $DOTFILE_DIR/_zshrc ~/.zshrc

if [ ! -e $HOME/.config ]; then
  mkdir $HOME/.config
fi

$LN -snfv $DOTFILE_DIR/_config/vim ~/.config/
$LN -snfv $DOTFILE_DIR/_config/vim/_vimrc ~/.vimrc
$LN -snfv $DOTFILE_DIR/_config/zsh ~/.config/
$LN -snfv $DOTFILE_DIR/_config/base16-shell ~/.config/
$LN -snfv $DOTFILE_DIR/_tmux.conf ~/.tmux.conf
$LN -snfv $DOTFILE_DIR/_gitconfig ~/.gitconfig
$LN -snfv $DOTFILE_DIR/_textlintrc ~/.textlintrc
$LN -snfv $DOTFILE_DIR/_tool-versions ~/.tool-versions

if [ ! -e $HOME/.vim/colors ]; then
  mkdir -p $HOME/.vim/colors
fi

$LN -snfv $DOTFILE_DIR/submodules/vim-colors-solarized/colors/solarized.vim ~/.vim/colors/

#brew install fzf
# install pynvim
#
## vagrant
## https://qiita.com/apatchk/items/8b1029ceaee60d3e18a2
