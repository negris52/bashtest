#!/bin/bash

for item in "$@"; do
  if [ -f $item ];
    then
      mv $item $item.bak
  fi
  touch $item
  chmod 640 $item
  echo -e $(date +"%T %d-%m-%y\c") >> $item
done
