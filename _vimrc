let g:config_dir = expand('~/.config/vim')
let &runtimepath=&runtimepath . ',' . g:config_dir
let &runtimepath=&runtimepath . ',' . g:config_dir . '/ovim'
let &runtimepath=&runtimepath . ',' . g:config_dir . '/dein'
let &runtimepath=&runtimepath . ',' . g:config_dir . '/color'

" キーマッピング
runtime! mapping.rc.vim

" provider (python)
" runtime! provider.vim

" ファイルタイプごとの設定
runtime! ft.vim

" python
runtime! python.vim

" dein
runtime! dein/dein.rc.vim

" オプション
runtime! options.rc.vim

let g:lsp_diagnostics_signs_warning = {'text': '💩'}
let g:lsp_diagnostics_signs_error = {'text': '💩'}

let g:quickrun_config = {
\    'json': {
\        'outputter/buffer/filetype': 'json',
\        'command': 'jq',
\        'cmdopt': '.',
\        'exec': 'cat %s | sed -z "s/\n//g" | %c %o',
\    }
\}

if system('uname -a | grep microsoft') != ''
   augroup myYank
     autocmd!
     autocmd TextYankPost * :call system('clip.exe', @")
   augroup END
endif")
if system('uname -a | grep Linux | grep -v microsoft') != ''
   augroup myYank
     autocmd!
     autocmd TextYankPost * :call system('xclip -selection c', @")
   augroup END
endif")
