if &compatible
  set nocompatible
endif
if has('nvim')
  let s:dein_dir = expand('~/.cache/dein_nvim')
else
  let s:dein_dir = expand('~/.cache/dein_vim')
endif
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" dein.vim がなければ github から落としてくる
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)
  
  let s:dein_toml_dir = g:config_dir . '/dein'
  let s:toml      = s:dein_toml_dir . '/dein.toml'
  let s:lazy_toml = s:dein_toml_dir . '/dein_lazy.toml'
  call dein#load_toml(s:toml, {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})
  if has('nvim')
    " nvim用dein
    let s:nvim_toml      = s:dein_toml_dir . '/dein_nvim.toml'
    " let s:nvim_lazy_toml = g:dein_toml_dir . '/dein_lazy_nvim.toml'
    call dein#load_toml(s:nvim_toml, {'lazy': 0})
    " call dein#load_toml(s:vim_lazy_toml, {'lazy': 1})
  else
    " vim用dein
    let s:vim_toml      = s:dein_toml_dir . '/dein_vim.toml'
    let s:vim_lazy_toml = s:dein_toml_dir . '/dein_lazy_vim.toml'
    " TOML を読み込み、キャッシュしておく
    call dein#load_toml(s:vim_toml, {'lazy': 0})
    call dein#load_toml(s:vim_lazy_toml, {'lazy': 1})
  endif


  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

" もし、未インストールものものがあったらインストール
if dein#check_install()
  call dein#install()
endif
