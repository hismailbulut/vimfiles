let g:startify_padding_left        = 10
let g:startify_enable_special      = 1
let g:startify_files_number        = 12
let g:startify_update_oldfiles     = 1
let g:startify_fortune_use_unicode = 1

let g:startify_lists = [
      \ { 'type': 'files',     'header': ['       Recent Files']               },
      \ { 'type': 'dir',       'header': ['       Recent Files in '. getcwd()] },
      \ { 'type': 'sessions',  'header': ['       Sessions']                   },
      \ { 'type': 'bookmarks', 'header': ['       Bookmarks']                  },
      \ { 'type': 'commands',  'header': ['       Commands']                   },
      \ ]

let g:startify_commands = [
    \ {'ch': ['Health Check', ':checkhealth']},
    \ {'ps': ['Plugins status', ':PlugStatus']},
    \ {'pi': ['Install vim plugins',':PlugInstall']},
    \ {'pu': ['Update vim plugins',':PlugUpdate | PlugUpgrade']},
    \ {'pc': ['Clean vim plugins',':PlugClean']},
    \ {'uc': ['Update coc Plugins', ':CocUpdate']},
    \ {'h':  ['Help', ':help']},
    \ ]

nnoremap <silent> <leader>st :tabnew<cr>:Startify<cr>
nnoremap <silent> <leader>sc :Startify<cr>

" autocmd User Startified setlocal buftype=nofile
