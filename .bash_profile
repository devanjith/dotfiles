#
# ~/.bash_profile
#

export PATH=$PATH:~/.bin

export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

[[ ! -e /tmp/junk ]] && mkdir /tmp/junk
[[ -f ~/.bashrc ]] && . ~/.bashrc
