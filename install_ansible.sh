#!/bin/bash

echo "Install Ansible"
sudo apt-get install software-properties-common -y
sudo apt-add-repository ppa:ansible/ansible -y
sudo apt-get update
sudo apt-get install ansible -y
sudo ansible-galaxy install nickjj.docker --ignore-certs
sudo ansible-galaxy install geerlingguy.java --ignore-certs
sudo ansible-galaxy install geerlingguy.jenkins --ignore-certs
