#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"

export DXVK_ASYNC=1
export DENO_INSTALL="/home/soukied/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
export DVM_DIR="/home/soukied/.dvm"
export PATH="$DVM_DIR/bin:$PATH"

eval "$(rbenv init - bash)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
