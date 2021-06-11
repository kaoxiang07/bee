#!/bin/bash
#Download bee-clef
#wget https://github.com/ethersphere/bee-clef/releases/download/v0.4.12/bee-clef_0.4.12_amd64.deb

#Download bee
#wget https://github.com/ethersphere/bee/releases/download/v0.5.3/bee_0.5.3_amd64.deb

#Start bee-clef
apt install -y jq
for ((i=0; i<90; i++)); do
	sudo dpkg -i bee-clef_0.4.12_amd64.deb
	mkdir /mnt/.bee-clef$i/
	echo Now moving data files into /mnt/.bee-clef$i/...
	mv /var/lib/bee-clef/* /mnt/.bee-clef$i/
	tmux new -s beeclef$i -d -n beeclef$i
	tmux send-keys -t beeclef$i:beeclef$i "bash clef-service.sh start $i" C-m
done

#Start bee
sudo dpkg -i bee_0.5.3_amd64.deb
for ((i=0; i<90; i++)); do
	echo Now starting bee node $i
	mkdir /mnt/.bee$i/
	cp /etc/bee/bee.yaml /mnt/.bee$i/ 
	tmux new -s bee$i -d -n bee$i
	tmux send-keys -t bee$i:bee$i "expect startbee.sh $i $((1633+$i*10)) $((1635+$i*10)) $((1634+$i*10)) $((6831+$i*10))" C-m
done

#Get wallet addresses
for ((i=0; i<90; i++)); do
	string=$(curl -s localhost:$((1635+$i*10))/addresses | jq .ethereum)
	wallet=${string:1:-1}
	echo $wallet
done
