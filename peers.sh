#!/bin/bash
for ((i=0; i<90; i++)); do
	echo Bee node $i peers:
	curl -s http://localhost:$((1635+$i*100))/peers | jq '.peers | length'
done
