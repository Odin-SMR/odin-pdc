#!/bin/bash
timestamp_started=$(date --rfc-3339=seconds)
pushd /data/odin/level0 >/dev/null
files=$(find ac1 ac2 att att_10 att_16 att_17 dat fba mis shk tle -type d \( -regex ".*\.PDC" -prune \) -o \( -type l -newer ~/scratch/timestamp -print \) -exec aws s3 cp {} s3://odin-pdc-l0/{} --quiet \;)
popd >/dev/null
touch -d "${timestamp_started}" ~/scratch/timestamp
