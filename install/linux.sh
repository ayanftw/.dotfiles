#!/bin/bash
DOTFILES="$( cd "$(dirname "$0")"; cd .. ; pwd -P )"

echo "** Symlink hgrc"
ln -s $DOTFILES/hg/hgrc ~/.hgrc

echo "** Symlink tmux config"
ln -s $DOTFILES/tmux/tmux.conf ~/.tmux.conf
ln -s $DOTFILES/tmux/tmux-container.conf ~/.tmux-container.conf

echo "** Symlink Neovim config"
ln -s $DOTFILES/nvim ~/.config/nvim
