version 6.0

set nocompatible
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
nmap gx <Plug>NetrwBrowseX
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cfile>"),0)
let &cpo=s:cpo_save
unlet s:cpo_save
set autoread
set background=dark
set backspace=eol,start,indent
set fileencodings=utf-8
set helplang=en
set ruler
set scrolloff=7
set shiftwidth=4
set showmatch
set softtabstop=4
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set tabstop=4
set textwidth=500

" 狀態列的行數，預設一行
set cmdheight=1

" print the line number in front of each line
set number

set showmode

" enable filetype plugin
filetype off
filetype plugin on
filetype indent on
autocmd Filetype python setlocal expandtab
syntax enable

" let vim support 256 colors
set t_Co=256

" vim: set ft=vim :
