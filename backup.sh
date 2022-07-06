#/bin/sh
echo "[*] Copying backups..."
cp ~/.bashrc bash/.bashrc
cp ~/.bash_profile bash/.bash_profile
cp ~/.config/nvim/* nvim -rf
cp ~/.vimrc vim/.vimrc
cp ~/.tmux.conf tmux/.tmux.conf
cp ~/.config/alacritty/alacritty.yml alacritty/alacritty.yml
