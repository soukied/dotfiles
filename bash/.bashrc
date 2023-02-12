#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export EDITOR="nvim"
export VISUAL="nvim"
export PYENV_PATH="/home/soukied/.pyenv/bin"
export PATH="$PYENV_PATH:$PATH"
export OPENAI_API_KEY="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"

export NVM_DIR="$HOME/.nvm"

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias grub-update="sudo grub-mkconfig -o /boot/grub/grub.cfg"

alias looking-glass="looking-glass-client -s -F"
alias ll="exa -l"
alias ls="exa"

alias sudo="sudo -E"
eval "$(pyenv virtualenv-init -)"

alias boot-normal="sudo cp -f /etc/default/grub.normal /etc/default/grub && sudo grub-mkconfig -o /boot/grub/grub.cfg && reboot"
alias boot-vfio="sudo cp -f /etc/default/grub.vfio /etc/default/grub && sudo grub-mkconfig -o /boot/grub/grub.cfg && reboot"

export PS1=' \[\e[0;1;36m\]\W \[\e[0;1m\]) \[\e[0m\]'

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH
