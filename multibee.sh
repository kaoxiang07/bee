#!/bin/bash
#Copy files
for ((i=3; i<11; i++)); do
	tmux new -s bee$i -d -n bee$i
	tmux send-keys -t bee$i:bee$i "bash startbee-multi.sh $i" C-m
done
