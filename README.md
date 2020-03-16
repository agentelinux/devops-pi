# devops-pi
Estrutura de projeto

* (option) Linux no virtualbox
* (option) vagrant up
* Install ansible
* * $ bash ./install_ansible.sh
* Install docker daemon with ansible
* * $ ansible-playbook playbooks/docker.yml
* * # para refletir as configurações de grupo
* * $ exit
* Install Jenkins with ansible
* * $ ansible-playbook playbooks/jenkins.yml

