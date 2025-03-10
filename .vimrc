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

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let &t_SI = "\e[5 q"   " cursor in insert mode
let &t_EI = "\e[2 q"   " cursor in normal mode
let &t_SR = "\e[3 q"   " cursor in replace mode
let &t_ti .= "\e[2 q"  " cursor when vim starts
let &t_te .= "\e[3 q"  " cursor when vim exits
