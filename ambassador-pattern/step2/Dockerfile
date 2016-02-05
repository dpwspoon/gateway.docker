FROM kaazing-gateway

ADD docker-start.sh bin/docker-start.sh
ADD ambassador-template-config.xml conf/ambassador-template-config.xml
ADD ambassador-client-config.xml conf/ambassador-client-config.xml
ADD ambassador-server-config.xml conf/ambassador-server-config.xml
ADD echo-config.xml conf/echo-config.xml

ENTRYPOINT ["docker-start.sh"]
