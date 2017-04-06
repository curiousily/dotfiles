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
set guifont=Menlo\ for\ Powerline:h11

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

" Use vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required! 
Plugin 'gmarik/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-fugitive'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'
Plugin 'sjl/gundo.vim'
Plugin 'roman/golden-ratio'
Plugin 'bling/vim-bufferline'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'Raimondi/delimitMate'
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax' 
Plugin 'Shougo/unite.vim'
Plugin 'rhysd/vim-grammarous'
Plugin 'joshdick/onedark.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'junegunn/vim-easy-align'

call vundle#end()

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

" coloring
colorscheme onedark

set encoding=utf8
set termencoding=utf8

let g:onedark_terminal_italics=1

" Airline config

let g:airline_theme="onedark"
let g:airline#extensions#tabline#enabled = 1

" UltiSnips config

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Grammarous

let g:grammarous#languagetool_cmd = 'languagetool'
let g:grammarous#use_vim_spelllang = 1

" Gundo

let g:gundo_prefer_python3 = 1

" Syntastic

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
