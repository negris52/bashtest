#!/bin/bash

filenames=(
"foo"
"bar"
"baz"
"quux")

for f in "${filenames[@]}"
do
  touch $f
  chmod 640 $f
done
