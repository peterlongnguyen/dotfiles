execute pathogen#infect()
set autoindent
set nosmartindent
set number
set tabstop=2
set shiftwidth=2
set expandtab
syntax on
filetype plugin indent on
autocmd BufNewFile,BufRead,BufReadPost *.cson set syntax=coffee
set laststatus=2
set nowrap
set hlsearch
colorscheme default
noremap % v%
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
