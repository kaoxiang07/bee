#!/usr/bin/expect
password=qiaomu@@1309
spawn bee start --verbosity 5 --swap-endpoint wss://goerli.infura.io/ws/v3/26dd0a4d0c944e79a2454ab46f982557 --debug-api-enable --clef-signer-enable --clef-signer-endpoint /var/lib/bee-clef/clef.ipc
expect {
        -re "Password:" {send "${password}\r"
		exp_continue
		}
	-re "Confirm password:" {send "${password}\r"
		}
}

interact
