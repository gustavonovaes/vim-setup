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
let g:ctrlp_user_command = {
  \ 'types': {
    \ 1: ['.git', 'cd %s && git ls-files --cached --exclude-standard --others'],
    \ },
  \ 'fallback': 'find %s -type f'
  \ }

"# NERDTree 
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>j :NERDTreeFind<CR>
let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp', 'node_modules']

" close vim if only NERDTree is open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" start NERDTree if file is not specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"# Lightline
let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ 'component': {
      \   'readonly': '%{&readonly?"⭤":""}',
      \ }
      \ }
set laststatus=2
