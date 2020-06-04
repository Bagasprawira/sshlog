#!/bin/bash

alphaserver="ip_alphaserver"
count=$(grep "Failed\|Accepted" /var/log/secure | wc -l)

if [[ "$HOSTNAME" = nodeABC ]]; then
        sshpass -p 'ChangeMe' rsync -rvz -e 'ssh -o StrictHostKeyChecking=no' /var/log/secure root@$alphaserver:/var/log/"$HOSTNAME".log >/dev/null
        echo "$count ssh log-in attempts were made at "$HOSTNAME" "
elif [[ "$HOSTNAME" = nodeXYZ ]]; then
        sshpass -p 'ChangeMe' rsync -rvz -e 'ssh -o StrictHostKeyChecking=no' /var/log/secure root@$alphaserver:/var/log/"$HOSTNAME".log >/dev/null
        echo "$count ssh log-in attempts were made at "$HOSTNAME" "
else
        echo "Sorry, this server is not managed"
        exit
fi