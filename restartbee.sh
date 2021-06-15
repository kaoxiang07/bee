#!/bin/bash
#Restart bee
for ((i=0; i<80; i++)); do
	tmux send-keys -t bee$i:bee$i "expect startbee.sh $i $((1633+$i*10)) $((1635+$i*10)) $((1634+$i*10)) $((6831+$i*10))" C-m
	echo Now restarting bee node $i
done
