#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export mesa_glthread=true
export __GL_THREADED_OPTIMIZATION=1
export LUTRIS_ENABLE_PROTON=1
export ENABLE_VKBASALT=1
export RADV_PERFTEST=gpl

export DXVK_ASYNC=1
