set nocompatible

set encoding=utf-8
set fileencodings=utf-8

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

set softtabstop=4
set cmdheight=1

" print the line number in front of each line
set number

set showmode
set showmatch

" enable filetype plugin
filetype off
filetype plugin on
filetype indent on
autocmd Filetype python setlocal expandtab

syntax enable

" let vim support 256 colors
set t_Co=256

" set to auto read when a file is changed from the outside
set autoread

" set minimal number of screen lines to keep above and below the cursor
set scrolloff=7

" always show current position
set ruler

" configure backspace so it acts as it should act
set backspace=eol,start,indent

" linebreak on 500 characters
set lbr
set tw=500
