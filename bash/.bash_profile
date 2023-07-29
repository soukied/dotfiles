#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export PATH="$PATH:/home/soukied/.local/podman/bin"

export DOCKER_HOST=unix://$XDG_RUNTIME_DIR/docker.sock
export ENABLE_VKBASALT=1
export PYENV_ROOT="$HOME/.pyenv"
if [[ "$HOSTNAME" == "greizon" ]]; then
	command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
	eval "$(pyenv init -)"
fi

# export __GL_THREADED_OPTIMIZATIONS=1
