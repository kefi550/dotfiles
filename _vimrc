let g:config_dir = expand('~/.config/vim')
let &runtimepath=&runtimepath . ',' . g:config_dir

" キーマッピング
runtime! mapping.rc.vim

" オプション
runtime! options.rc.vim

" dein
runtime! dein.rc.vim
