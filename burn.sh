#!/usr/bin/expect

# burn
expect -c "
set timeout 3
spawn ironfish wallet:burn --fee="0.00000001" --amount=1
expect \"? Select the asset you wish to burn (Use arrow keys)\"
send  \"\n\"
expect \"Do you confirm (Y/N)?:\"
send  \"y\n\"
expect eof
"
sleep 10
exit 0