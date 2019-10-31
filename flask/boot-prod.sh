#!/bin/bash
BASE_DIR=$(dirname $0)

echo "setting up production mode ..."

pipenv lock -r >$BASE_DIR/requirements.txt

$BASE_DIR/create_missing_files.sh .env

exec $@
