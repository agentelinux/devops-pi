# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"

  # Desktop com VirtualBox:
  #
  config.vm.provider "virtualbox" do |vb|
  
    config.vm.network "private_network", ip: "192.168.33.10" , :adapter => 2
    # Display the VirtualBox GUI when booting the machine
    vb.gui = true
    # Customize the amount of memory on the VM:
    vb.memory = "2048"
  end
  #
  # Configuracao para AWS Cloud
  config.vm.provider :aws do |aws, override|

    #aws.access_key_id = "YOUR KEY"
    #aws.secret_access_key = "YOUR SECRET KEY"
    #aws.session_token = "SESSION TOKEN"
    #aws.keypair_name = "KEYPAIR NAME"

    aws.ami = "ami-0400a1104d5b9caa1"
    aws.instance_type = "t2.micro"

#    override.ssh.username = "ubuntu"
#    override.ssh.private_key_path = "PATH TO YOUR PRIVATE KEY"

  end

end
