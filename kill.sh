#!/bin/bash
for ((i=0; i<80; i++)); do 
	tmux kill-session -t bee$i
	tmux kill-session -t beeclef$i
done
