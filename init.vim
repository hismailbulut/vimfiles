try
    language en_US.utf8
    if !has('nvim')
        source $VIMRUNTIME/defaults.vim
    endif
catch
endtry

if !exists('vimfilesPath')
    let vimfilesPath = expand('<sfile>:p:h')
endif

execute 'source ' . vimfilesPath . '/sets.vim'
execute 'source ' . vimfilesPath . '/funcs.vim'
execute 'source ' . vimfilesPath . '/maps.vim'
execute 'source ' . vimfilesPath . '/commands.vim'
execute 'source ' . vimfilesPath . '/plugins.vim'

if exists('g:neoray')
    set guifont=:h13
    set guicursor+=a:blinkwait1000-blinkon500-blinkoff250-Cursor

    NeoraySet CursorAnimTime  0.1
    NeoraySet Transparency    0.975
    NeoraySet TargetTPS       90
    NeoraySet ContextMenuOn   true
    NeoraySet BoxDrawingOn    true
    NeoraySet WindowSize      110x40
    NeoraySet WindowState     centered
    " NeoraySet KeyFullscreen <M-C-CR>
    " NeoraySet KeyZoomIn     <C-ScrollWheelUp>
    " NeoraySet KeyZoomOut    <C-ScrollWheelDown>
    NeoraySet ContextButton   ShowHLGroup :call\ FnShowHLGroup()
    NeoraySet ContextButton   Translate   :Translate
endif
