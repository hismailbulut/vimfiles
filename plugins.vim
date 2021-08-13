" This check is for avoiding loading plugins more than once when init.vim
" resourced.
if !exists('pluginsLoaded')
    call plug#begin(vimfilesPath . '/plug-cache')
    " filetree
    Plug 'preservim/nerdtree'
    " syntax highlighting for nerdtree
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    " better tabline and statusline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " lsp
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " fuzzy finder
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    " fast commenting
    Plug 'preservim/nerdcommenter'
    " terminal in popup menu
    Plug 'voldikss/vim-floaterm'
    " which key
    Plug 'liuchengxu/vim-which-key'
    " better start page
    Plug 'mhinz/vim-startify'
    " create lorem ipsum
    Plug 'vim-scripts/loremipsum'
    " best syntax and indentation support
    Plug 'sheerun/vim-polyglot'
    " git integration
    Plug 'tpope/vim-fugitive'
    " translator
    Plug 'voldikss/vim-translator'
    " nerdfont icons
    Plug 'ryanoasis/vim-devicons' " this plugin must loaded last
    " colorschemes
    Plug 'gruvbox-community/gruvbox'
    Plug 'NLKNguyen/papercolor-theme'
    Plug 'srcery-colors/srcery-vim'
    Plug 'ayu-theme/ayu-vim'
    call plug#end()
    let pluginsLoaded=1
endif

execute 'source ' . vimfilesPath . '/plug-config/nerdtree.vim'
execute 'source ' . vimfilesPath . '/plug-config/airline.vim'
execute 'source ' . vimfilesPath . '/plug-config/coc.vim'
execute 'source ' . vimfilesPath . '/plug-config/fzf.vim'
execute 'source ' . vimfilesPath . '/plug-config/nerdcommenter.vim'
execute 'source ' . vimfilesPath . '/plug-config/floaterm.vim'
execute 'source ' . vimfilesPath . '/plug-config/whichkey.vim'
execute 'source ' . vimfilesPath . '/plug-config/startify.vim'

let g:translator_target_lang='tr'

" colorschemes
" let g:gruvbox_contrast_dark = 'hard'
" colorscheme gruvbox
" colorscheme srcery
colorscheme PaperColor
" let ayucolor="dark" " dark,light,mirage
" colorscheme ayu
