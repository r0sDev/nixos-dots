set nocompatible
set encoding=utf-8
set history=500
syntax on
colorscheme white
set nonumber
set norelativenumber
set signcolumn=no
set foldcolumn=0
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

" Netrw como sidebar (estilo VSCode)
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_winsize = 25
let g:netrw_browse_split = 4
nnoremap <leader>e :Vexplore<CR>

highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=233 guifg=NONE guibg=#121212
autocmd InsertEnter * highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=234 guifg=NONE guibg=#1c1c1c
autocmd InsertLeave * highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=233 guifg=NONE guibg=#121212
