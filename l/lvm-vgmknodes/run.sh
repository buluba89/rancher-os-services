#!/bin/bash

echo Activating volume groups
vgchange -a y &
sleep 4

for i in $(vgs --reportformat json | jq -r '.report[].vg[].vg_name'); do
  echo Creating nodes for: $i  
  vgmknodes $i
done
