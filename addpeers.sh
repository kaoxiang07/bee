#!/bin/bash
#Add peers for all node
for ((i=0; i<80; i++)); do
	curl -X POST localhost:$((1635+$i*10))/connect/ip4/172.96.203.143/tcp/1640/p2p/16Uiu2HAmQXEfeDoBm4eTFSYJcQ8BBCJzccxSvjAyY3XaiHtYrHEp
	curl -X POST localhost:$((1635+$i*10))/connect/ip4/43.130.16.240/tcp/1634/p2p/16Uiu2HAmRMsU4FJPSBsyExukMJ5HrmyCbQRy9y4E6fmj8shfaujc
	curl -X POST localhost:$((1635+$i*10))/connect/ip4/66.181.45.134/tcp/50254/p2p/16Uiu2HAkzyGEtXiqx77A4JJ1hA5ojsCfRD5XPM2jWNsTiiX6wvAi
	curl -X POST localhost:$((1635+$i*10))/connect/ip4/91.92.128.52/tcp/1634/p2p/16Uiu2HAmHqjP3obvHHyVGDq1RRGj6iL4ALcyvVoCLMuYxwWaACAm
	curl -X POST localhost:$((1635+$i*10))/connect/ip4/172.16.16.4/tcp/1634/p2p/16Uiu2HAmFADD3y5CuCkGaYhPAqCLr4s5wxWvMJgDq81iidde3pcq
	curl -X POST localhost:$((1635+$i*10))/connect/ip4/43.130.16.240/tcp/1634/p2p/16Uiu2HAmRMsU4FJPSBsyExukMJ5HrmyCbQRy9y4E6fmj8shfaujc
	curl -X POST localhost:$((1635+$i*10))/connect/ip4/51.79.68.121/tcp/1634/p2p/16Uiu2HAm5KXkSSg1uk3KdvJYWNGuVwMA1ASurcunELrhFV9sadtV
	curl -X POST localhost:$((1635+$i*10))/connect/ip4/172.105.208.202/tcp/1634/p2p/16Uiu2HAmVQdBWSS11s3m3PtGVi92Ts2m7UvxnJmVLJQVdfaxu63z
	curl -X POST localhost:$((1635+$i*10))/connect/ip4/172.104.83.228/tcp/1634/p2p/16Uiu2HAmGTv2AqBCEmZy8PGpNXj6a2TjTzjvmht1hha1Sg88ALqk
	curl -X POST localhost:$((1635+$i*10))/connect/ip4/107.182.177.94/tcp/1640/p2p/16Uiu2HAkvu5g73Q5MpFooLPNHvbyaocHH4bZdLCnVHuZkK4wFc5Z
	curl -X POST localhost:$((1635+$i*10))/connect/ip4/23.224.227.34/tcp/50144/p2p/16Uiu2HAmLEjmegMaV8D8JLVJWGZXFq4MfPrc37TVfhDMQPxaUvRY
	curl -X POST localhost:$((1635+$i*10))/connect/ip4/43.129.167.250/tcp/1634/p2p/16Uiu2HAkwNE3QqhoRLgyeEM3AknBKpYttS3LG2rLJJxsRRAVmXJv
	curl -X POST localhost:$((1635+$i*10))/connect/ip4/172.105.208.202/tcp/1634/p2p/16Uiu2HAmVQdBWSS11s3m3PtGVi92Ts2m7UvxnJmVLJQVdfaxu63z
	curl -X POST localhost:$((1635+$i*10))/connect/ip4/172.105.238.165/tcp/1634/p2p/16Uiu2HAmSU1qU83tJZAh1z6ZhGshQ9gfeU558iNGZZrpkDdi47rB
	curl -X POST localhost:$((1635+$i*10))/connect/ip4/154.215.142.136/tcp/1634/p2p/16Uiu2HAmUFKWHjk9bY7HRx2eeUoMPUPCoADp21UBhgpsF8dWQ6YE
	curl -X POST localhost:$((1635+$i*10))/connect/ip4/118.190.99.166/tcp/1718/p2p/16Uiu2HAm8r7mNE9B8mYpbuuTb3gE7WSx3mxVuKu7KKrmGyzCCdjW
	curl -X POST localhost:$((1635+$i*10))/connect/ip4/115.28.137.36/tcp/1727/p2p/16Uiu2HAm9SfzYvyj78nGoVyvvtgHEw1mBAeZWw1svBQduY9hGDYV
	curl -X POST localhost:$((1635+$i*10))/connect/ip4/115.28.210.215/tcp/1721/p2p/16Uiu2HAkzXgDXZQ9wHAEz93risUhWbCort3HMUrooaYqKaeP4ds5
	curl -X POST localhost:$((1635+$i*10))/connect/ip4/154.196.198.93/tcp/1744/p2p/16Uiu2HAmPHLv5JM3daZaKBkLiTc16Q9DmyLS4KLsUyACUXmuoy5p
	curl -X POST localhost:$((1635+$i*10))/connect/ip4/47.241.117.81/tcp/58294/p2p/16Uiu2HAkyJ6YH9DujZuC62BHrSgcGAtwWwcYhLhw4rKiY8PMU8nU
	curl -X POST localhost:$((1635+$i*10))/connect/ip4/172.18.0.14/tcp/1634/p2p/16Uiu2HAm95nYueCfMYnZ7qVPP3EgbS7vMEnJ5TFiKoMYRezQe4rA
done

