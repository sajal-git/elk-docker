FROM docker.elastic.co/logstash/logstash:5.4.0

MAINTAINER Sajal Jain

RUN rm -f /usr/share/logstash/pipeline/logstash.conf

COPY logstash.conf /usr/share/logstash/config/logstash.yml

RUN mkdir /usr/share/logstash/plugins

VOLUME /usr/share/logstash/pipeline/

EXPOSE 5044
