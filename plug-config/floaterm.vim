let g:floaterm_width=0.8
let g:floaterm_height=0.8
" always close floaterm window when terminal exits
let g:floaterm_autoclose=2

let g:floaterm_wintype='float'
let g:floaterm_position='center'

if has('nvim')
    let g:floaterm_borderchars=''
endif

nnoremap <silent> <F5> :FloatermToggle<CR>
tnoremap <silent> <F5> <C-\><C-n>:FloatermToggle<CR>
" toggle floaterm window
nnoremap <silent> <leader>tt :FloatermToggle<CR>
tnoremap <silent> <leader>tt <C-\><C-n>:FloatermToggle<CR>
" open new floaterm
nnoremap <silent> <leader>tn :FloatermNew<CR>
tnoremap <silent> <leader>tn <C-\><C-n>:FloatermNew<CR>
" kill terminal
nnoremap <silent> <leader>tk :FloatermKill<CR>
tnoremap <silent> <leader>tk <C-\><C-n>:FloatermKill<CR>
" go previous floaterm window
nnoremap <silent> <leader>th :FloatermPrev<CR>
tnoremap <silent> <leader>th <C-\><C-n>:FloatermPrev<CR>
" go next floaterm window
nnoremap <silent> <leader>tl :FloatermNext<CR>
tnoremap <silent> <leader>tl <C-\><C-n>:FloatermNext<CR>
