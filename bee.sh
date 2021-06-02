#!/bin/bash
wget https://github.com/ethersphere/bee-clef/releases/download/v0.4.12/bee-clef_0.4.12_amd64.deb
sudo dpkg -i bee-clef_0.4.12_amd64.deb
bash clef-service.sh start
wget https://github.com/ethersphere/bee/releases/download/v0.6.2/bee_0.6.2_amd64.deb
sudo dpkg -i bee_0.6.2_amd64.deb
bee start --verbosity 5 --swap-endpoint wss://goerli.infura.io/ws/v3/26dd0a4d0c944e79a2454ab46f982557 --debug-api-enable --clef-signer-enable --clef-signer-endpoint /var/lib/bee-clef/clef.ipc

