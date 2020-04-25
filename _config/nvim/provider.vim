if has("mac")
  let g:python3_host_prog = '/usr/bin/python3'
elseif has("unix")
  let g:python3_host_prog = $HOME . '/.pyenv/shims/python'
endif

let g:python_host_prog = $HOME.'/.pyenv/versions/neovim-2/bin/python'
let g:python3_host_prog = $HOME . '/.pyenv/versions/neovim-3/bin/python'
if exists("$VIRTUAL_ENV")
  "let g:python3_host_prog = $VIRTUAL_ENV . '/bin/python3'
  let g:project_python_path = $VIRTUAL_ENV . '/bin/python3'
else
  let $PATH = $HOME . '/.pyenv/versions/neovim-3/bin:' . $PATH
endif

