#!/bin/bash
apt install -y jq
#Get wallet addresses
for ((i=0; i<80; i++)); do
	string=$(curl -s localhost:$((1635+$i*10))/addresses | jq .ethereum)
	wallet=${string:1:-1}
	echo $wallet
done
