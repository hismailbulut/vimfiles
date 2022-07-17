let mapleader = "\<Space>"
let maplocalleader = ","

" disable highlight
nnoremap <silent> <localleader><cr> :noh<cr>

" fast save
nnoremap <localleader>w :w<cr>

" copy and paste system clipboard
vnoremap <localleader>y "*y
nnoremap <localleader>p "*p

" set home key to move starting of the text instead of first column
vnoremap <Home> ^
vnoremap <End> g_

" move between windows
nnoremap <C-Up> <C-W>k
nnoremap <C-Down> <C-W>j
nnoremap <C-Right> <C-W>l
nnoremap <C-Left> <C-W>h

" auto close brackets
inoremap {<CR> {<CR>}<ESC>O
inoremap [<CR> [<CR>]<ESC>O
inoremap (<CR> (<CR>)<ESC>O

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

" swap lines up and down in all modes
nnoremap <silent> <A-Up> :m .-2<CR>==
nnoremap <silent> <A-Down> :m .+1<CR>==
inoremap <silent> <A-Up> <Esc>:m .-2<CR>==gi
inoremap <silent> <A-Down> <Esc>:m .+1<CR>==gi
vnoremap <silent> <A-Up> :m '<-2<CR>gv=gv
vnoremap <silent> <A-Down> :m '>+1<CR>gv=gv

" delete this buffer
nnoremap <silent> <localleader>bd :DeleteBuffer<cr>
" :silent tabclose<cr>gT
" delete all buffers and close vim
nnoremap <localleader>ba :bufdo <leader>bd<cr>
" delete all other buffers but keep this one
nnoremap <localleader>bo :%bd\|e#\|bd#<cr>
" move between buffers
nnoremap <silent> <A-Right> :bnext<cr>
nnoremap <silent> <A-Left> :bprev<cr>

" close other tabs
nnoremap <localleader>to :tabonly<cr>
" close this tab
nnoremap <localleader>tc :tabclose<cr>
" move between tabs
nnoremap <localleader>tl :tabnext<cr>
nnoremap <localleader>th :tabprev<cr>
" edit file in new tab
nnoremap <localleader>te :tabedit <C-r>=expand("%:p:h")<cr>\

" edit file in vertical or horizontal split
nnoremap <localleader>ve :vsplit <C-r>=expand("%:p:h")<cr>\
nnoremap <localleader>he :split <C-r>=expand("%:p:h")<cr>\

if has('nvim')
    nnoremap <localleader>vt :vsplit<cr>:term<cr>i
    nnoremap <localleader>ht :split<cr>:term<cr>:resize 14<cr>i
    " double ESC exits insert mode in terminal
    tnoremap <Esc><Esc> <C-\><C-n>
else
    nnoremap <localleader>vt :vert term ++close<cr>
    nnoremap <localleader>ht :term ++close ++rows=14<cr>
    tnoremap <Esc><Esc> <C-w>N
endif

" search for selected text in visual mode
vnoremap <silent> <localleader>sl :<C-u>call FnGetVisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> <localleader>sh :<C-u>call FnGetVisualSelection('', '')<CR>?<C-R>=@/<CR><CR>
" replace texts in buffer
nnoremap <localleader>sr :%s/<C-r><C-w>//g<left><left>
vnoremap <localleader>sr :<C-u>call FnGetVisualSelection('', '')<cr>:%s/<C-r>=@/<cr>//g<left><left>

if has('win32')
    " search symbol in google (windows only)
    nnoremap <silent> <localleader>sb :silent ! start "" "https://www.google.com/search?q=<C-r><C-w>"<cr>
    vnoremap <localleader>sb "hy:<C-u>silent ! start "" "https://www.google.com/search?q=<C-r>h"<cr>
    " open current buffers directory in system explorer (windows only)
    nnoremap <silent> <localleader>e :silent !start explorer %:p:h<CR>
else
    " search symbol in google (windows only)
    nnoremap <silent> <localleader>sb :echo "This feature only supported in windows"<cr>
    vnoremap <localleader>sb :echo "This feature only supported in windows"<cr>
    " open current buffers directory in system explorer (windows only)
    nnoremap <silent> <localleader>e :echo "This feature only supported in windows"<cr>
endif
