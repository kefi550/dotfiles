#!/bin/bash

DOTFILES=(
	.zshrc 
	.zprofile 
	.vimrc
	.gitconfig
	)

for file in ${DOTFILES[@]}
do
	ln -snfv ~/dotfiles/$file ~/
done
