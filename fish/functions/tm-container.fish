# Defined in /tmp/fish.jwXaiQ/tm-container.fish @ line 2
function tm-container --description 'alias tm-container tmux new -As (hostname)'
	tmux -L container -f ~/.tmux-container.conf $argv;
end
