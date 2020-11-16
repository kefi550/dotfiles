let g:config_dir = expand('~/.config/vim')
let &runtimepath=&runtimepath . ',' . g:config_dir
let &runtimepath=&runtimepath . ',' . g:config_dir . '/ovim'
let &runtimepath=&runtimepath . ',' . g:config_dir . '/dein'
let &runtimepath=&runtimepath . ',' . g:config_dir . '/color'

" キーマッピング
runtime! mapping.rc.vim

" provider (python)
" runtime! provider.vim

" ファイルタイプ
runtime! ft.vim

" インデント
runtime! indent_ft.vim

" python
runtime! python.vim

" dein
runtime! dein/dein.rc.vim

" オプション
runtime! options.rc.vim

autocmd BufNewFile,BufRead *.ts setlocal filetype=typescript
let g:lsp_signs_warning = {'text': '💩'}
