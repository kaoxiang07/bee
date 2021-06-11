#!/bin/bash
for ((i=1; i<10; i++)); do 
	tmux kill-session -t bee$i
	tmux kill-session -t beeclef$i
done
