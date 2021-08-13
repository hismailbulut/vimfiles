let g:coc_global_extensions = [
    \ "coc-marketplace",
    \ "coc-json",
    \ ]

let g:coc_snippet_next = '<Tab>'
let g:coc_snippet_prev = '<S-Tab>'

" GoTo code navigation.
nmap <silent> <leader>gd <Plug>(coc-definition)
nmap <silent> <leader>gr <Plug>(coc-references)
nmap <silent> <leader>gn <Plug>(coc-rename)
nmap <silent> <leader>gf <Plug>(coc-fix-current)
nmap <silent> <leader>gt <Plug>(coc-type-definition)
nmap <silent> <leader>gi <Plug>(coc-implementation)
nmap <silent> <leader>gh <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>gl <Plug>(coc-diagnostic-next)
" Search workspace symbols.
nnoremap <silent><nowait> <leader>gs  :<C-u>CocList -I symbols<cr>
" coc-clangd special
nnoremap <silent> ss :CocCommand clangd.switchSourceHeader<CR>

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
    set signcolumn=number
else
    set signcolumn=yes
endif

" Use <c-space> to trigger completion.
if has('nvim')
    inoremap <silent><expr> <C-Space> coc#refresh()
else
    inoremap <silent><expr> <c-@> coc#refresh()
endif

" K opens documentation about symbol under the cursor
nnoremap <silent> K :call <SID>FnCocShowDoc()<CR>
function! <SID>FnCocShowDoc()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    elseif (coc#rpc#ready())
        call CocActionAsync('doHover')
    else
        execute '!' . &keywordprg . " " . expand('<cword>')
    endif
endfunction

augroup CocNvimAutoCmds
    autocmd!
    " Highlight symbol under the cursor if cursor holds
    autocmd CursorHold * silent call CocActionAsync('highlight')
augroup END

" command :Format formats current buffer
command! -nargs=0 Format :call CocAction('format')
