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

