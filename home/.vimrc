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

set termguicolors

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
set textwidth=0
set wrapmargin=0
set number
set relativenumber

set scrolloff=10 " maring for the scrolling cursor

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" let Vundle manage Vundle
" required! 
Plug 'sjl/gundo.vim'
Plug 'roman/golden-ratio'
Plug 'bling/vim-bufferline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'Raimondi/delimitMate'
Plug 'Shougo/unite.vim'
Plug 'joshdick/onedark.vim'
Plug 'junegunn/vim-easy-align'
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'itchyny/lightline.vim'

" Initialize plugin system
call plug#end()

let delimitMate_expand_cr = 1

" Enable syntax
syntax enable
filetype plugin indent on

set laststatus=2

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


set encoding=utf8
set termencoding=utf8

" coloring
colorscheme onedark
let g:onedark_terminal_italics=1
let g:onedark_termcolors=16

let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }
