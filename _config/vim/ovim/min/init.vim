let g:python_host_prog = $HOME.'/.pyenv/versions/neovim-2/bin/python'
let g:python3_host_prog = $HOME . '/.pyenv/versions/neovim-3/bin/python'
if exists("$VIRTUAL_ENV")
  let g:project_python_path = $VIRTUAL_ENV . '/bin/python3'
else
  " QuickRun実行時対応
  let $PATH = $HOME . '/.pyenv/versions/neovim-3/bin:' . $PATH
endif

runtime! dein/dein.rc.vim
