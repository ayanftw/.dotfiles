set -Ux HOST (hostname) # needed to make the include within ~/.hgrc work

# add fzf from the vim install location
set -l FZF_LOCATION ~/.config/nvim/bundle/repos/github.com/junegunn/fzf
set -x PATH $PATH $FZF_LOCATION/bin
source $FZF_LOCATION/shell/key-bindings.fish
fzf_key_bindings

# helper for virtualenvs
eval (python3 -m virtualfish auto_activation global_requirements)

set -x EDITOR vim
set -x PYTHONBREAKPOINT ipdb.set_trace
