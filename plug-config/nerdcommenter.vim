" Don't create default mappings
let g:NERDCreateDefaultMappings = 0
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 0
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1

let g:NERDCustomDelimiters = { 'c': { 'left': '//','right': '' } }

" Comment out the current line or text selected in visual mode.
map <leader>cc <Plug>NERDCommenterComment
" Uncomments the selected line(s).
map <leader>cu <Plug>NERDCommenterUncomment
" Toggles the comment state of the selected line(s).
map <leader>cl <Plug>NERDCommenterToggle
" Same as cc but forces nesting.
map <leader>cn <Plug>NERDCommenterNested
" Comments the given lines using only one set of multipart delimiters.
map <leader>cm <Plug>NERDCommenterMinimal
" Toggles the comment state of the selected line(s) individually.
map <leader>ci <Plug>NERDCommenterInvert
" Comments out the selected lines with a pretty block formatted layout.
map <leader>cs <Plug>NERDCommenterSexy
" Same as cc except that the commented line(s) are yanked first.
map <leader>cy <Plug>NERDCommenterYank
" Comments the current line from the cursor to the end of line.
map <leader>cG <Plug>NERDCommenterToEOL
