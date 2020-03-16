#!/bin/bash

echo "Install Ansible"
sudo apt-get install software-properties-common -y
sudo apt-add-repository ppa:ansible/ansible -y
sudo apt-get update
sudo apt-get install ansible -y
sudo ansible-galaxy install geerlingguy.pip
sudo ansible-galaxy install geerlingguy.docker
sudo ansible-galaxy install geerlingguy.java
sudo ansible-galaxy install geerlingguy.jenkins
