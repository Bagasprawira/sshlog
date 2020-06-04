#!/bin/bash

echo -e "Metrics for ssh log-in attempts \n"

echo $(echo "nodeABC had "; if [ -e /var/log/nodeABC.log ]; then grep "Failed\|Accepted" /var/log/nodeABC.log | wc -l; else echo "0"; fi; echo "attempt")
echo $(echo "nodeXYZ had "; if [ -e /var/log/nodeXYZ.log ]; then grep "Failed\|Accepted" /var/log/nodeXYZ.log | wc -l; else echo "0"; fi; echo "attempt")