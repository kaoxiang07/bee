#!/bin/bash
#Download bee-clef
#wget https://github.com/ethersphere/bee-clef/releases/download/v0.4.12/bee-clef_0.4.12_amd64.deb

#Download bee
#wget https://github.com/ethersphere/bee/releases/download/v0.5.3/bee_0.5.3_amd64.deb

#Start bee-clef
apt install -y jq
for ((i=0; i<80; i++)); do
	sudo apt-get -y --purge remove bee
	sudo apt-get -y --purge remove bee-clef
	sudo dpkg -i package/bee-clef_0.4.12_amd64.deb
	sudo dpkg -i package/bee_0.5.2_amd64.deb
	mkdir -p /mnt/tmp/.bee-clef$i/config/
	echo Now moving data files into /mnt/.bee-clef$i/...
	mv /etc/bee-clef/* /mnt/tmp/.bee-clef$i/config/
	mv /var/lib/bee-clef/* /mnt/tmp/.bee-clef$i/
	tmux new -s beeclef$i -d -n beeclef$i
	tmux send-keys -t beeclef$i:beeclef$i "bash clef-service.sh start $i" C-m
done

#Start bee
for ((i=0; i<80; i++)); do
	sudo apt-get -y --purge remove bee
	sudo apt-get -y --purge remove bee-clef
	sudo dpkg -i package/bee-clef_0.4.12_amd64.deb
	sudo dpkg -i package/bee_0.5.2_amd64.deb
	echo Now starting bee node $i
	mkdir /mnt/tmp/.bee$i/
	cp /etc/bee/bee.yaml /mnt/tmp/.bee$i/ 
	tmux new -s bee$i -d -n bee$i
	tmux send-keys -t bee$i:bee$i "expect startbee.sh $i $((1633+$i*10)) $((1635+$i*10)) $((1634+$i*10)) $((6831+$i*10))" C-m
done

