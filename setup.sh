#!/bin/bash

DOTFILE_DIR=$(pwd)

ln -snfv $DOTFILE_DIR/_config/zsh/p10k.zsh ~/.p10k.zsh
ln -snfv $DOTFILE_DIR/_zshrc ~/.zshrc

ln -snfv $DOTFILE_DIR/_config/vim ~/.config/
ln -snfv $DOTFILE_DIR/_config/zsh ~/.config/
ln -snfv $DOTFILE_DIR/_config/base16-shell ~/.config/
ln -snfv $DOTFILE_DIR/_tmux.conf ~/.tmux.conf
ln -snfv $DOTFILE_DIR/_gitconfig ~/.gitconfig
ln -snfv $DOTFILE_DIR/_textlintrc ~/.textlintrc
ln -snfv $DOTFILE_DIR/_vimrc ~/.vimrc
ln -snfv $DOTFILE_DIR/_tool-versions ~/.tool-versions

#brew install fzf
# install pynvim
#
## vagrant
## https://qiita.com/apatchk/items/8b1029ceaee60d3e18a2
