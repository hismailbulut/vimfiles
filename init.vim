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
    set guifont=:h11
    " let neoray_cursor_animation_time=0.05
    let neoray_background_transparency=0.95
    " let neoray_target_ticks_per_second=90
    " let neoray_popup_menu_enabled=1
    let neoray_window_startup_state='centered'
    " let neoray_key_toggle_fullscreen='<F11>'
    " let neoray_key_increase_fontsize='<C-kPlus>'
    " let neoray_key_decrease_fontsize='<C-kMinus>'
    hi! Cursor gui=NONE guifg=Black guibg=White
    set guicursor+=a:blinkwait1000-blinkon500-blinkoff250-Cursor
endif
