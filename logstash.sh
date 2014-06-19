#!/bin/sh
exec /sbin/setuser app "/opt/logstash/bin/logstash agent -f /conf/logstash.conf --web 2>&1 >> /tmp/logstash.log"
