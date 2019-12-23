#!/bin/bash
basepath=$(cd `/usr/bin/dirname $0`; pwd)
echo $(paste -d " " ${basepath}/*/.vagrant/machines/*/virtualbox/index_uuid)
/usr/local/bin/vagrant provision $(paste -d " " ${basepath}/*/.vagrant/machines/*/virtualbox/index_uuid) --provision-with empty
cat ${basepath}/*/.vagrant/provisioners/ansible/inventory/vagrant_ansible_inventory | /usr/bin/tee "${basepath}/inventory_list"
echo
/usr/local/bin/ansible all --list-hosts -i "${basepath}/inventory_list"