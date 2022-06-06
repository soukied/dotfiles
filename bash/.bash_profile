#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export PYENV_ROOT="$HOME/.pyenv"
export DXVK_ASYNC=1
export PROTON_ENABLE_NVAPI=1
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(rbenv init - bash)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
