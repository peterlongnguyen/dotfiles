execute pathogen#infect()
set autoindent
set nosmartindent
set number
set tabstop=2
set shiftwidth=2
set expandtab
syntax on
set laststatus=2
set nowrap
set hlsearch
autocmd BufNewFile,BufRead,BufReadPost *.cson set syntax=coffee
colorscheme default
filetype plugin indent on
noremap % v%
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
