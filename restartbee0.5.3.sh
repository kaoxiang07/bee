#!/bin/bash
tmux kill-session -t bee
tmux kill-session -t beeclef
#Install and Restart bee-clef
wget https://github.com/ethersphere/bee-clef/releases/download/v0.4.12/bee-clef_0.4.12_amd64.deb
sudo dpkg -i bee-clef_0.4.12_amd64.deb
	tmux new -s beeclef -d -n beeclef
	tmux send-keys -t beeclef:beeclef "bash clef-service.sh start" C-m

#Install and Restart bee
wget https://github.com/ethersphere/bee/releases/download/v0.5.3/bee_0.5.3_amd64.deb
sudo dpkg -i bee_0.5.3_amd64.deb
	tmux new -s bee -d -n bee
	tmux send-keys -t bee:bee "expect startbee.sh" C-m
string=$(sudo bee-get-addr | grep Ethereum)
wallet=${string:0-41:-1}
echo The Ethereum address is: $wallet
