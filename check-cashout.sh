#!/bin/bash
for ((i=0; i<11; i++)); do
	echo Bee node $i cheque:
	bash cashout.sh	$i
	echo Now cash them out...
	bash cashout.sh $i cashout-all
done
