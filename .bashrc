#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# aliases
[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases

#256 colors
export TERM=xterm-256color

#vim <3
export VISUAL=vim
export EDITOR="$VISUAL"
export SUDO_EDITOR="$VISUAL"

PS1='[\u@\h \W]\$ '
