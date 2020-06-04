# SSHLog attempts
Number of ssh log-in attempts

Objective:

* AlphaServer : will show all the metrices ssh log-in attempt from AlphaClients
* AlphaClient : will report the metrics number from ssh login attempts to AlphaServer
* Script will be run in cronjob every minute, configured using Ansible 

Assumption:

* AlphaServer and AlphaClient is running CentOs 7
* AlphaClient is running on 2 machines (nodeABC and nodeXYZ)
* Automate config to cronjob using Ansible (version 2.9.9-1.el7.noarch) from AlphaServer
* Ansible inventory file, manually insert in /etc/ansible/hosts
* User for all node: root
* Password for all node: ChangeMe
* Should change ip_alphaserver in client.sh to your ip AlphaServer

Usage:

* Store client.sh, server.sh, and cronsshlog.yml into AlphaServer, then run

ansible-playbook cronsshlog.yml
