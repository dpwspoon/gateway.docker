#!/bin/bash

for ((i = 1; i <= $#; i++)); do
    echo $i
done

for i; do 
    echo $i 
done

if [ "$1" == "server-ambassador" ]; then
    echo "do server ambassador thing"
    
elif [ "$1" == "client-ambassador" ]; then
    echo "do client ambassador thing"
else 
    ./bin/gateway.start "$@"
    exit $?
fi

#read -r -d '' VARIABLE << EOM
#    This is line 1.
#    This is line 2.
#    Line 3.
#EOM
#
#echo "$VARIABLE"
#
#echo $PWD

## TODO
#sed 's/SERVICES-GO-HERE/$VARIABLE/' conf/ambassador-template-config.xml > conf/ambassador-config.xml
#awk 
#
#cat conf/ambassador-config.xml
