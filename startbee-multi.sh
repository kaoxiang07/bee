#!/bin/bash
#Copy Files
	mkdir /home/qm/.bee$1
	cp -r /root/.bee/keys /root/.bee/statestore /home/qm/.bee$1
	cp /etc/bee/bee.yaml /home/qm/.bee$1
#Start Bee
bee start --verbosity 5 --swap-endpoint https://goerli.infura.io/v3/bfe7fe111c5b418096059c1eb6587b03 --debug-api-enable --clef-signer-enable --clef-signer-endpoint /var/lib/bee-clef/clef.ipc --api-addr 127.0.0.1:$((1633+$1*100)) --debug-api-addr 127.0.0.1:$((1635+$1*100)) --p2p-addr 127.0.0.1:$((1634+$1*100)) --tracing-endpoint 127.0.0.1:$((6831+$1*100)) --data-dir /home/qm/.bee$1 --config /home/qm/.bee$1/bee.yaml --password sw806819
