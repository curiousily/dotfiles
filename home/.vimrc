set encoding=utf-8
set autoread " reload files when changed
set nocompatible " use only new features
autocmd! bufwritepost .vimrc source % " automatic re-sourcing this file

" Rebind leader
let mapleader = ","

set mouse=a

" Use spaces instead of tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
set autoindent
set smartindent

set t_Co=256
set guifont=Source\ Code\ Pro\ for\ Powerline:h12

" yank copies to the system clipboard
set clipboard=unnamed

" keep more of the history
set history=700
set undolevels=700

" highlight searches
set hlsearch
set showmatch
set incsearch
set ignorecase
set smartcase

" adjust line wraping
set wrap
set linebreak
set textwidth=79
set number
set relativenumber

set scrolloff=10 " maring for the scrolling cursor

" Use vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'Lokaltog/powerline'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tpope/vim-fugitive'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-session'
Bundle 'sjl/gundo.vim'
Bundle 'roman/golden-ratio'
Bundle 'bling/vim-bufferline'
Bundle 'altercation/vim-colors-solarized'
Bundle 'dag/vim2hs'
Bundle 'kchmck/vim-coffee-script'

" Enable syntax
syntax enable
filetype plugin indent on

set laststatus=2
let g:Powerline_symbols = 'fancy'

set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim

set wildmenu " enable tab command menu

set cursorline " highlight current line

" Remap arrow keys

noremap <left> <nop>
noremap <right> <nop>
noremap <up> <nop>
noremap <down> <nop>

" backspacing
set backspace=indent,eol,start

" Store backup files elsewhere

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//

" Disable autosave session

:let g:session_autosave = 'no'

" autocommands ------------------------------------------------------------
" opens the file at the exact place of from the last opening
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif

" coloring
let g:solarized_termcolors = 24
let g:solarized_contrast = 'high'
set background=dark
color solarized

" Haskell config
let g:haskell_conceal_wide = 1
