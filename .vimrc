syntax on

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set number
set backspace=indent,eol,start
let mapleader=','
set tabstop=4

"--------------------Visuals----------------------"
colorscheme atom-dark-256

set guifont=Fira_Code

set t_CO=256
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R


"---------------------Split----------------------"
set splitbelow
set splitright
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>


"---------------------Search----------------------"
set hlsearch
set incsearch


"-------------------Mappings----------------------"
nmap <Leader>ev :tabedit $MYVIMRC<cr>

nmap <Leader><space> :nohlsearch<cr>


"-------------------Plugins-Config----------------------"
"/CtrlP
let g:ctrlp_custom_ignore = 'node_modules\DS_Store\|git'
let g:ctrlp_match_window = 'top,order:btt,min:1,max:10,results:10'


"-------------------Auto-Commands----------------------"
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END





