set nocompatible

execute pathogen#infect()

filetype on
filetype indent on

let mapleader=","

set autoindent
set hidden
set nowrap
set smartindent
set showmatch

"# Search

set hlsearch
set incsearch


"# Visual

syntax on

set colorcolumn=90
set history=100
set linespace=15
set lines=35 columns=150
set number
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab

"# Split Management

set splitbelow
set splitright

map <C-J> <C-W><C-J>
map <C-K> <C-W><C-K>
map <C-H> <C-W><C-H>
map <C-L> <C-W><C-L>


"# Tab magement

nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>


"# Mapping

nnoremap <Leader>ev :tabedit $MYVIMRC<CR>
nnoremap <Leader><space> :nohlsearch<CR>
nnoremap <Leader><Leader> :e#<CR>


"# Auto-Commands

augroup autosourcing
    autocmd!
    autocmd BufWritePost _vimrc source %
augroup END

"# CtrlP 
set runtimepath^=~/.vim/bundle/ctrlp.vim
set wildignore+=*/tmp/*,*.swp,*.log,*.cache,*.lock
