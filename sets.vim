set nocompatible
set hidden
set autoread
set nowrap
set ruler
set confirm
set noshellslash
set splitright
set splitbelow
set lazyredraw
set title

set history=200
set encoding=utf8
set belloff=all
set mouse=a
set mousehide
set cmdheight=1
set shortmess+=c
set pyxversion=3

set scrolloff=7
set sidescroll=1
set sidescrolloff=10
set updatetime=100

set timeoutlen=550
set ttimeoutlen=0

set nobackup
set nowritebackup
set noswapfile
set undofile

set wildmenu
set wildignorecase
set wildignore=*.o,*.obj,*.dat*,*.DAT*,*ntuser*,

filetype plugin on
filetype indent on
set ignorecase
set smartcase
set hlsearch
set incsearch
set noshowmatch

set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set autoindent
set smartindent

syntax enable
set termguicolors
set t_Co=256
set background=dark
set number
set relativenumber

if has('win32') && !has('nvim')
    " set viminfo path to appdata/local on windows
    let localCacheFolder=substitute($LOCALAPPDATA, '\\', '\\\\', "g")
    " https://stackoverflow.com/questions/23012391/how-and-where-is-my-viminfo-option-set#answer-23036077
    execute 'set viminfo=%,<800,''50,/50,:100,h,f0,n' . localCacheFolder . '\\_viminfo'
endif
