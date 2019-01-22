#!/bin/bash
filename=$1
first=${filename%.*}
last=${filename#*.}
if [ ${last} = tex ]; then
    platex ${first}.tex
    platex ${first}.tex
    dvipdfmx ${first}.dvi
    rm ${first}.dvi ${first}.log ${first}.aux ${first}.toc
fi
