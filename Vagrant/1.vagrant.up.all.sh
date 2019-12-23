#!/bin/bash
basepath=$(cd `/usr/bin/dirname $0`; pwd)
/usr/bin/find "${basepath}" -name "Vagrantfile" -type f  -exec /usr/bin/dirname {} \; | /usr/bin/xargs -I [] -t "${SHELL}" -c 'cd "[]"; /usr/local/bin/vagrant up; echo'