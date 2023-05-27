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

mkdir -p $HOME/.config

$LN -snfv $DOTFILE_DIR/_config/vim ~/.config/
$LN -snfv $DOTFILE_DIR/_vimrc ~/.vimrc
mkdir -p $HOME/.config/nvim
$LN -snfv $DOTFILE_DIR/_vimrc ~/.config/nvim/init.vim
$LN -snfv $DOTFILE_DIR/_config/zsh ~/.config/
$LN -snfv $DOTFILE_DIR/_tmux.conf ~/.tmux.conf
$LN -snfv $DOTFILE_DIR/_gitconfig ~/.gitconfig
$LN -snfv $DOTFILE_DIR/_textlintrc ~/.textlintrc
$LN -snfv $DOTFILE_DIR/_tool-versions ~/.tool-versions

mkdir -p $HOME/.vim/colors
$LN -snfv $DOTFILE_DIR/submodules/vim-colors-solarized/colors/solarized.vim ~/.vim/colors/
mkdir -p $HOME/.config/nvim/colors
$LN -snfv $DOTFILE_DIR/submodules/vim-colors-solarized/colors/solarized.vim ~/.config/nvim/colors/
$LN -snfv $DOTFILE_DIR/submodules/base16-shell ~/.config/
