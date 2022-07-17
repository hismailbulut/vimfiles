" leader mappings
let g:which_key_leader_map =  {}
" nerdtree
let g:which_key_leader_map.n = {'name': '+nerdtree'}
let g:which_key_leader_map.n.o = 'open nerdtree'
let g:which_key_leader_map.n.t = 'toggle nerdtree'
let g:which_key_leader_map.n.f = 'find current buffer'
let g:which_key_leader_map.n.h = 'open home directory'
let g:which_key_leader_map.n.c = 'open in buffer path'
let g:which_key_leader_map.n.p = 'open projects folder'
let g:which_key_leader_map.n.v = 'open vimfiles folder'
" fzf
let g:which_key_leader_map.f = {'name': '+fzf'}
let g:which_key_leader_map.f.f = 'find file'
let g:which_key_leader_map.f.b = 'find buffers'
let g:which_key_leader_map.f.c = 'find colorscheme'
let g:which_key_leader_map.f.s = 'find in loaded buffers'
let g:which_key_leader_map.f.l = 'find in current buffer'
" coc.nvim
let g:which_key_leader_map.g = {'name': '+coc'}
let g:which_key_leader_map.g.d = 'goto definition'
let g:which_key_leader_map.g.r = 'find references'
let g:which_key_leader_map.g.n = 'rename symbol'
let g:which_key_leader_map.g.f = 'quick fix'
let g:which_key_leader_map.g.t = 'goto type definition'
let g:which_key_leader_map.g.i = 'goto implementation'
let g:which_key_leader_map.g.s = 'list symbols'
let g:which_key_leader_map.g.h = 'previous diagnostic'
let g:which_key_leader_map.g.l = 'next diagnostic'
" nerdcommenter
let g:which_key_leader_map.c = {'name': '+nerdcommenter'}
let g:which_key_leader_map.c.c = 'comment line(s)'
let g:which_key_leader_map.c.u = 'uncomment line(s)'
let g:which_key_leader_map.c.l = 'toggle line(s) commenting'
let g:which_key_leader_map.c.n = 'comment nested'
let g:which_key_leader_map.c.m = 'comment minimal'
let g:which_key_leader_map.c.i = 'invert line(s) commenting'
let g:which_key_leader_map.c.s = 'comment sexy'
let g:which_key_leader_map.c.y = 'yank and comment'
let g:which_key_leader_map.c.G = 'comment to EOL'
" floaterm
let g:which_key_leader_map.t = {'name': '+floaterm'}
let g:which_key_leader_map.t.t = 'toggle floaterm (F5)'
let g:which_key_leader_map.t.n = 'new terminal'
let g:which_key_leader_map.t.k = 'kill current terminal'
let g:which_key_leader_map.t.h = 'previous terminal'
let g:which_key_leader_map.t.l = 'next terminal'
" startify
let g:which_key_leader_map.s = {'name': '+startify'}
let g:which_key_leader_map.s.t = 'startify on new tab'
let g:which_key_leader_map.s.c = 'startify here'

" localleader mappings
let g:which_key_localleader_map =  {
    \ '<CR>' : [':noh', 'no highlight']
    \ }
" one key mappings
let g:which_key_localleader_map.w = 'save file'
let g:which_key_localleader_map.e = 'open directory in explorer'
let g:which_key_localleader_map.y = 'copy to system clipboard'
let g:which_key_localleader_map.p = 'paste from system clipboard'
" buffers
let g:which_key_localleader_map.b = {'name': '+buffer'}
let g:which_key_localleader_map.b.d = 'delete buffer'
let g:which_key_localleader_map.b.a = 'delete all buffers'
let g:which_key_localleader_map.b.o = 'delete all other buffers'
" tabpages
let g:which_key_localleader_map.t = {'name': '+tabpages'}
let g:which_key_localleader_map.t.o = 'close all other tabs'
let g:which_key_localleader_map.t.c = 'close current tab'
let g:which_key_localleader_map.t.l = 'next tab'
let g:which_key_localleader_map.t.h = 'previous tab'
let g:which_key_localleader_map.t.e = 'edit file on new tab'
" symbols
let g:which_key_localleader_map.s = {'name': '+symbols'}
let g:which_key_localleader_map.s.l = 'search selected text forward (only visual)'
let g:which_key_localleader_map.s.h = 'search selected text backward (only visual)'
let g:which_key_localleader_map.s.r = 'replace (selected) text or symbol'
let g:which_key_localleader_map.s.b = 'search (selected) symbol in google'
" splits
let g:which_key_localleader_map.v = {'name': '+vertical'}
let g:which_key_localleader_map.v.e = 'edit file in cwd'
let g:which_key_localleader_map.v.t = 'open terminal in vertical split'
let g:which_key_localleader_map.h = {'name': '+horizontal'}
let g:which_key_localleader_map.h.e = 'edit file in cwd'
let g:which_key_localleader_map.h.t = 'open terminal in horizontal split'

call which_key#register('<Space>', "g:which_key_leader_map")
call which_key#register(',', "g:which_key_localleader_map")

nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :WhichKeyVisual '<Space>'<CR>

nnoremap <silent> <localleader> :WhichKey ','<CR>
vnoremap <silent> <localleader> :WhichKeyVisual ','<CR>

