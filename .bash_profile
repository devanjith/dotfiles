#
# ~/.bash_profile
#

export PATH=$PATH:~/.bin:~/.gem/ruby/2.4.0/bin
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

[[ ! -e /tmp/junk ]] && mkdir /tmp/junk
[[ -f ~/.bashrc ]] && . ~/.bashrc
