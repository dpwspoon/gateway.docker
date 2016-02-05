## SAMPLE WORKING

On both docker hosts run
```
docker build -t kaazing/docker-gateway .
```

On docker host 1 run
```

## Sets up backend
docker run --rm -i -t --name backend --hostname backend kaazing/docker-gateway ./bin/gateway.start --config conf/echo-config.xml

## Sets up ambassador
docker run -i -t --rm --link backend:backend --name ambassador -p 443:443 -p 8000:8000  kaazing/docker-gateway bash
./bin/gateway.start --config conf/ambassador-server-config.xml 

```

On docker host 2 run
```

## Sets up ambassador
docker run -i -t --rm --name ambassador kaazing/docker-gateway bash
./bin/gateway.start --config conf/ambassador-client-config.xml 

## Runs up client
docker run --rm -i -t --link ambassador:ambassador multicloud/netcat ambassador 8000
```

## NOTES


On docker host 1 run 
```
docker run --rm -i -t -h ldap --name ldap multicloud/netcat -l 6379 
docker run --rm --link ldap:ldap -p 443:443 kaazing/docker-gateway 
```

docker run -i -t --rm --link ldap:ldap -p 443:443 kaazing/docker-gateway bash
./bin/gateway.start --config ./conf/ambassador-server-config.xml




On docker host 2 run
```
docker run -i -t --rm --name ambassador kaazing/docker-gateway bash
./bin/gateway.start --config conf/ambassador-client-config.xml
docker run --rm -i -t --link ambassador:ambassador multicloud/netcat ambassador 8000 

```


TESTING 

docker run --rm --link ldap:ldap -p 443:443  multicloud/netcat -l 443
