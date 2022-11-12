#!/bin/bash

ALLREPOS_MYDIR=$(dirname ${BASH_SOURCE[0]})
ALLREPOS_EXECUTION_DIR=$(pwd)

export ALLREPOS_ORGNAME=${ALLREPOS_EXECUTION_DIR##*/} # This is the name of the directory that this script is run from

ALLREPOS_CACHEBUSTER=$(date +%Y%m%d%H)
mkdir -p ${ALLREPOS_MYDIR}/.cache/

if [[ ! -d ${ALLREPOS_MYDIR}/.cache/${ALLREPOS_CACHEBUSTER} ]]
then
  echo "Creating cache directory" >&2
  rm -rf ${ALLREPOS_MYDIR}/.cache/*
  mkdir -p ${ALLREPOS_MYDIR}/.cache/${ALLREPOS_CACHEBUSTER}
fi

mkdir -p ${ALLREPOS_MYDIR}/.cache/$ALLREPOS_CACHEBUSTER/${ALLREPOS_ORGNAME}

export ALLREPOS_CACHEPATH=${ALLREPOS_MYDIR}/.cache/$ALLREPOS_CACHEBUSTER/${ALLREPOS_ORGNAME}

function change_count() {
 git status --porcelain | wc -l
}
export -f change_count

function print_changes() {
  if [ $(change_count) -gt 0 ]; then
    printf "\n\e[33;1mChanges in $(pwd):\n"
    git status --porcelain
    printf "\e[0m\n"
  else
    change_count
  fi
}
export -f print_changes