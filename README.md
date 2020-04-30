# Configurar Desktop ou VirtualBox

Se necessário instalar 
* [VirtualBox](http://virtualbox.org/)
* [Vagrant](http://vagrantup.com/)

1.1 Instalar o ansible no Linux com Bash

`$ bash ./util/install_ansible.sh`

1.2 Atualizar o Ubuntu no localhost (desktop)

`$ ansible-playbook playbooks/desktop/config-all.yml  -i inventories/desktop`

1.3 Atualizar o Ansible no localhost (desktop)

`$ ansible-playbook playbooks/desktop/config-ansible.yml  -i inventories/desktop`

1.4 Instalar o docker daemon

`$ ansible-playbook playbooks/desktop/docker.yml -i inventories/desktop`

* Reinicie a sessão do linux (logout ou reboot)

1.5 Instalar o Jenkins com ansible

`$ ansible-playbook playbooks/desktop/jenkins.yml -i inventories/desktop`

# Criar a infra na AWS

2.1 Criar um arquivo para as senhas

`$ echo "MinhaSenhA" > ~/.ansible/.vault_pass`

2.2 Arquivo aws_credentials.yml

`AWSAccessKeyId: AKIAJLHNMCBOI*******`
`AWSSecretKey: iMcMw4TB7cv9k*******`

2.3 Encriptar o arquivo aws_credentials.yml

`$ ansible-vault encrypt aws_credentials.yml --vault-password-file ~/.ansible/.vault_pass`

2.4 Criar uma infra completa do VPC-EC2 com ansible
`$ ansible-playbook playbooks/aws_provisioning.yml`

3. Servidores EC2 criados

3.1 Atualizar apt-get e instalar dependencias para awscli, jenkins, docker.

`$ ansible-playbook playbooks/config-all.yml -i inventories/desktop`

Instalação do Ansible na EC2 01.

`$ ansible-playbook playbooks/config-ansible.yml -i inventories/desktop`

Instalação do Docker nas EC2 1,2,3.

`$ ansible-playbook playbooks/config-docker.yml -i inventories/desktop`

Instalação do Jenkins na EC2 1.

`$ ansible-playbook playbooks/config-jenkins.yml -i inventories/desktop`

