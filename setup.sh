#!/bin/bash

DOTFILES=(.zshrc .zprofile .vimrc)

for file in ${DOTFILES[@]}
do
	ln -snfv ~/dotfiles/$file ~/
done
