#!/bin/sh

bin/travis-test

if [ $? -ne 0 ] ; then
  echo "error, travis-test returned $? instead of 0!"
  exit $?
fi

