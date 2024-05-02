set enc=utf=8
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

call plug#begin('~/vimfiles/plugged')
Plug 'jiangmiao/auto-pairs'
call plug#end()

nmap <F2> :w<CR>
autocmd filetype cpp nnoremap <F9> :w<bar> !g++ -std=c++14 % -o %:r -Wl,--stack,268435456<CR>
autocmd filetype cpp nnoremap <F10> :!%:r<CR>
"autocmd filetype cpp nnoremap <C-C> :s/^\(\s*\)\/\/\/\//\1<CR> $
vnoremap <C-C> "+y
map <C-v> "+P
vnoremap <C-C> "+y :let @+=@*<CR>

map <C-l> :tabn<CR>
map <C-k> :tabp<CR>
