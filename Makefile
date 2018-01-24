build-es:
	docker build -t sjdocker/elasticsearch -f Elasticsearch/Dockerfile Elasticsearch

build-kb:
	docker build -t sjdocker/kibana -f Kibana/Dockerfile Kibana

build-ls:
	docker build -t sjdocker/logstash -f Logstash/Dockerfile Logstash

run-es:
	docker rm -f elasticsearch || true
	docker run -d --name elasticsearch -e "xpack.security.enabled=false" --ulimit memlock=-1:-1 sjdocker/elasticsearch

run-kb:
	docker rm -f kibana || true
	docker run -d --name kibana --link elasticsearch:elasticsearch -p 80:5601 sjdocker/kibana

run-ls:
	docker rm -f logstash || true
	docker run -d --name logstash --link elasticsearch:elasticsearch -p 8080:5044 sjdocker/logstash

build-elk:
	make build-es
	make build-kb
	make build-ls

run-elk:
	make build-es
	make build-kb
	make build-ls
	make run-es
	make run-kb
	make run-ls
