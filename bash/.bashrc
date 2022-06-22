#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export ANDROID_HOME="/home/soukied/Android/Sdk"
export PATH="$PATH:$ANDROID_HOME/emulator"
export PATH="$PATH:$ANDROID_HOME/platform-tools"

export PATH="$/home/soukied/.local/bin:/home/soukied/.rbenv/bin:/home/soukied/.rbenv/shims:$PATH"

export CHROME_EXECUTABLE=/usr/bin/brave

alias ls='ls --color=auto'
export PS1='\[\e[0;36m\][\[\e[0;2;92m\]\u\[\e[0;36m\]@\[\e[0;2;92m\]\H \[\e[0;2;93m\]\W\[\e[0;36m\]]\[\e[0;36m\]$ \[\e[0m\]'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
eval "$(starship init bash)"
