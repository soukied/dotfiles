#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PATH="$PATH:$HOME/.local/bin"

set tabs -4

alias docker="podman"
alias ls='exa'
alias ll='exa -l'
alias sudo="sudo -E"
alias grep='grep --color=auto'
alias tree="tree -C"
alias cat="bat"

vi() {
	nvi $@
}

export PS1="\[$(tput setaf 226)\]\u\[$(tput setaf 220)\]@\[$(tput setaf 214)\]\h \[$(tput setaf 9)\]\W \[$(tput sgr0)\]$ "

alias paru="paru --skipreview --sudoloop"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH
