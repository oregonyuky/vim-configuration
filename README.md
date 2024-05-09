# Vim configuration based on my set up
try to use your vim more efficiently
## Plug Install (windows)
Install this on powershell 
```
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni $HOME/vimfiles/autoload/plug.vim -Force
```
## English set up (windows)
Install also this on powershell
```
Set-WinSystemLocale en-US
Set-WinUserLanguageList en-US
```
##Important part Vim .vimrc
So now you can set up this script to use [vim][] with c++ compile
```
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
```
[vim]: https://www.vim.org/
## clang (optional)
if you don`t have mingw on you path. You can choose to install clang conpiler version on this system
```
https://github.com/llvm/llvm-project/releases/tag/llvmorg-16.0.4
```
