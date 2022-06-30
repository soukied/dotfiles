#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='exa --color=auto'
PS1='[\u@\h \W]\$ '

export CHROME_EXECUTABLE='brave'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

eval "$(starship init bash)"
