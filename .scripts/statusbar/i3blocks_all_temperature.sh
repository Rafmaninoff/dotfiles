#!/usr/bin/sh

echo "$(sensors | grep Package | cut -d+ -f2 | cut -d+ -f2 | cut -d. -f1 | sed 's/[0-9]*/&/') -"

[ "$CURRENT_GPU" = "nvidia" ] && echo $(nvidia-smi -q --display=TEMPERATURE | sed '/GPU Current/!d' | cut -d: -f2 | tr -d " "  | sed 's/C//')


