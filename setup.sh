#!/bin/bash

DOTFILE_DIR=$(pwd)

ln -snfv $DOTFILE_DIR/_zshrc ~/.zshrc

ln -snfv $DOTFILE_DIR/_config ~/.config
ln -snfv $DOTFILE_DIR/_tmux.conf ~/.tmux.conf
ln -snfv $DOTFILE_DIR/_gitconfig ~/.gitconfig
#ln -snfv $DOTFILE_DIR/_vimrc ~/.vimrc

## TODO: zpluginのinstall
## TODO: brewのinstall
#sudo apt install linuxbrew-wrapper
#brew doctor
#brew install fzf
#
## vagrant
## https://qiita.com/apatchk/items/8b1029ceaee60d3e18a2
