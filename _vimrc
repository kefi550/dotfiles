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
