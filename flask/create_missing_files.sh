#!/bin/bash

BASE_DIR="$(dirname "$0")"
FILENAME=".env"
create_file() {
	touch $1
}

if [[ ! -f "${TARGET:=$BASE_DIR/$FILENAME}" ]]; then
	echo "${TARGET##*/} does not exist at ${TARGET%/*}/, creating one ..."
	create_file $TARGET
fi

