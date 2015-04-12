" Just stuff
syntax on
filetype plugin on
filetype indent on
set nocompatible
set novisualbell
set noerrorbells
set tabstop=2
set shiftwidth=2 
set cino=g0
set showmatch
set expandtab
set number

" Key bindings
map <Right> :bn<CR>
map <Left>  :bp<CR>
map <F2> :NERDTreeFocus<CR>
map <F3> :NERDTreeToggle<CR>
map <F4> :NERDTree<CR>

" Fix pathogen
execute pathogen#infect()

" Fix bundles
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" NERDTree will ignore pyc-files
let NERDTreeIgnore = ['\.pyc$']

" Ctrl-P key bindings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" My bundles
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'SirVer/ultisnips'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails'
Bundle 'gmarik/vundle'
Bundle 'scrooloose/snipmate-snippets'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-scriptease'
Bundle 'vhdirk/vim-cmake'
Bundle 'derekwyatt/vim-fswitch'
Bundle '29decibel/codeschool-vim-theme'
Bundle 'altercation/vim-colors-solarized'
Bundle 'vim-scripts/Wombat'
Bundle 'kien/ctrlp.vim'
Bundle 'honza/vim-snippets'


set background=dark

" Colors
if has("gui_running")
  try
    colors codeschool
  catch 
    colors desert
  endtry
else
  try
    colors wombat
  catch
    colors desert
  endtry
endif
