#!/usr/bin/expect

# burn
expect -c "
set timeout 3
spawn ironfish wallet:burn --fee="0.00000001" --amount=1  --confirm
expect \"? Select the asset you wish to burn (Use arrow keys)\"
send  \"\n\"
expect eof
"

exit 0