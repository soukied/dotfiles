#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# vi Mode Enabled
# set -o vi

# Environment Variable
export PATH="$PATH:/home/soukied/.local/bin:/home/soukied/.local/share/gem/ruby/3.0.0/bin"

export EDITOR="vi"
export TERM="screen-256color"
export CHROME_EXECUTABLE="/usr/bin/brave"
export ANDROID_HOME="/home/soukied/Android/Sdk"
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk"
export JDTLS_HOME="$HOME/.jdtls"

# Alias Command
alias q="exit"
alias resetkb="setxkbmap"
alias vimkb="xmodmap ~/.Xmodmap"
alias find="fd"
alias cf="cd \"\`fd -t directory . | fzf\`\""
alias tmuxf="cf && tmux && cd -"
alias vimfz="vim \`fzf\`"
alias nvimfz="nvim \`fzf\`"
alias ls="exa"
alias py="python"
alias ll="exa -l --icons"
alias clear-ram='sudo bash -c "echo 3 > /proc/sys/vm/drop_caches"'
alias cls='clear'
export PS1='\[\e[0;36;107m\]  \[\e[0;97;46m\] \[\e[0;1;97;46m\]\W\[\e[0;46m\] \[\e[0;36m\] \[\e[0m\]'

source /usr/share/nvm/init-nvm.sh
# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION

alias luamake=/home/soukied/lua-language-server/3rd/luamake/luamake

treefetch -b
