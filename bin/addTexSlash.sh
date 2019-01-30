#!/bin/bash

filename=$1
for L in $(cat ${filename})
do
    echo $L"\\\\"
done
