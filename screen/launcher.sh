#!/bin/bash

test "$2" = "wrapper" &&\
screen="screen -e ^ba -c ${HOME}/git/GracefulGNU/screen/combo.outer.conf -mS $1" ||\
screen="screen -e '' -c ${HOME}/git/GracefulGNU/screen/combo.inner.conf -mS $1"

$screen
