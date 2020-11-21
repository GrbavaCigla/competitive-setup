#!/bin/sh

HOMEPATH="$(dirname $(realpath $0))"

if [ -z "$1" ]; then
	echo "No argument supplied"
	exit 1
fi

PROGRAM="$(basename $1 .cpp)"
SRCPATH="${HOMEPATH}/src/${PROGRAM}.cpp"
TESTPATH="${HOMEPATH}/tests/${PROGRAM}"

cp "${HOMEPATH}/boilerplate.cpp" "${SRCPATH}"
touch ${TESTPATH}