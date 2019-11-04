#!/bin/bash

echo $PATH
BASEDIR=$(dirname $0)
./start.sh
echo "entry.sh ............"
echo "$@"
echo $(id -u)
echo $(id -un)
echo $(id -g)
echo $(id -gn)
echo $(ls -alF | grep '.*.sh')
echo $(ls)
echo $(pwd)
echo $(ls)
echo $(tail ~/.bashrc)
# start.sh

exec $@
# exec "$BASEDIR/$@"