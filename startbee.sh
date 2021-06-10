#!/usr/bin/expect
set password qiaomu@@1309

spawn bee start --verbosity 5 --swap-endpoint https://goerli.infura.io/v3/8977a93858994c8a99cae227e6e03040 --debug-api-enable --clef-signer-enable --clef-signer-endpoint /mnt/.bee-clef$1/clef.ipc --api-addr 127.0.0.1:$((1633+$1*100)) --debug-api-addr 127.0.0.1:$((1635+$1*100)) --p2p-addr 127.0.0.1:$((1634+$1*100)) --tracing-endpoint 127.0.0.1:$((6831+$1*100)) --data-dir /mnt/.bee$1 --config /mnt/.bee$1/bee.yaml --password $password

expect {
        -re "Password:" {send "${password}\r"
		exp_continue
		}
	-re "Confirm password:" {send "${password}\r"
		}
}

interact
