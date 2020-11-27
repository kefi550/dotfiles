#!/bin/bash

# https://asdf-vm.com/#/core-manage-asdf-vm?id=install-asdf-vm

git clone https://github.com/asdf-vm/asdf.git ~/.asdf
cd ~/.asdf
git checkout "$(git describe --abbrev=0 --tags)"
