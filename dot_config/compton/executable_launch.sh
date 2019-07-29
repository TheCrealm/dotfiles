#!/usr/bin/env sh

killall -u "$(whoami)" -q compton
while pgrep -u "$(whoami)" -x compton >/dev/null; do sleep 1; done
compton --config ~/.config/compton/config &
