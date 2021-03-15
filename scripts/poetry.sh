#!/usr/bin/zsh

sudo apt install python3-distutils
which poetry &> /dev/null
if [ $? != 0 ]; then
  curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python
fi
poetry config virtualenvs.in-project true
