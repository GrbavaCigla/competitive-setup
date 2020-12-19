#!/bin/sh

HOMEPATH="$(dirname $(realpath $0))"
BINPATH="${HOMEPATH}/bin"
TESTPATH="${HOMEPATH}/tests"

if [ -z "$1" ]; then
    echo "No argument supplied"
	exit 1
fi

PROGRAM="$(basename $1 .cpp)"
PROGBIN="${BINPATH}/${PROGRAM}"
PROGTEST="${TESTPATH}/${PROGRAM}"

g++ src/$1 -o "${PROGBIN}"
time ${PROGBIN} < "${PROGTEST}"
