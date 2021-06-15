#!/usr/bin/expect
set password qiaomu@@1309
set i [lindex $argv 0]
set i1 [lindex $argv 1]
set i2 [lindex $argv 2]
set i3 [lindex $argv 3]
set i4 [lindex $argv 4]
 
spawn bee start --verbosity 5 --swap-endpoint https://goerli.infura.io/v3/8977a93858994c8a99cae227e6e03040 --debug-api-enable --clef-signer-enable --clef-signer-endpoint /mnt/tmp/.bee-clef$i/clef.ipc --api-addr 127.0.0.1:$i1 --debug-api-addr 127.0.0.1:$i2 --p2p-addr 127.0.0.1:$i3 --tracing-endpoint 127.0.0.1:$i4 --data-dir /mnt/tmp/.bee$i --config /mnt/tmp/.bee$i/bee.yaml --password $password

expect {
        -re "Password:" {send "${password}\r"
		exp_continue
		}
	-re "Confirm password:" {send "${password}\r"
		}
}

interact
