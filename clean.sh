#!/bin/bash
find ./ -type f -name "OSZICAR" | xargs grep -i "F=" > results.txt
awk -F "[_=/]" '{ gsub(/ /,""); print $3 "," $5}' results.txt | sed 's/..$//' > energy.csv

find ./ -type f -name "OUTCAR" | xargs grep --no-group-separator -A2 'POSITION' | awk 'NR == 0 || NR % 3 ==0' > forces.txt
awk '{print $1 "," $5}' forces.txt | awk -F "[_/,]" '{print $3 "," $5}' > force.csv
