" Setting up dein for plugins
let bundlepath=g:editor_root . '/bundle'
let deinpath=bundlepath . '/repos/github.com/Shougo/dein.vim'

execute "set runtimepath+=" . deinpath

let dein_readme=deinpath . '/README.md'
if !filereadable(dein_readme)
    echo "Installing dein.."
    echo ""
    execute "!git clone https://github.com/Shougo/dein.vim " . deinpath
endif


if dein#load_state(bundlepath)
  call dein#begin(bundlepath)

  call dein#add(deinpath)
  call dein#load_toml(g:config_root . "plugins.toml", {})
  if has('nvim')
      call dein#load_toml(g:config_root . "plugins-neo.toml", {})
  else
      call dein#load_toml(g:config_root . "plugins-legacy.toml", {})
  endif

  call dein#end()
  call dein#save_state()
endif

" check for external programs required by plugins
for i in ['rg', 'ranger']
    if !executable(i)
        echo i . " not in path - please install"
    endif
endfor

if dein#check_install()
    call dein#install()
endif

