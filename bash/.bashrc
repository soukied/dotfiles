#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PATH="$PATH:$HOME/.local/bin"

export EDITOR=vim
export VISUAL=vim

if command -v exa > /dev/null; then
	alias ls='exa'
	alias ll='exa -l'
fi
alias sudo="sudo -E"
alias paru="paru --skipreview --sudoloop"
alias grep='grep --color=auto'
PS1='\[\e[92m\]\u\[\e[93m\]@\[\e[92m\]\H \[\e[36m\]\W \[\e[37m\]\\$ \[\e[0m\]'

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH

# pnpm
export PNPM_HOME="/home/soukied/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# nvm
source /usr/share/nvm/init-nvm.sh

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
if command -v pyenv > /dev/null; then
	export PATH="$PYENV_ROOT/bin:$PATH"
	eval "$(pyenv init -)"
fi
