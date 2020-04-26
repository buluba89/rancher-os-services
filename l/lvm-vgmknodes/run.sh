#!/bin/bash


mount --bind /host/dev /dev

for i in $(vgs --reportformat json | jq -r '.report[].vg[].vg_name'); do
  echo Activating: $i
  vgchange -a y $i
  vgmknodes $i
done
