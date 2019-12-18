" set the CtrlP mode to buffers/files/mru
" let g:ctrlp_cmd = 'CtrlPMixed'
map <leader>b :CtrlPBuffer<CR>
map <leader>m :CtrlPMRU<CR>
let g:ctrlp_open_new_file = 't'
let g:ctrlp_abbrev = {
    \ 'gmode': 'i',
    \ 'abbrevs': [
      \ {
        \ 'pattern': '^cd b',
        \ 'expanded': '@cd ~/.vim/bundle',
        \ 'mode': 'pfrz',
      \ },
      \  {
        \ 'pattern': '^cd v',
        \ 'expanded': '@cd $VIRTUAL_ENV',
        \ 'mode': 'pfrz',
        \},
      \ {
        \ 'pattern': '\(^@.\+\|\\\@<!:.\+\)\@<! ',
        \ 'expanded': '.\{-}',
        \ 'mode': 'pfr',
      \ },
      \ {
        \ 'pattern': '\\\@<!:.\+\zs\\\@<! ',
        \ 'expanded': '\ ',
        \ 'mode': 'pfz',
      \ },
      \ ]
      \}

let g:ctrlp_prompt_mappings = {
    \ 'PrtSelectMove("j")':   ['<c-j>',],
    \ 'PrtSelectMove("k")':   ['<c-k>',],
    \}

let g:ctrlp_user_command = 'rg --files %s'
let g:ctrlp_use_caching = 0

