# DevOps Hands-on AWS com Ansible, Docker, Jenkins
Estrutura dividida em Trilhas
> Trilhas 1 e 2 correspondem ao ambiente desktop
>
> Trilhas 3 2 4 correspondem a instação e configuração do Docker e do Jenkins

# 1. Trilha local
* É necessário instalar o [VirtualBox](http://virtualbox.org/)
* É necessário instalar o [Vagrant](http://vagrantup.com/)
* (Linux pré-instalado) Linux no virtualbox
* (Usar o Vagrant para instalar o Linux no VirtualBox) vagrant up
* Continua na Trilha AWS

# 2. Trilha conectar com a AWS
* Pré requisito seguir a da Trilhas Local
* Instalar o ansible no Linux
> `$ bash ./install_ansible.sh`
* Scripts Ansible para automatizar a instalação do ambiente
* Criar um arquivo para as senhas
> `$ vi ~/.ansible/.vault_pass`
* Conteúdo o arquivo .vault_pass
> > senha
* Instalar outras dependencias pip3, boto, boto3, etc
> `$ ansible-playbook playbooks/config-vm.yml`
* Criar um arquivo para cofre de senhas
> `$ vi ~/.ansible/.vault_pass`
* Criar o cofre de senha
> `$ ansible-vault create aws_credentials.yml`
* Como visualizar o conteúdo de um cofre
> `$ ansible-vault view aws_credentials.yml --vault-password-file ~/.ansible/.vault_pass`
> AWSAccessKeyId: AKIAJLHNMCBOI*******
>
> AWSSecretKey: iMcMw4TB7cv9k*******
* É necessário instalar o [aws-cli](https://docs.aws.amazon.com/pt_br/cli/latest/userguide/cli-chap-install.html)
* Listar a VMs EC2 instaladas
`$ ansible-inventory --graph aws_ec2`
> @aws_ec2:
>
>   |--ec2-3-84-36-30.compute-1.amazonaws.com

# 3. Trilha provisionar um Linux EC2 na AWS
O objetivo é criarmos um ambiente de desenvolvimento, homologação ou produção
* Instalar uma infra completa do VPC-EC2 com ansible
* * `$ ansible-playbook playbooks/aws_provisioning.yml`


# 4. Trilha Jenkins na EC2
Concluído as demais Trilhas, vamos criar o Jenkins dentro da VM EC2 AWS
* Instalar o docker daemon com ansible
* * `$ ansible-playbook playbooks/docker.yml`
* * Sair do Linux para refletir as configurações de grupo
* * * `$ exit`
* Instalar o Jenkins com ansible
* * `$ ansible-playbook playbooks/jenkins.yml`

