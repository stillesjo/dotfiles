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
set laststatus=2
let g:gitgutter_enabled = 0


" Key bindings
map <Right> :bn<CR>
map <Left>  :bp<CR>
map <F2> :NERDTreeFocus<CR>
map <F3> :NERDTreeToggle<CR>
map <F4> :NERDTree<CR>
map <C-g> :GitGutterToggle<CR>

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
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'SirVer/ultisnips'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'gmarik/vundle'
Plugin 'scrooloose/snipmate-snippets'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-scriptease'
Plugin 'vhdirk/vim-cmake'
Plugin 'derekwyatt/vim-fswitch'
Plugin '29decibel/codeschool-vim-theme'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-scripts/Wombat'
Plugin 'kien/ctrlp.vim'
Plugin 'honza/vim-snippets'
Plugin 'morhetz/gruvbox'
Plugin 'scrooloose/syntastic'
Plugin 'digitaltoad/vim-jade'
Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter'



set background=dark

" Colors
if has("gui_running")
  if has("unix")
    let s:uname = system("uname -s")
    if s:uname == "Darwin"
      set guifont=Monaco:h12.5,\ Consolas:h12.5,\ 'Courier\ New':h12.5,\ Courier:h12.5
    endif
  endif
  set guioptions=aegiLt
  try
    " colors codeschool
    " colors gruvbox
    colors Tomorrow-Night-Eighties
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

set wildignore+=*/node_modules/*,*/bower_components/*,
