#!/bin/bash

BASE_DIR=$(dirname $0)

# BASE_DIR/flask/boot-prod.sh
# BASE_DIR/flask/boot-dev.sh
# $BASE_DIR/flask/create_missing_dirs.sh "uwsgi-log"



if [[ $1 == "-p" ]]; then
    echo "production mode..."
    $BASE_DIR/flask/boot-prod.sh "${@:2}"
elif [[ $1 == "-d" ]]; then
    echo "development mode..."
    $BASE_DIR/flask/boot-dev.sh "${@:2}"
else
    echo "defaulting to development mode ..."
    $BASE_DIR/flask/boot-dev.sh "${@:1}"
fi
# $BASE_DIR/flask/boot-dev.sh "${@:1}"

# echo "${@:2}"
exec $BASE_DIR/flask/shutdown.sh
