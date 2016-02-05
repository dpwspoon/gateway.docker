#!/bin/bash

echo "HELLO WORLD"

for i; do 
    echo $i 
done

read -r -d '' VARIABLE << EOM
    This is line 1.
    This is line 2.
    Line 3.
EOM

echo "$VARIABLE"

echo $PWD

## TODO
#sed 's/SERVICES-GO-HERE/$VARIABLE/' conf/ambassador-template-config.xml > conf/ambassador-config.xml
#awk 
#
#cat conf/ambassador-config.xml
