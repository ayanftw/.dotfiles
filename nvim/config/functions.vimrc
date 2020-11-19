" Removes trailing spaces
function! TrimWhiteSpace()
    %s/\s\+$//e
    silent! $v/./d
endfunction

" format JSON in the current buffer
function! DoPrettyJson()
    " clone the current buffer, we want a scratch buffer.
    badd %
    setlocal buftype=nofile bufhidden=wipe nobuflisted noswapfile nowrap
    silent %!python -m json.tool
    silent %<
endfunction
command! PrettyJson call DoPrettyJson()

" toggle relative numbering
function! NumberToggle()
    if(&relativenumber == 1)
        set nornu
        set number
    else
        set rnu
    endif
endfunc

" turn terminal to normal mode with escape
tnoremap <expr> <Esc> (&filetype == "fzf") ? "<Esc>" : "<c-\><c-n>"
"au TermOpen * tnoremap <buffer> <Esc> <c-\><c-n>
"au FileType fzf tunmap <buffer> <Esc>
" start terminal in insert mode
"au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  below split term://$SHELL
  resize 10
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>

augroup terminal_settings
    autocmd!

    autocmd BufWinEnter,WinEnter term://* startinsert
    autocmd BufLeave term://* stopinsert

    " Ignore various filetypes as those will close terminal automatically
    " Ignore fzf, ranger, coc
    autocmd TermClose term://*
          \ if (expand('<afile>') !~ "fzf") && (expand('<afile>') !~ "ranger") && (expand('<afile>') !~ "coc") |
          \   call nvim_input('<CR>')  |
          \ endif
augroup END
