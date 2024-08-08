#!/bin/bash


ansible-playbook samples/copy.yml 
## wait 2 seconds for the vault changes to take effect
sleep 2
ansible-playbook samples/create.yml
sleep 2
ansible-playbook samples/write.yml
sleep 2
ansible-playbook samples/append.yml