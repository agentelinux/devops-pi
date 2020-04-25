# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"

  # Desktop com VirtualBox:
  #
  config.vm.provider "virtualbox" do |vb|
  
    config.vm.network "private_network", ip: "192.168.33.10" , :adapter => 2
    # Display the VirtualBox GUI when booting the machine
    vb.gui = false
    # Customize the amount of memory on the VM:
    vb.memory = "2048"
  end
  #


end
