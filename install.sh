#!/bin/sh

echo "[*] Installing dependencies..."
install-dependencies
echo "[*] Installing configuration..."
mkdir -p ~/.config/nvim
mkdir -p ~/.config/alacritty
cp bash/.bashrc ~/.bashrc
cp bash/.bash_profile ~/.bash_profile
cp nvim ~/.config -rf
cp vim/.vimrc ~/.vimrc
cp tmux/.tmux.conf ~/.tmux.conf
cp alacritty/alacritty.yml ~/.config/alacritty
echo "[*] Configuration installed."

install-dependencies() {
	[[ -d ~/.tmux/plugins/tpm ]] || git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
	[[ -f ~/.git-prompt.sh ]] || curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -o ~/.git-prompt.sh
	if command -v pacman > /dev/null; then
		sudo pacman -Syyu tmux
	fi
	if command -v apt > /dev/null; then
		sudo apt install tmux
	fi
}

copy-directory() {

}

copy-file() {

}
