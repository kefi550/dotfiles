#!/bin/bash

DOTFILE_DIR=$(pwd)

ln -snfv $DOTFILE_DIR/_zshrc ~/.zshrc

ln -snfv $DOTFILE_DIR/_config ~/.config
ln -snfv $DOTFILE_DIR/_vimrc ~/.vimrc
#ln -snfv $DOTFILE_DIR./_gitconfig ~/.gitconfig
ln -snfv $DOTFILE_DIR/_tmux.conf ~/.tmux.conf

# TODO: zpluginのinstall
# TODO: brewのinstall
