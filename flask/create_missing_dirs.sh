#!/bin/bash
# pipenv lock -d -r > ./dev-requirements.txt;
# pipenv lock -r  > ./requirements.txt;

BASE_DIR="$(dirname "$0")"

make_file_here() {
	if [[ ! -d "${TARGET:=$BASE_DIR/$DIRNAME}" ]]; then
		echo $TARGET
		mkdir $TARGET && echo -e "$FILENAME created at $BASE_DIR/ !\n"
		unset TARGET
	fi
}

for DIRNAME in "$@"; do
	make_file_here "$DIRNAME"
done
