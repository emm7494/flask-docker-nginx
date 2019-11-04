#!/bin/bash
BASE_DIR=$(basename $0)

echo -e "\n***** Cleaning Up *****"
docker-compose rm -vsf 
echo -e "***** Done *****\n"

# exec $@