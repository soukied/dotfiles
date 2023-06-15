# # ~/.bashrc #

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='exa' 
alias grep='grep --color=auto'
PS1='\[\e[94m\][\[\e[96m\]\u\[\e[94m\]@\[\e[92m\]\h \[\e[0;1m\]\W\[\e[0;94m\]]\[\e[0m\]\\$ '

alias paru="paru --sudoloop --skipreview"
alias sudo="sudo -E"
source /usr/share/nvm/init-nvm.sh

export ANDROID_HOME="$HOME/Android/Sdk"
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools/
export PATH=$PATH:$ANDROID_SDK_ROOT/cmdline-tools/latest/bin/
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator/
export PATH=$PATH:$ANDROID_SDK_ROOT/build-tools/
export PATH=$PATH:$HOME/.bun/.bin

export PATH=$PATH:$HOME/.local/bin
# export TERM=xterm-256color

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

pfetch

grub-update() {
	sudo grub-mkconfig -o /boot/grub/grub.cfg
}

fetch-mirrors() {
	sudo reflector --save /etc/pacman.d/mirrorlist --sort rate -f 5 -c Indonesia,Singapore,Japanese,Chinese --latest 5
}

reset-bash() {
	source $HOME/.bashrc
}

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH
