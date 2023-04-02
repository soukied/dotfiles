#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='exa'
alias ll='exa -l'
alias grep='grep --color=auto'
alias sudo="sudo -E"
PS1='[\u@\h \W]\$ '
source /usr/share/nvm/init-nvm.sh

export PATH="/home/soukied/.haxe_lib/heaps/1,10,0/:$PATH"

export PYENV_ROOT="$HOME/.pyenv"
export EDITOR="nvim"
export VISUAL="nvim"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

alias idf="idf.py"

if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
	printf ""
else
  export PS1=' \[\e[0;1;36m\] \[\e[0;36m\] \[\e[0;30;46m\]\u\[\e[0;30;46m\]@\[\e[0;30;46m\]\h\[\e[0;36;103m\] \[\e[0;1;7;93m\]\W\[\e[0;103m\] \[\e[0;93m\] \[\e[0m\]'
fi

boot-normal() {
  sudo cp -f /etc/default/grub.old /etc/default/grub
  sudo grub-mkconfig -o /boot/grub/grub.cfg
  sudo reboot
}

boot-vfio() {
  sudo cp -f /etc/default/grub.vfio /etc/default/grub
  sudo grub-mkconfig -o /boot/grub/grub.cfg
  sudo reboot
}
