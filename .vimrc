set fenc=utf-8
set termencoding=utf-8
set nocompatible
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set textwidth=120
set t_Co=256
syntax on
set number
set showmatch
set relativenumber
set mouse=a
set guifont=Lucida_Console:h12
set backspace=indent,eol,start

call plug#begin('~/.vim/plugged')
Plug 'jiangmiao/auto-pairs'
Plug 'bluz71/vim-nightfly-colors', { 'as': 'nightfly' }

call plug#end()

colorscheme nightfly
nmap <F2> :w<CR>
autocmd filetype cpp nnoremap <F9> :w<bar> !g++ -std=c++14 % -o %:r -Wl,--stack,268435456<CR>
autocmd filetype cpp nnoremap <F10> :!%:r<CR>
"autocmd filetype cpp nnoremap <C-C> :s/^\(\s*\)\/\/\/\//\1<CR> $
vnoremap <C-C> "+y
map <C-v> "+P
vnoremap <C-C> "+y :let @+=@*<CR>

map <C-l> :tabn<CR>
map <C-k> :tabp<CR>
map <C-s> :wq<CR>
map <C-q> :q<cr>
map <C-d> :w<CR>
map <C-a> :terminal<CR>


let &t_SI = "\e[5 q"   " cursor in insert mode
let &t_EI = "\e[2 q"   " cursor in normal mode
let &t_SR = "\e[3 q"   " cursor in replace mode
let &t_ti .= "\e[2 q"  " cursor when vim starts
let &t_te .= "\e[3 q"  " cursor when vim exits
