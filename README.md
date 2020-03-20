# devops-pi
Estrutura de projeto

# 1. Trilha local
* É necessário instalar o [VirtualBox](http://virtualbox.org/)
* É necessário instalar o [Vagrant](http://vagrantup.com/)
* (Linux pré-instalado) Linux no virtualbox
* (Usar o Vagrant para instalar o Linux no VirtualBox) vagrant up

# 2. Trilha remota com AWS
* É necessário ter instalado o python3, pip3 e Ansible
* Outros programas necessários
`$ pip install boto boto3`
* Criar um arquivo para cofre de senhas
`$ vi ~/.ansible/.vault_pass`
* Criar o cofre de senha
`$ ansible-vault create aws_credentials.yml`
* Como visualizar o conteúdo de um cofre
`$ ansible-vault view aws_credentials.yml --vault-password-file ~/.ansible/.vault_pass`
> AWSAccessKeyId: AKIAJLHNMCBOI*******
> AWSSecretKey: iMcMw4TB7cv9k*******
* É necessário instalar o [aws-cli](https://docs.aws.amazon.com/pt_br/cli/latest/userguide/cli-chap-install.html)
* Listar a VMs EC2 instaladas
`$ ansible-inventory --graph aws_ec2`
> @aws_ec2:
>   |--ec2-3-84-36-30.compute-1.amazonaws.com


# 3. Jenkins
* Pré requisito ter o Linux instalado
* Instalar o ansible no Linux
* * `$ bash ./install_ansible.sh`
* Scripts Ansible para automatizar a instalação do ambiente
* Instalar o docker daemon com ansible
* * `$ ansible-playbook playbooks/docker.yml`
* * Sair do Linux para refletir as configurações de grupo
* * * `$ exit`
* Instalar o Jenkins com ansible
* * `$ ansible-playbook playbooks/jenkins.yml`

