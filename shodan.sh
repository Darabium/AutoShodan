#!/bin/bash

echo "input Port Service:"
read PortService

echo "input Shodan Query:"
read ShodanQuery

echo "enter file name(example.txt):"
read filename
shodan search "$ShodanQuery" > $filename
cat $filename | grep "$PortService" | cut -d " " -f 1 | cut -d "-" -f 1 | awk '{print $1}' > $filename
