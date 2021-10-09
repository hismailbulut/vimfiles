" My best fonts:
" 1- Consolas           11
" 2- UbuntuMono NF      12
" 3- GoMono NF          10.5
" 4- Cousine NF         11
" 5- Hack NF            10.5
" 6- JetBrains Mono     10
" 8- Cascadia Code      10.5

if has('nvim')
    if exists("GuiLoaded") " neovim-qt
        GuiFont! Consolas:h11
        GuiTabline 0
        GuiPopupmenu 0
        GuiScrollBar 0
        " call GuiWindowMaximized(1)
        nnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>
        inoremap <silent><RightMouse> <Esc>:call GuiShowContextMenu()<CR>
        vnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>gv
    else " other neovim gui
        echo "other neovim gui"
        set guifont=Cascadia\ Code:h13
    endif
else " gvim
    set guifont=Consolas:h11
    set guioptions-=m  " hide menu bar
    set guioptions-=T  " hide toolbar
    set guioptions-=r  " hide scrollbar
    set guioptions-=L  " hide left scrollbar
    set guitablabel=%M\ %t
    " set lines=999 columns=999 " maximize window
    " highlight Normal guifg=white guibg=black
endif

cd $HOME

" Some good neovim gui clients
" Neovide
" Goneovim
" Uivonim
" Neoray
