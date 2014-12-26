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
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required! 
Plugin 'gmarik/Vundle.vim'
Plugin 'Lokaltog/powerline'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-fugitive'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'
Plugin 'sjl/gundo.vim'
Plugin 'roman/golden-ratio'
Plugin 'bling/vim-bufferline'
Plugin 'kchmck/vim-coffee-script'
Plugin 'kien/ctrlp.vim'
Plugin 'matze/vim-move'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
Plugin 'klen/python-mode'
Plugin 'digitaltoad/vim-jade'
Plugin 'fatih/vim-go'
Plugin 'vim-scripts/vim-auto-save'
Plugin 'altercation/vim-colors-solarized'
Bundle 'pangloss/vim-javascript'

call vundle#end()

" Enable syntax
syntax enable
filetype plugin indent on

set laststatus=2
let g:Powerline_symbols='fancy'

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
colorscheme solarized
set background=dark

set encoding=utf8
set termencoding=utf8

" pymode settings

let g:pymode_lint_cwindow = 0
let g:pymode_lint_on_fly = 1

" enable autosave
let g:auto_save = 1
