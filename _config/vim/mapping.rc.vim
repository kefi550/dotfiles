let mapleader = "\<Space>"

" insertモードから抜ける
inoremap <silent> jj <ESC>
inoremap <silent> <C-j> j
inoremap <silent> kk <ESC>
" inoremap <silent> <C-k> k

"  " ctrl + hjklで画面移動
" noremap <silent> <C-h> <C-w><C-h>
" noremap <silent> <C-j> <C-w><C-j>
" noremap <silent> <C-k> <C-w><C-k>
" noremap <silent> <C-l> <C-w><C-l>

""""""""""""
"" WSL
"let g:is_wsl = strlen(system('uname -a | grep microsoft')) != 0
"
"if g:is_wsl
"  nnoremap <silent>yy :.w !win32yank -i<CR><CR>
"  vnoremap <silent>y :w !win32yank -i<CR><CR>
"  nnoremap <silent>dd :.w !win32yank -i<CR>dd
"  vnoremap <silent>d x:let pos = getpos(".")<CR>GpVG:w !win32yank -i<CR>VGx:call setpos(".", pos)<CR>
"  nnoremap <silent>p :r !win32yank -o<CR>
"  vnoremap <silent>p :r !win32yank -o<CR>
"endif
""""""""""""""""

" LSP

" let g:leader_pressed = 0
" 
" function! CheckLeaderKeyPressed()
"   let g:leader_pressed = 1
"   redraw!
"   echo "getwild"
" endfunction
" 
" noremap <silent> <Space> :call CheckLeaderKeyPressed()<CR>
" 
" function! ClearLeaderKeyPressed()
"   let g:leader_pressed = 0
"   redraw!
"   echo "andtough"
" endfunction
" 
" augroup leaderKeyPressed
"   autocmd!
"   autocmd CmdlineLeave : call ClearLeaderKeyPressed()
" augroup END
