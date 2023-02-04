#!/bin/bash

i=0
while [ $i -lt 500 ]
do

# mint
ironfish wallet:mint --name="登録名" --metadata="metadata" --fee="0.00000001" --amount=3 --confirm
sleep 300
# burn
bash burn.sh
sleep300
# send
bash send.sh
sleep 300
#wallet faucet
echo "メールアドレスを入力"|ironfish faucet

i=`expr $i + 1`

done

