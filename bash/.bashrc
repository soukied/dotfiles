#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PATH="$PATH:$HOME/.local/bin:$HOME/.config/emacs/bin"

export EDITOR=vim
export VISUAL=vim

if command -v nvi > /dev/null; then
	alias vi='nvi'
fi

if command -v exa > /dev/null; then
	alias ls='exa'
	alias ll='exa -l --icons'
fi
alias sudo="sudo -E"
alias paru="paru --skipreview --sudoloop"
alias grep='grep --color=auto'

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1='\[\e[92m\]\u\[\e[93m\]@\[\e[92m\]\H \[\e[36m\]\W \[\e[37m\]\\$ \[\e[0m\]'

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
[[ -f "/usr/share/nvm/init-nvm.sh" ]] && source /usr/share/nvm/init-nvm.sh

# Use bash-completion, if available
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && . /usr/share/bash-completion/bash_completion

# [ -f ~/.vimrc ] && eval "$(starship init bash)"

refreshenv() {
	bash
	exit > /dev/null
}


# pyenv
export PYENV_ROOT="$HOME/.pyenv"
if command -v pyenv > /dev/null; then
	export PATH="$PYENV_ROOT/bin:$PATH"
	eval "$(pyenv init -)"
fi
