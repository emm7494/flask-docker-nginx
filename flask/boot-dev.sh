#!/bin/bash
BASE_DIR=$(dirname $0)

echo "setting up development mode ...";
pipenv run pip freeze >$BASE_DIR/requirements.txt;

$BASE_DIR/create_missing_files.sh .flaskenv;
# echo $BASE_DIR
exec $@
