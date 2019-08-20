#!/bin/bash
set -euE -o functrace
failure() {
  local err=$?
  local lineno=$1
  local msg=$2
  echo "Failed at $lineno: $msg"
  exit $err
}
trap 'failure ${LINENO} "$BASH_COMMAND"' ERR

id
echo $UID

touch test.txt
echo "TEST" >> test.txt

ls .

ls ..

lrelease -version


lrelease phoenix.pro

touch $HOME/fritzing/test.log


