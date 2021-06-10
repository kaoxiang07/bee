#!/bin/bash
#Install bee-clef
wget https://github.com/ethersphere/bee-clef/releases/download/v0.4.12/bee-clef_0.4.12_amd64.deb
sudo dpkg -i bee-clef_0.4.12_amd64.deb

#Install bee
wget https://github.com/ethersphere/bee/releases/download/v0.5.3/bee_0.5.3_amd64.deb
sudo dpkg -i bee_0.5.3_amd64.deb

#Start bee-clef and bee
for ((i=1; i<90; i++)); do
	tmux new -s beeclef$i -d -n beeclef$i
	tmux send-keys -t beeclef$i:beeclef$i "bash clef-service.sh start $i" C-m
	tmux new -s bee$i -d -n bee$i
	tmux send-keys -t bee$i:bee$i "expect startbee.sh $i" C-m
done

string=$(curl -s localhost:1635/addresses | jq .ethereum)
wallet=${string:1:-1}
echo $wallet
