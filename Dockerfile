FROM walm/java:0.2.0
MAINTAINER Andreas Wålm "andreas@walm.net"

RUN \
 echo "# Installing Logstash" ;\
 wget -q https://download.elasticsearch.org/logstash/logstash/logstash-1.4.1.tar.gz -O /tmp/ls.tgz ;\
 tar -xzf /tmp/ls.tgz -C /opt/ ;\
 mv /opt/logstash-1.4.1 /opt/logstash ;\
 mkdir -p /etc/service/logstash ;\
 chown -R app:app /opt/logstash ;\
 \
 echo "# Cleaning up" ;\
 apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /setup /build

ADD logstash.sh /etc/service/logstash/run

EXPOSE 9292
