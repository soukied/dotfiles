#!/bin/sh

mkdir -p ~/.config/nvim
mkdir -p ~/.config/alacritty
cp nvim ~/.config -rf
cp vim/.vimrc ~/.vimrc
cp tmux/.tmux.conf ~/.tmux.conf
cp alacritty/alacritty.yml ~/.config/alacritty
echo "Installing NVIM configuration..."
