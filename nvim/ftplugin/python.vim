for i in ['black', 'pylint', 'isort']
    if !executable(i)
        echo i . " not in path - please install"
    endif
endfor


let b:ale_fixers = ['black', 'isort', 'trim_whitespace', 'remove_trailing_lines']
let b:ale_linters = ['pylint', 'flake8', 'mypy', 'bandit']

"nnoremap <LocalLeader>= :0,$!yapf<CR>
"nnoremap <LocalLeader>i :!isort %<CR><CR>
