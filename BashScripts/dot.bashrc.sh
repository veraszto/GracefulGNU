#!/bin/bash
#
## .bashrc 
# Source global definitions

#This is set later

test $BASHRCSOURCED || unset HISTFILE

if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

clean_bash=${0#-}
clean_bash=${clean_bash##*/}
PS1="\u@$clean_bash\w\$ "
unset PROMPT_COMMAND
shopt -s autocd
export TERM=xterm-256color


HISTSIZE=-1
HISTFILESIZE=-1

source ~/git/GracefulGNU/BashScripts/powerline.load.sh
