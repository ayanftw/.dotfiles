let mapleader = ','
let maplocalleader = '\'

"set foldenable
"set foldmethod=indent
"set foldlevelstart=10

set wildmenu "visual autocomplete for commands
set lazyredraw "redraw only when needed
set scrolloff=3

set completeopt=preview,menuone,noinsert,noselect
set backspace=indent,eol,start

set number
set ignorecase
set smartcase
set autoread
set ruler

"set backup
set noswapfile
set ruler
set history=10000
set undofile
set undoreload=10000
set hidden
set laststatus=2
set wildignore+=*.o,*.obj,.git,*.pyc,*.aux,*.toc,*.log

" good for python
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4

set shell=/bin/bash


filetype plugin indent on
