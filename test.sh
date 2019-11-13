#!/bin/bash

filenames=(
"foo"
"bar"
"baz"
"quux")

for f in "${filenames[@]}"
do
  rm $f
  touch $f
  chmod 640 $f
  echo -e $(date +"%T %d-%m-%y\c") >> $f
done
