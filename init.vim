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
    set guifont=:h10.5
    set guicursor+=a:blinkwait1000-blinkon500-blinkoff250-Cursor

    NeoraySet CursorAnimTime  0.08
    NeoraySet Transparency    0.975
    NeoraySet TargetTPS       90
    NeoraySet ContextMenuOn   TRUE
    NeoraySet BoxDrawingOn    TRUE
    NeoraySet WindowSize      100x40
    NeoraySet WindowState     centered

    " NeoraySet KeyFullscreen <M-C-CR>
    " NeoraySet KeyZoomIn     <C-ScrollWheelUp>
    " NeoraySet KeyZoomOut    <C-ScrollWheelDown>

    NeoraySet ContextButton   --------- :
    NeoraySet ContextButton   Translate :'<,'>Translate
    NeoraySet ContextButton   Hello     :echo\ "Hello\ Ismail!"
endif
