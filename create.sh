#!/bin/sh

HOMEPATH="$(dirname $(realpath $0))"

if [ -z "$1" ]; then
	echo "No argument supplied"
	exit 1
fi

PROGRAM="$(basename $1 .cs)"
SRCPATH="${HOMEPATH}/src/${PROGRAM}.cs"
TESTPATH="${HOMEPATH}/tests/${PROGRAM}"

cp "${HOMEPATH}/boilerplate.cs" "${SRCPATH}"
touch ${TESTPATH}