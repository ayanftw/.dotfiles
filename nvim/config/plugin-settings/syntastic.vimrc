let g:syntastic_check_on_open=1
let g:syntastic_python_checkers=["flake8"]
let g:syntastic_php_checkers=["php", "phpcs", "phpmd"]
let g:syntastic_javascript_checkers=["jshint", "jslint"]
let g:syntastic_json_checkers=["jsonlint"]
let g:syntastic_less_checkers=["lessc"]
let g:syntastic_lua_checkers = ["luac", "luacheck"]
let g:syntastic_lua_luacheck_args = "--no-unused-args"
let g:syntastic_rst_checkers = ["rstcheck"]
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_error_symbol = "\u2717"
let g:syntastic_warning_symbol = "\u26A0"
let g:syntastic_style_error_symbol = "\u2717"
let g:syntastic_style_warning_symbol = "\u26A0"

