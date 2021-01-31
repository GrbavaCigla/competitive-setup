#!/bin/sh

HOMEPATH="$(dirname $(realpath $0))"
BINPATH="${HOMEPATH}/bin"
TESTPATH="${HOMEPATH}/tests"

if [ -z "$1" ]; then
    echo "No argument supplied"
	exit 1
fi

PROGRAM="$(basename $1 .cs)"
PROGBIN="${BINPATH}/${PROGRAM}"
PROGTEST="${TESTPATH}/${PROGRAM}"

mcs src/$1 -out:"${PROGBIN}"
time mono ${PROGBIN} < "${PROGTEST}"
