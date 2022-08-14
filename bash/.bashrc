#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='exa --color=auto'
export PS1='[\u@\h \W]\$ '

export PATH="$HOME/flutter/bin:$HOME/.local/bin:$HOME/.pyenv/bin/:$PATH"
export CHROME_EXECUTABLE='brave'

export TERM=xterm-256color

export EDITOR="nvim"
BUN_INSTALL="/home/soukied/.bun"
PATH="$BUN_INSTALL/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias py="python"
alias cat="bat"

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

eval "$(starship init bash)"
