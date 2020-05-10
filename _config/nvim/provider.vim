if has("mac")
  let g:python3_host_prog = '/usr/bin/python3'
elseif has("unix")
  let g:python3_host_prog = $HOME . '/.pyenv/shims/python'
endif

let g:python_host_prog = $HOME.'/.neovimenv/neovim-2/.venv/bin/python'
let g:python3_host_prog = $HOME . '/.neovimenv/neovim-3/.venv/bin/python'
if exists("$VIRTUAL_ENV")
  "let g:python3_host_prog = $VIRTUAL_ENV . '/bin/python3'
  let g:project_python_path = $VIRTUAL_ENV . '/bin/python3'
else
  let $PATH = $HOME . '/.pyenv/versions/neovim-3/bin:' . $PATH
endif

