#!/bin/bash

echo "Install Ansible"
sudo apt-get install software-properties-common -y
sudo apt-add-repository ppa:ansible/ansible -y
sudo apt-get update
sudo apt-get install ansible -y
ansible-galaxy install nickjj.docker 
ansible-galaxy install geerlingguy.java 
ansible-galaxy install geerlingguy.jenkins 
