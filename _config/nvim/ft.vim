augroup filetypedetect
  au BufRead,BufNewFile *.yaml setfiletype ansible
  au BufRead,BufNewFile *.yml  setfiletype ansible
  autocmd BufRead,BufNewFile *.dircolors set filetype=dircolors
augroup END

""""""""""""""""""""""""""""""""""""""""""""""""
" yaml書くとき
let g:ansible_options = {'ignore_blank_lines': 0}

augroup filetypedetect
  au BufRead,BufNewFile *.yaml setfiletype ansible
  au BufRead,BufNewFile *.yml  setfiletype ansible
augroup END
