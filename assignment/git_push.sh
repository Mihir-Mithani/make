#!/bin/bash

for i in {2..9}
do
    git add task_$i/
    git commit -m "Task $i"
    git push origin main
done
