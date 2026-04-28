set nocompatible
set encoding=utf-8
set history=500
syntax on
colorscheme marques-de-itu
set number
set relativenumber
set cursorline
set scrolloff=8
set signcolumn=yes
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent
set incsearch
set hlsearch
set ignorecase
set smartcase
set hidden
set nowrap
set noswapfile
set nobackup
set undofile
set undodir=~/.vim/undodir
set backspace=indent,eol,start
set clipboard=unnamedplus
set splitbelow
set splitright
set laststatus=2
set showmode
set showcmd
set ruler
let mapleader = " "
nnoremap <leader>h :nohlsearch<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <leader>w :w<CR>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
let &t_SI = "\e[2 q"
let &t_SR = "\e[2 q"
let &t_EI = "\e[2 q"
