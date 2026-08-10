#!/bin/bash

for i in {1..9} :
do
    mkdir task_$i
    touch task_$i/makefile
    echo "created task_$i"
    sleep 2
done
