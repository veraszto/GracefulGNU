#!/bin/bash

mySessionTmux=${1:-Main}

tmux \
	-f $HOME/git/GracefulGNU/tmux/main.conf \
	-L $mySessionTmux \
	new-session -s $mySessionTmux \; \
	rename-window "ReadCalmly" \; \
	split-window \; \
	new-window -n "Vim" \; \
	split-window \; \
	new-window -n "Input" \; \
	split-window \; \
	split-window \; \
	split-window \; \
	new-window -n "Docker" \; \
	split-window 


