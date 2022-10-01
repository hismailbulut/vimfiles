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

" nvim opened in vscode extension, dont load user config
" because it may broke the vscode
if exists('g:vscode')
    execute 'source ' . vimfilesPath . '/vim-config/vscode.vim'
    finish
endif

execute 'source ' . vimfilesPath . '/vim-config/options.vim'
execute 'source ' . vimfilesPath . '/vim-config/funcs.vim'
execute 'source ' . vimfilesPath . '/vim-config/keymaps.vim'
execute 'source ' . vimfilesPath . '/vim-config/commands.vim'
execute 'source ' . vimfilesPath . '/vim-config/plugins.vim'

if exists('g:neoray') " neoray settings
    set guifont=:h13
    set guicursor+=a:blinkwait1000-blinkon500-blinkoff250-Cursor

    NeoraySet CursorAnimTime 0.1
    NeoraySet Transparency   0.975
    NeoraySet TargetTPS      120
    NeoraySet ContextMenuOn  true
    NeoraySet BoxDrawingOn   true
    NeoraySet WindowSize     110x40
    NeoraySet WindowState    centered
    " NeoraySet KeyFullscreen  <M-C-CR>
    NeoraySet KeyZoomIn      <C-ScrollWheelUp>
    NeoraySet KeyZoomOut     <C-ScrollWheelDown>
    NeoraySet ContextButton  ShowHLGroup :call\ FnShowHLGroup()
    NeoraySet ContextButton  Translate   :Translate
endif
