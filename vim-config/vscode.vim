" configuration for vscde neovim only
" it should be minimal
"
let mapleader = "\<Space>"
let maplocalleader = ","

" disable highlight
nnoremap <silent> <localleader><cr> :noh<cr>

" set home key to move starting of the text instead of first column
vnoremap <Home> ^
vnoremap <End> g_

" Use tab to indent in normal and visual modes.
nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" shift up and down moves cursor to empty lines
noremap <S-Up> {
noremap <S-Down> }
inoremap <S-Up> <Esc>{i
inoremap <S-Down> <Esc>}i

























