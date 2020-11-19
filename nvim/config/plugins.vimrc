" check for external programs required by plugins
for i in ['rg', 'ranger']
    if !executable(i)
        echo i . " not in path - please install"
    endif
endfor

if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
 
call plug#begin(stdpath('data') . '/plugged')

Plug 'sonph/onehalf', {'rtp': 'vim' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-surround'
Plug 'junegunn/limelight.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/camelcasemotion'
Plug 'ninrod/ninscratch-vim'
Plug 'romainl/vim-qf'
Plug 'editorconfig/editorconfig-vim'
Plug 'mhinz/vim-signify'
Plug 'farmergreg/vim-lastplace'
Plug 'Yggdroot/indentLine'
Plug 'liuchengxu/vista.vim'
Plug 'numirias/semshi'
Plug 'sheerun/vim-polyglot'
Plug 'itchyny/lightline.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release', 'do': ':CocInstall coc-python coc-css coc-tailwindcss coc-yaml coc-json'}
Plug 'mhinz/vim-startify'
Plug 'jmcantrell/vim-virtualenv'
Plug 'hashivim/vim-terraform'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

call plug#end()

" extra plugin settings

" ALE
let g:ale_echo_msg_format = '[%linter%:%code%] %s [%severity%]'
let g:ale_fix_on_save = 1

let g:ale_fixers = {
    \    'typescript': ['prettier', 'trim_whitespace', 'remove_trailing_lines'],
    \    'javascript': ['prettier', 'trim_whitespace', 'remove_trailing_lines'],
    \    'css': ['prettier', 'trim_whitespace', 'remove_trailing_lines'],
    \    'less': ['prettier', 'trim_whitespace', 'remove_trailing_lines'],
    \    'scss': ['prettier', 'trim_whitespace', 'remove_trailing_lines'],
    \    'json': ['prettier', 'trim_whitespace', 'remove_trailing_lines'],
    \    'json5': ['prettier', 'trim_whitespace', 'remove_trailing_lines'],
    \    'graphql': ['prettier', 'trim_whitespace', 'remove_trailing_lines'],
    \    'markdown': ['prettier', 'trim_whitespace', 'remove_trailing_lines'],
    \    'vue': ['prettier', 'trim_whitespace', 'remove_trailing_lines'],
    \    'yaml': ['prettier', 'trim_whitespace', 'remove_trailing_lines'],
    \    'html': ['trim_whitespace', 'remove_trailing_lines'],
    \}

"let g:ale_python_flake8_executable=expand('~/.virtualenvs/neovim-python3/bin/flake8')
"let g:ale_python_black_executable=expand('~/.virtualenvs/neovim-python3/bin/black')
"let g:ale_python_mypy_executable=expand('~/.virtualenvs/neovim-python3/bin/mypy')
"let g:ale_python_pylint_executable=expand('~/.virtualenvs/neovim-python3/bin/pylint')

function! LinterStatus() abort
  let l:counts = ale#statusline#Count(bufnr(''))

  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors

  return l:counts.total == 0 ? '✨ all good ✨' : printf(
        \   '😞 %dW %dE',
        \   all_non_errors,
        \   all_errors
        \)
endfunction

" Limelight
let g:limelight_conceal_ctermfg = 240
let g:limelight_conceal_guifg = 'DarkGray'

" Nerdcommenter
let g:NERDCustomDelimiters = {
            \    'python': { 'left': '# ', 'leftAlt': '#' },
            \}

" vim-qf
let g:qf_auto_open_quickfix = 0
let g:qf_auto_open_loclist = 0

" vim-signify
let g:signify_realtime = 1
let g:signify_vcs_list = [ 'git', 'hg' ]

" lightline
let g:lightline = {
            \ 'colorscheme': 'onehalfdark',
            \ 'component_function': {
            \    'method': 'LinterStatus'
            \ },
            \ }

" coc
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Startify
let g:startify_fortune_use_unicode = 1
function! s:filter_header(lines) abort                                       
    let longest_line   = max(map(copy(a:lines), 'strwidth(v:val)'))          
    let centered_lines = map(copy(a:lines),                                  
                \ 'repeat(" ", (&columns / 2) - (longest_line / 2)) . v:val')        
    return centered_lines                                                    
endfunction                                                                  
let g:startify_custom_header = s:filter_header(startify#fortune#cowsay())

" Nerdtree
" let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <C-b> :NERDTreeToggle<CR>
