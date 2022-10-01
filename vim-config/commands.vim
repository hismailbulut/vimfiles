command! DeleteBuffer call FnDeleteBuffer()

command! Q :q
command! Qa :qa
command! W :w
command! Wa :wa
command! Wq :wq
command! Wqa :wqa

command -bar -nargs=? ShowSpaces call FnShowSpaces(<args>)
command -bar -nargs=0 -range=% TrimSpaces <line1>,<line2>call FnTrimSpaces()

" autocommands
augroup NonPlugAutoCmds
    autocmd!
    " Start the cursor from where it left off.
    autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
    " If buffer was changed from outside reload the buffer.
    autocmd FocusGained,BufEnter * checktime
    " set nornu for non focused windows
    autocmd WinLeave * if &buftype ==# '' | setlocal norelativenumber | endif
    autocmd BufWinEnter,WinEnter * if &buftype ==# '' | setlocal relativenumber | endif
    if has('nvim')
        autocmd TermOpen * setlocal sidescrolloff=0
        autocmd DirChanged * let &titlestring=v:event['cwd']
    else
        autocmd TerminalOpen * setlocal sidescrolloff=0
    endif
augroup END
