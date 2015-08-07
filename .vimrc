set nocompatible             " be improved, required
filetype off                 " required

" set the runtime path to include Vundle and initialize
set rtp+=~/usr/share/vim/vimfiles/autoload/vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" fuzzy search tool
Plugin 'kien/ctrlp.vim'
let g:ctrlp_max_files=0
" search from current working directory instead of project root
" let g:ctrlp_working_path_mode=0

" grep replacement (mostly)
Plugin 'rking/ag.vim'

" tree directory browser
Plugin 'scrooloose/nerdtree'
let g:NERDTreeDirArrows=0

" syntax checker
Plugin 'scrooloose/syntastic'
let g:syntastic_ruby_checkers = ['mri', 'rubylint']

" automatic closing braces, parenthesis, brackets, etc
Plugin 'Raimondi/delimitMate'

" RoR power tools for vim
Plugin 'tpope/vim-rails'

" 256 Colorscheme
Plugin 'morhetz/gruvbox'

" status bar on bottom
Plugin 'bling/vim-airline'
" always show status bar
set laststatus=2
" show buffer bar when no tabs are open
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#left_sep=' '
let g:airline#extensions#tabline#left_alt_sep='|'

" Handles problems with C and C++ files between YCM and Syntastic
let g:ycm_confirm_extra_conf=0

call vundle#end()            " required
filetype plugin indent on    " required



" ===> The Rest <===

let mapleader="\<Space>"

" => Colors and Fonts
syntax enable
set t_Co=256
colorscheme gruvbox
set bg=dark

" => Spaces and Tabs
set tabstop=2                " number of visual spaces per TAB
set softtabstop=2            " number of spaces in tab when editing
set expandtab                " tabs are spaces
set smarttab                 " smart tabs ;)
set autoindent               " auto indent tabs
set smartindent              " smart indent ;)
set shiftwidth=2             " something cool

" => UI Config
set number                   " show line numbers
set showcmd                  " show command in bottom bar
filetype indent on           " load filetype-specific indent files
set wildmenu                 " visual autocomplete for command menu
set lazyredraw               " redraw only when needed
set showmatch                " highlight matching [{()}]
set ruler                    " always show current location
set hidden                   " buffer becomes hidden when it is abandoned
set so=4                     " set 4 lines to the cursor when moving vertically
set cmdheight=2              " set cmd height
set autoread                 " reload files read outside of vim
set noerrorbells             " no ding for vim error
set novisualbell             " no flashing screen for vim error

" => Searching
set incsearch                " search as characters are entered
set hlsearch                 " highlight matches
set ignorecase               " ignore case when searching
set smartcase                " smart stuff ;)

" => History
set history=1000             " save 1000 lines of history
set undolevels=1000          " save last 1000 undos



" ===> Keybinds <===

" scroll one line at a time, ignore line wraps
nnoremap j gj
nnoremap k gk

" open NERDTree w/ :NERDTree
nnoremap <Leader>n :NERDTree<CR>

" open new file with :CtrlP
nnoremap <Leader>o :CtrlP<CR>

" fast Save
nnoremap <Leader>w :w<CR>

" copy and Paste stuffz
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

" automatically jump to end of text you pasted
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]
