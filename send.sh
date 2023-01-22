#!/usr/bin/expect

# burn
expect -c "
set timeout 3
spawn ironfish wallet:send --to dfc2679369551e64e3950e06a88e68466e813c63b100283520045925adbe59ca --fee="0.00000001" --amount=1  --confirm
expect \"? Select the asset you wish to send (Use arrow keys)\"
send  \"\n\"
expect eof
"
exit 0