#!/bin/bash

filenames=(
"foo"
"bar"
"baz"
"quux")

for f in "${filenames[@]}"
do
  if [ -f $f ];
    then
      mv $f $f.bak
  fi
  touch $f
  chmod 640 $f
  echo -e $(date +"%T %d-%m-%y\c") >> $f
done
