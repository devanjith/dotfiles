#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# aliases
[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases

#nvim is the new vim
export VISUAL=nvim
export EDITOR="$VISUAL"
export SUDO_EDITOR="$VISUAL"

PS1='[\u@\h \W]\$ '

case ${TERM} in
 alacritty)
          PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'
          ;;
esac
