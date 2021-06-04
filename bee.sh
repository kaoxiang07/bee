#!/bin/bash
#Install and Start bee-clef
wget https://github.com/ethersphere/bee-clef/releases/download/v0.4.12/bee-clef_0.4.12_amd64.deb
sudo dpkg -i bee-clef_0.4.12_amd64.deb
	tmux new -s beeclef -d -n beeclef
	tmux send-keys -t beeclef:beeclef "bash clef-service.sh start" C-m

#Install and Start bee
wget https://github.com/ethersphere/bee/releases/download/v0.6.2/bee_0.6.2_amd64.deb
sudo dpkg -i bee_0.6.2_amd64.deb
	        tmux new -s bee -d -n bee
		tmux send-keys -t bee:bee "expect startbee.sh" C-m
