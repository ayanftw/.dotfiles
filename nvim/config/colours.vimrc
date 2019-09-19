if (has("termguicolors"))
    set termguicolors
endif

augroup transparent_background
    au!
    autocmd ColorScheme * hi Normal ctermbg=NONE guibg=NONE | hi NonText ctermbg=NONE guibg=NONE
augroup END

augroup current_word_colours
    au!
    autocmd ColorScheme * hi CurrentWord guibg=None guifg=#87ff5f gui=bold
    autocmd ColorScheme * hi CurrentWordTwins guibg=None guifg=#00d787 gui=underline
augroup END

let g:solarized_termtrans = 1

set background=dark
"colorscheme molokai-transparent
colorscheme onehalfdark
set colorcolumn=89

" allows cursor change in tmux mode
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

syntax enable
