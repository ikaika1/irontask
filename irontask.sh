#!/bin/bash

i=0
while [ $i -lt 500 ]
do

# mint
ironfish wallet:mint --name=$(ironfish config:get blockGraffiti | tr -d '"') --metadata="metadata" --fee="0.00000001" --amount=1 --confirm
sleep 300
# burn
bash burn.sh
sleep 300
# send
bash send.sh
sleep 300   
#wallet faucet
echo "メールアドレス"|ironfish faucet
# 1week
sleep 604000
i=`expr $i + 1`
    
done