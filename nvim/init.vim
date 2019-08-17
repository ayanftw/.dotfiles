if has('nvim')
        let $NVIM_TUI_ENABLE_TRUE_COLOR=1
        let g:editor_root=expand("~/.config/nvim")
        let g:python3_host_prog=expand('~/.virtualenvs/neovim-python3/bin/python')
        let g:python_host_prog=expand('~/.virtualenvs/neovim-python2/bin/python')
        set backupdir-=.
    else
        let g:editor_root=expand("~/.vim")
        set undodir = ~/.vim/undo
        set backupdir = ~/.vim/backup
        set directory = ~/.vim/swap
        set term=tmux
        set t_Co=256
        set nocompatible
endif
let g:config_root = g:editor_root . '/config/'
let g:plugin_settings = g:config_root . '/plugin-settings/'
execute 'source' g:config_root . 'init.vimrc'
execute 'source' g:config_root . 'plugins.vimrc'
execute 'source' g:config_root . 'functions.vimrc'
execute 'source' g:config_root . 'colours.vimrc'
execute 'source' g:config_root . 'mappings.vimrc'

":au! BufNewFile,BufRead *.php set filetype=php.html.javascript.css
