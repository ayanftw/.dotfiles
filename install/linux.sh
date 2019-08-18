#!/bin/bash
DOTFILES="$( cd "$(dirname "$0")"; cd .. ; pwd -P )"

echo "** Symlink hgrc"
ln -sfn $DOTFILES/hg/hgrc ~/.hgrc

echo "** Symlink tmux config"
ln -sfn $DOTFILES/tmux/tmux.conf ~/.tmux.conf
ln -sfn $DOTFILES/tmux/tmux-container.conf ~/.tmux-container.conf

echo "** Symlink Neovim config"
ln -sfn $DOTFILES/nvim ~/.config/nvim

echo "** Symlink Fish config"
ln -sfn $DOTFILES/fish ~/.config/fish
