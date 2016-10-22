set statusline=%<%F%h%m%r%h%w%y\ %{&ff}\ %{strftime(\"%c\",getftime(expand(\"%:p\")))}%=\ lin:%l\,%L\ col:%c%V\ pos:%o\ ascii:%b\ %P
set laststatus=2
set number
set wrap
set linebreak
set expandtab
set shiftwidth=2
set softtabstop=2
set clipboard=unnamedplus
set binary
set nocompatible
set modeline
syntax on
colorscheme desert
set paste
set tabstop=2
set softtabstop=2
set shiftwidth=2
map <F7> mzgg=G`z<CR>


"for nerdtree
set encoding=utf-8
execute pathogen#infect()
let NERDTreeShowHidden=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
autocmd vimenter * if !argc() | NERDTree | endif
map <F5> :NERDTreeToggle<CR>
let g:NERDTreeDirArrows=0
