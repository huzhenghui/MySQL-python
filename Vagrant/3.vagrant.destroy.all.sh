#!/bin/bash
basepath=$(cd `/usr/bin/dirname $0`; pwd)
echo $(paste -d " " ${basepath}/*/.vagrant/machines/*/virtualbox/index_uuid)
/usr/local/bin/vagrant destroy --force --parallel $(paste -d " " ${basepath}/*/.vagrant/machines/*/virtualbox/index_uuid)