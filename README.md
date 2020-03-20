# devops-pi
Estrutura de projeto

# 1. Local
* Install Vagrant
* (option) Linux no virtualbox
* (option) vagrant up

# 2. AWS
$ pip install boto boto3
$ vi ~/.ansible/.vault_pass
$ ansible-vault create aws_credentials.yml
$ ansible-vault view aws_credentials.yml --vault-password-file ~/.ansible/.vault_pass
# AWSAccessKeyId: AKIAJLHNMCBOI*******
# AWSSecretKey: iMcMw4TB7cv9k*******


# 3. Jenkins
* Install ansible
* * $ bash ./install_ansible.sh
* Install docker daemon with ansible
* * $ ansible-playbook playbooks/docker.yml
* * # para refletir as configurações de grupo
* * $ exit
* Install Jenkins with ansible
* * $ ansible-playbook playbooks/jenkins.yml

