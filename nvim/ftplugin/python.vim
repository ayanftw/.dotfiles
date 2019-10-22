for i in ['isort', 'black']
    if !executable(i)
        echo i . " not in path - please install"
    endif
endfor


let b:ale_fixers = ['black', 'isort', 'trim_whitespace', 'remove_trailing_lines']

"nnoremap <LocalLeader>= :0,$!yapf<CR>
"nnoremap <LocalLeader>i :!isort %<CR><CR>
