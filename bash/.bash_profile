#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export ENABLE_VKBASALT=1
export OBS_VKCAPTURE=1

[[ -f /home/linuxbrew/.linuxbrew/bin/brew ]] && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
