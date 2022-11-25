#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source /usr/share/nvm/init-nvm.sh

export CHROME_EXECUTABLE="/usr/bin/brave"
export PATH="$PATH:/home/soukied/.flutter/bin"
export PATH="$PATH:/home/soukied/.local/bin"
export PATH="$PATH:/var/lib/flatpak/exports/bin"

export DENO_INSTALL="/home/soukied/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

export TERM=xterm-256color

export EDITOR="vim"
export VISUAL="vim"
export more="less"

export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"

alias tree="tree -C"
alias ls='exa --color=auto'
alias ll='exa -l --color=auto'
alias sudo="sudo -E"
PS1=' \[\e[0;1;36m\]\W \[\e[0m\]) \[\e[0m\]'

eval "$(pyenv init -)"
# eval "$(starship init bash)"

alias grub-update="sudo grub-mkconfig -o /boot/grub/grub.cfg"
