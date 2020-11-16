" オプション
runtime! ./options.rc.vim

" キーマッピング
runtime! ./mapping.rc.vim

" provider (python)
runtime! ./provider.vim

" ファイルタイプ
runtime! ./ft.vim

" インデント
runtime! ./indent_ft.vim

" dein
runtime! dein/dein.rc.vim

autocmd BufNewFile,BufRead *.ts setlocal filetype=typescript

