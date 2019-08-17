echo "loaded"
for i in ['isort', 'black']
    if !executable(i)
        echo i . " not in path - please install"
    endif
endfor

"nnoremap <LocalLeader>= :0,$!yapf<CR>
"nnoremap <LocalLeader>i :!isort %<CR><CR>
