#!/bin/bash

urxvt -e tty-clock -b -s -c -t &
sleep 0.2

i3-msg fullscreen

i3lock -n; i3-msg kill
