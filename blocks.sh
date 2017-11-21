#!/bin/bash

for i in `seq 491407 501000`;
do
	epoch_time=$(bgold-cli getblock $(bgold-cli getblockhash $i) | jq .time)
	date -d @$epoch_time
done
