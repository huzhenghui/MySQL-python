#!/bin/bash
basepath=$(cd `/usr/bin/dirname $0`; pwd)
echo "${basepath}"
echo
${basepath}/Vagrant/2.inventory_list.generate.sh
echo
/usr/local/bin/ansible-playbook -i "${basepath}/Vagrant/inventory_list" "${basepath}/Ansible/MySQL-python.playbook.ansible.yml"