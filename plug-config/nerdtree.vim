let g:NERDTreeShowHidden=0
let g:NERDTreeChDirMode=2
let g:NERDTreeRespectWildIgnore=1

let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
" let g:NERDTreeDirArrowExpandable = '▸'
" let g:NERDTreeDirArrowCollapsible = '▾'

" open current working directory
nnoremap <silent> <leader>no :silent NERDTreeCWD<CR>
" toggle nerdtree window
nnoremap <silent> <leader>nt :silent NERDTreeToggle<CR>
" find this buffer on nerdtree
nnoremap <silent> <leader>nf :silent NERDTreeFind<CR>
" open nerdtree in home directory
nnoremap <silent> <leader>nh :cd $HOME<CR>:silent NERDTreeCWD<CR>
" open nerdtree in current buffer directory
nnoremap <silent> <leader>nc :cd %:p:h<CR>:silent NERDTreeCWD<CR>
" open custom projects folder
nnoremap <silent> <leader>np :cd C:/ismailbulut/Developer<CR>:silent NERDTreeCWD<CR>
" open vimfiles folder
nnoremap <silent> <leader>nv :cd $HOME/vimfiles<CR>:silent NERDTreeCWD<CR>

augroup NerdTreeAutoCmds
    autocmd!
    " Refresh nerttree when vim gained input focus.
    " autocmd FocusGained * if len(popup_list()) < 1 | silent NERDTreeRefreshRoot | endif
    " Exit Vim if NERDTree is the only window left, close tab if there is other tabs
    autocmd BufEnter *
        \ if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
            \ if tabpagenr('$') > 1 | tabclose |
            \ else | quit | endif |
        \ endif
    " If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
    autocmd BufEnter *
        \ if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
        \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif
    " When leaving a tab put cursor to other buffer instead of NERDTree.
    autocmd TabLeave * call FnNerdMoveCursor()
    " Save nerdtree state when leaving a tab
    autocmd TabLeave *
        \ if FnNerdIsOpen() | let g:nerdTreeOpenOnLastTab=1 |
        \ else | let g:nerdTreeOpenOnLastTab=0 | endif
    " Open or close nerdtree according to saved state
    autocmd TabEnter *
        \ if FnNerdIsOpen() |
            \ if !g:nerdTreeOpenOnLastTab | silent NERDTreeClose | endif |
        \ else |
            \ if g:nerdTreeOpenOnLastTab | silent NERDTreeToggle | silent NERDTreeMirror | wincmd p | endif |
        \ endif
augroup END

function! FnNerdIsOpen()
    return exists('t:NERDTreeBufName') && bufwinnr(t:NERDTreeBufName) != -1
endfunction

function! FnNerdMoveCursor()
    if bufname('%') =~ 'NERD_tree_\d\+' && winnr('$') > 1
        wincmd p
    endif
endfunction
