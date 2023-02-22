#!/bin/bash

domain='http://127.0.0.1:2000' # Domain of the server (CHANGE HERE)
page='fetchIP.php'

#MYIP=$(ifconfig | grep 'inet ' | grep -v 127.0.0.1 | awk '{print $2}')
MYIP=$(hostname -I | awk '{print $1}')

# If the above fails, try this
if [ -z "$MYIP" ]; then
    echo "Error: Could not get IP address"
    exit 1
fi

#curl "${domain}/${page}?x=${MYIP}"
wget "${domain}/${page}?x=${MYIP}"