#/bin/sh
echo "[*] Moving backups..."
cp ~/.bashrc bash/.bashrc
cp ~/.bash_profile bash/.bash_profile
cp ~/.config/nvim/lua nvim -rf
cp ~/.config/nvim/init.vim nvim/init.vim
cp ~/.vimrc vim/.vimrc
cp ~/.tmux.conf tmux/.tmux.conf
cp ~/.config/alacritty/alacritty.yml alacritty/alacritty.yml
