noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

set pastetoggle=<F2>

" folding
"nnoremap <space> za


" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>M mmHmt:%s/<C-V><cr>//e<cr>'tzt'm
noremap <leader>W mmHmt:%s/\s\+$//e<cr>:let @/=''<CR>'tzt'm

nnoremap <leader>htm :%!pandoc -f html -t markdown<CR>
nnoremap <leader>mth :%!pandoc -f markdown -t html<CR>

"highlight last inserted text
nnoremap gp `[v`]


nmap <silent> <leader>ev :execute 'edit' g:config_root<CR>
augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost g:config_root/* source $MYVIMRC
augroup END " }

nnoremap <silent> <Leader>rts :call TrimWhiteSpace()<CR>

nnoremap <leader>r :call NumberToggle()<cr>

cnoreabbrev <expr> W ((getcmdtype() is# ':' && getcmdline() is# 'W')?('w'):('W'))
nnoremap <c-_> :FZF<cr>

" Terminal settings
tnoremap <Leader><ESC> <C-\><C-n>
augroup insert_mode_in_terminal " {
    autocmd!
    autocmd BufEnter * if &buftype == 'terminal' | :startinsert | endif
augroup END " }

