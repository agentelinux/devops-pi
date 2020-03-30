# DevOps Hands-on AWS com Ansible, Docker, Jenkins
Estrutura dividida em Trilhas
> Trilhas 1 e 2 correspondem ao ambiente desktop
>
> Trilhas 3 2 4 correspondem a instação e configuração do Docker e do Jenkins

# 1. Trilha local com Linux virtualizado
* (recomendado p/ windows) É necessário instalar o [VirtualBox](http://virtualbox.org/)
* É necessário instalar o [Vagrant](http://vagrantup.com/)
* (Linux pré-instalado) Linux no virtualbox
* (Usar o Vagrant para instalar o Linux no VirtualBox) vagrant up
* Continua na Trilha AWS

# 2. Trilha conectar a AWS a partir do Linux Local ou VirtualBox Local
* Pré requisito seguir a da Trilhas Local
* Preparar o Linux para DevOps
* Instalar o ansible no Linux com Bash
`$ bash ./install_ansible.sh`
* Criar um arquivo para as senhas
> `$ vi ~/.ansible/.vault_pass`
* Conteúdo o arquivo .vault_pass
> Na primeira linha o valor da senha (arquivo tipo flat)
* Instalar outras dependencias pip3, boto, boto3, etc
* Scripts Ansible para automatizar a instalação do ambiente
> playbooks/config-vm.yml -- trocar o hosts por local ou manter aws_ec2
> `$ ansible-playbook playbooks/config-vm.yml`
* Criar o cofre de senhas
> `$ ansible-vault create aws_credentials.yml`
* Como visualizar o conteúdo de um cofre
> `$ ansible-vault view aws_credentials.yml --vault-password-file ~/.ansible/.vault_pass`
>
> `AWSAccessKeyId: AKIAJLHNMCBOI*******`
> `AWSSecretKey: iMcMw4TB7cv9k*******`
* Requisito ter o aws-cli instalado.
* Instalar o [aws-cli](https://docs.aws.amazon.com/pt_br/cli/latest/userguide/cli-chap-install.html)
* Listar todas as VMs EC2 instaladas na AWS
`$ ansible-inventory --graph aws_ec2`
> @aws_ec2:
>   |--ec2-3-84-36-30.compute-1.amazonaws.com

# 3. Trilha para provisionar uma VM EC2 Linux na AWS
O objetivo é criarmos um ambiente de desenvolvimento, homologação ou produção
* Instalar uma infra completa do VPC-EC2 com ansible
* * `$ ansible-playbook playbooks/aws_provisioning.yml`


# 4. Trilha instalar na AWS EC2: Docker e Jenkins
Concluído as demais Trilhas, vamos criar o Jenkins dentro da VM EC2 AWS
* Instalar o docker daemon com ansible
* * `$ ansible-playbook playbooks/docker.yml`
* * Sair do Linux para refletir as configurações de grupo
* * * `$ exit`
* Instalar o Jenkins com ansible
* * `$ ansible-playbook playbooks/jenkins.yml`

