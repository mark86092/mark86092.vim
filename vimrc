set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'git://github.com/gmarik/Vundle.vim'

" Plugin 'git://github.com/moskytw/mosky.vim'

Plugin 'git://github.com/tomasr/molokai'

Plugin 'git://github.com/mark86092/mark86092.vim.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

colorscheme molokai
