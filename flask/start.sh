#!/bin/bash

BASEDIR=$(dirname $0)

mkdir -pv log/uwsgi-log && uwsgi app.ini
echo "start.sh ............"
# sleep 300