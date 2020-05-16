#!/bin/bash

echo Activating volume groups
vgchange -a y &

ls /dev

for i in $(vgs --reportformat json | jq -r '.report[].vg[].vg_name'); do
  echo Creating nodes for: $i  
  vgmknodes $i
done

ls /dev
