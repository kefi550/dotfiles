" filetypeまわり
""""""""""
filetype indent on
if has("autocmd")
  "ファイルタイプの検索を有効にする
  filetype plugin on
  "ファイルタイプに合わせたインデントを利用
  filetype indent on
  "sw=softtabstop, sts=shiftwidth, ts=tabstop, et=expandtabの略
  autocmd FileType c           setlocal sw=4 sts=4 ts=4 et
  autocmd FileType go          setlocal sw=4 sts=4 ts=4 noet
  autocmd FileType html        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType ruby        setlocal sw=2 sts=2 ts=2 et
  autocmd FileType js          setlocal sw=4 sts=4 ts=4 et
  autocmd FileType zsh         setlocal sw=4 sts=4 ts=4 et
  autocmd FileType python      setlocal sw=4 sts=4 ts=4 et
  autocmd FileType scala       setlocal sw=4 sts=4 ts=4 et
  autocmd FileType json        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType yml         setlocal sw=2 sts=2 ts=2 et
  autocmd FileType yaml        setlocal sw=2 sts=2 ts=2 et
  autocmd FileType html        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType css         setlocal sw=4 sts=4 ts=4 et
  autocmd FileType scss        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType sass        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType javascript  setlocal sw=4 sts=4 ts=4 et
endif

augroup filetypedetect
  autocmd BufRead,BufNewFile *.dircolors set filetype=dircolors
augroup END
""""""""""

" optionもろもろ
""""""""""
set noswapfile
set encoding=UTF-8
set termencoding=utf-8
scriptencoding utf-8
" 保存時の文字コード
set fileencoding=utf-8
" 読み込み時の文字コードの自動判別. 左側が優先される
set fileencodings=ucs-boms,utf-8,euc-jp,cp932
" 改行コードの自動判別. 左側が優先される
set fileformats=unix,dos,mac
" □や○文字が崩れる問題を解決"
set ambiwidth=double
"行数を表示する
set number
set backspace=indent,eol,start
"ヤンクした時にクリップボードにコピーする
"set clipboard=unnamed,autoselect

" タブ入力を複数の空白入力に置き換える
set expandtab
" 画面上でタブ文字が占める幅
set tabstop=2
" 連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
set softtabstop=4
" 改行時に前の行のインデントを継続する
set autoindent
" 改行時に前の行の構文をチェックし次の行のインデントを増減する
set smartindent
" smartindentで増減する幅"
set shiftwidth=2

" cmdheitht
set cmdheight=2

set hidden

" インクリメンタルサーチ. １文字入力毎に検索を行う
set incsearch
" 検索パターンに大文字小文字を区別しない
set ignorecase
" 検索パターンに大文字を含んでいたら大文字小文字を区別する
set smartcase
" 検索結果をハイライト"
set hlsearch

set re=0

" 不可視文字を可視化(タブが「▸-」と表示される)
set list listchars=tab:\▸\-

" カーソルの左右移動で行末から次の行の行頭への移動が可能になる
set whichwrap=b,s,h,l,<,>,[,],~

" カーソルラインをハイライト"
set cursorline

set t_Co=256
let g:solarized_termcolors=256
set background=dark
colorscheme solarized
" colorscheme molokai
""""""""""

" clipboard
""""""""""
" WSL
if system('uname -a | grep microsoft') != ''
   augroup myYank
     autocmd!
     autocmd TextYankPost * :call system('clip.exe', @")
   augroup END
endif")
" Mac
if system('uname -a | grep Darwin') != ''
   augroup myYank
     autocmd!
     autocmd TextYankPost * :call system('pbcopy', @")
   augroup END
endif")
" WSL以外
if system('uname -a | grep Linux | grep -v microsoft') != ''
   augroup myYank
     autocmd!
     autocmd TextYankPost * :call system('xclip -selection c', @")
   augroup END
endif")
""""""""""

" python
""""""""""
function! s:findRoot(target)
  let dir = getcwd()
  while 1
    let files = split(globpath(l:dir, '*'), '\n')
    for f in l:files
        if a:target == fnamemodify(f, ':t')
            return l:dir
        endif
    endfor
    if l:dir == "/"
      break
    endif
    let dir = fnamemodify(l:dir, ':h')
  endwhile
  return ""
endfunction

function! s:setVenv()
  let dir = s:findRoot('Pipfile')
  echo l:dir
  if dir != ""
    let $VIRTUAL_ENV = trim(system("cd " . l:dir . "; pipenv --venv"))
  endif
endfunction

autocmd FileType python call s:setVenv()
""""""""""
