#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [[ "$DESKTOP_SESSION" == "dwm" ]]; then
	export QT_QPA_PLATFORMTHEME="qt6ct"
fi

export PATH="$PATH:/home/soukied/.local/podman/bin"

export DOCKER_HOST=unix://$XDG_RUNTIME_DIR/docker.sock
export ENABLE_VKBASALT=1
export PYENV_ROOT="$HOME/.pyenv"
if [[ "$HOSTNAME" == "greizon" ]]; then
	command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
	eval "$(pyenv init -)"
fi
