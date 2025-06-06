" This check is for avoiding loading plugins more than once when init.vim resourced
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
    " better syntax and indentation support
    Plug 'sheerun/vim-polyglot'
    " translator
    Plug 'voldikss/vim-translator'
    " copilot
    Plug 'github/copilot.vim'
    " nerdfont icons
    Plug 'ryanoasis/vim-devicons' " this plugin must loaded last
    " colorschemes
    Plug 'gruvbox-community/gruvbox'
    Plug 'NLKNguyen/papercolor-theme'
    Plug 'srcery-colors/srcery-vim'
    Plug 'ayu-theme/ayu-vim'
    Plug 'altercation/vim-colors-solarized'
    Plug 'sonph/onehalf', { 'rtp': 'vim' }
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

" Themes and its options separated with new line (enable only one at a time)
" ----------------------------------------------
" let g:gruvbox_contrast_dark = 'hard'
" colorscheme gruvbox
" ----------------------------------------------
" colorscheme srcery
" ----------------------------------------------
" set background=dark " dark, light
" colorscheme PaperColor
" ----------------------------------------------
let ayucolor="dark" " dark, light, mirage
colorscheme ayu
" ----------------------------------------------
" set background=light " dark, light
" colorscheme solarized
" ----------------------------------------------
" colorscheme onehalfdark " ~light or ~dark
" let g:airline_theme='onehalfdark'
" ----------------------------------------------
