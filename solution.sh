#!/bin/bash

grep -i "error" application.log| awk  -F ',' '{print $2,$4}' 

grep -i "error" application.log | awk -F ',' '{print $2}'| sort | uniq -c

sed 's/WARNING/WARN/g' application.log

awk -F ',' '{print $2}'application.log | sort | uniq 

