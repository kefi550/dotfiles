let g:deoplete#enable_at_startup = 1

" ポップアップメニューで表示される候補の数
let g:neocomplete#max_list = 50
" キーワードの長さ、デフォルトで80
let g:neocomplete#max_keyword_width = 80
let g:neocomplete#enable_ignore_case = 1
highlight Pmenu ctermbg=6
highlight PmenuSel ctermbg=3
highlight PMenuSbar ctermbg=0
" バックスペースで補完のポップアップを閉じる
" inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" エンターキーで補完候補の確定. スニペットの展開もエンターキーで確定・・・・・・②
" imap <expr><CR> neosnippet#expandable() ? "\<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "\<C-y>" : "\<CR>"
" imap <expr><CR> neosnippet#expandable() ? "\<Plug>(neosnippet_expand)" : pumvisible() ? "\<C-y>" : "\<CR>"
" " タブキーで補完候補の選択. スニペット内のジャンプもタブキーでジャンプ・・・・・・③
" imap <expr><TAB> pumvisible() ? "\<C-n>" : neosnippet#jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
