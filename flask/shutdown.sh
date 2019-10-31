#!/bin/bash
BASE_DIR=$(basename $0)

docker-compose rm

exec $@