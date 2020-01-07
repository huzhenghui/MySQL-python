#!/bin/bash
basepath=$(cd `/usr/bin/dirname $0`; pwd)
echo "${basepath}"
echo
${basepath}/MySQL-Vagrant-Basic/Vagrant/inventory_list.generate.sh
echo
/usr/local/bin/ansible-playbook --limit "MySQL-Community,Percona-Server" --inventory-file "${basepath}/MySQL-Vagrant-Basic/Vagrant/inventory_list" "${basepath}/Ansible/MySQL-python.playbook.ansible.yml"