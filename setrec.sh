#!/bin/sh

# Example ./setrec.sh ch101 10 202301151610
CWD=$(pwd)
CMD="${CWD}/getrec.sh ${1} ${2}"

echo "${CMD}" | at -t $3
