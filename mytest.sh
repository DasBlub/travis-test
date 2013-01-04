#!/bin/sh

echo "testing if $1 works"
$1

if [ $? -ne 0 ] ; then
  echo "error, travis-test returned $? instead of 0!"
  exit $?
fi

