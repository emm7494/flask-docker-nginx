#!/bin/bash
# pipenv lock -d -r > ./dev-requirements.txt;
# pipenv lock -r  > ./requirements.txt;

BASE_DIR="$(dirname "$0")"

make_file_here() {
	if [[ ! -f "${TARGET:=$BASE_DIR/$FILENAME}" ]]; then
		echo $TARGET
		touch $TARGET && echo -e "$FILENAME created at $BASE_DIR/ !\n"
		unset TARGET
	fi
}

for FILENAME in "$@"; do
	make_file_here "$FILENAME"
done
