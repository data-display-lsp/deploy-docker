.PHONY: all deploy docker-composed clean-composed init-grafana
SHELL:=/bin/bash

all: deploy

deploy: docker-composed init-grafana

docker-composed:
	docker-compose -f docker/docker-compose.yml up -d

init-grafana:
	@./grafana/scripts/init_grafana.SHELL

clean-composed:
	docker-compose -f docker/docker-compose.yml down