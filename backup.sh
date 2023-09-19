#/bin/sh
echo "[*] Copying backups..."
[[ -f ~/.bashrc ]] && cp ~/.bashrc bash/.bashrc && echo "[*] .bashrc copied."
[[ -f ~/.bash_profile ]] && cp ~/.bash_profile bash/.bash_profile && echo "[*] .bash_profile copied."
[[ -d ~/.config/nvim ]] && cp ~/.config/nvim/* nvim -rf && echo "[*] ~/.config/nvim copied."
[[ -f ~/.vimrc ]] && cp ~/.vimrc vim/.vimrc && echo "[*] .vimrc copied."
[[ -f ~/.tmux.conf ]] && cp ~/.tmux.conf tmux/.tmux.conf && echo "[*] .tmux.conf copied."
[[ -f ~/.config/alacritty/alacritty.yml ]] && cp ~/.config/alacritty/alacritty.yml alacritty/alacritty.yml && echo "[*] .config/alacritty/alacritty.yml copied"
