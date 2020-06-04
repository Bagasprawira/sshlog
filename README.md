# SSHLog attempts
Number of ssh log-in attempts

Objective:

AlphaServer : can show all the metrices ssh log-in attempt from AlphaClients
AlphaClient : can report the metrics of number from ssh log-in attempts to AlphaServer
Script will be run in cronjob every minute, configured using Ansible 

Assumption:

AlphaServer and AlphaClient is running CentOs 7
Automation script using Ansible (version 2.9.9-1.el7.noarch)
Ansible inventory file, manually insert in /etc/ansible/hosts
User for all node: root 
Password for all node: P@ssw0rd

Usage:

ansible-playbook cronsshlog.yml
