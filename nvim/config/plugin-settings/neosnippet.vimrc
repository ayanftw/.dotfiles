let g:neosnippet#enable_completed_snippet = 1
" deoplete tab-complete
function! s:snipcomplete()
    if pumvisible()
        return "\<c-n>"
    else
        if neosnippet#expandable_or_jumpable()
            return neosnippet#mappings#expand_or_jump_impl()
        endif
        return "\<tab>"
    endif
endfunction

inoremap <silent> <CR> <C-r>=<SID>ExpandSnippetOrReturnEmptyString()<CR>
function! s:ExpandSnippetOrReturnEmptyString()
    if pumvisible()
        if neosnippet#expandable()
            return neosnippet#mappings#expand_or_jump_impl()
        else
            return "\<C-y>\<CR>"
        endif
    else
        return "\<CR>"
endfunction

" deoplete mappings

inoremap <expr><tab> <SID>snipcomplete()
inoremap <expr><S-Tab>  pumvisible() ? "\<C-p>" : "\<C-h>"
imap <C-j>     <Plug>(neosnippet_expand_or_jump)
xmap <C-j>     <Plug>(neosnippet_expand_target)
