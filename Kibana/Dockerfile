FROM docker.elastic.co/kibana/kibana:5.4.0

MAINTAINER Sajal Jain

RUN rm -f /usr/share/kibana/kibana.yml

COPY kibana.conf /usr/share/kibana/config/kibana.yml

ENV ELASTICSEARCH_USERNAME='elastic'

ENV ELASTICSEARCH_PASSWORD='changeme'

EXPOSE 5601
