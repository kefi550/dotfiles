#/bin/sh

NEOVIM_PYTHON2_VERSION="2.7.17"
NEOVIM_PYTHON3_VERSION="3.8.1"

if ! [ -x "$(which nvim)" ]; then
  brew install nvim
fi

# python venv for neovim
if which poetry &> /dev/null; then
  mkdir -p ~/.neovimenv/neovim-2
  ln -snfv $DOTFILE_DIR/neovim/neovim-python2/pyproject.toml $HOME/.neovimenv/neovim-2/
  cd $HOME/.neovimenv/neovim-2
  pyenv versions | grep "${NEOVIM_PYTHON2_VERSION}" &> /dev/null || pyenv install ${NEOVIM_PYTHON2_VERSION}
  pyenv local ${NEOVIM_PYTHON2_VERSION}
  poetry install

  mkdir -p ~/.neovimenv/neovim-3
  ln -snfv $DOTFILE_DIR/neovim/neovim-python3/pyproject.toml $HOME/.neovimenv/neovim-3/
  cd $HOME/.neovimenv/neovim-3
  pyenv versions | grep "${NEOVIM_PYTHON3_VERSION}" &> /dev/null || pyenv install ${NEOVIM_PYTHON3_VERSION}
  pyenv local ${NEOVIM_PYTHON3_VERSION}
  poetry install
fi
