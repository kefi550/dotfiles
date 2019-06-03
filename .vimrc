set visualbell t_vb=

if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=/home/kefi/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('/home/kefi/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

NeoBundle 'tomasr/molokai'

NeoBundle 'Shougo/vimfiler'
NeoBundle 'Shougo/vimproc'

NeoBundle 'Shougo/unite.vim'
NeoBundle 'ujihisa/unite-colorscheme'

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
" NeoBundleCheck


