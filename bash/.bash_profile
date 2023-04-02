#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export LUTRIS_ENABLE_PROTON=1
# export LUTRIS_SKIP_INIT=1
export __GL_THREADED_OPTIMIZATIONS=1

export RADV_PERFTEST=gpl

if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
	printf ""
else
	source /opt/esp-idf/export.sh
fi
