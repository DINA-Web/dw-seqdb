#!make
include .env
TS := $(shell date '+%Y_%m_%d_%H_%M')

all: up

up: 
	@echo "Obs, you need to run a proxy"
	docker-compose up -d db 
	sleep 4
	docker-compose up -d seqdb

up-extra:
	docker-compose -f docker-compose.testing.yml up -d adminer
	docker-compose -f docker-compose.testing.yml up -d seqpublic

test-curl:
	curl -L http://seqdb.nrm.se/login.js

test-browser:
	xdg-open https://seqdb.nrm.se/login.jsp &

clean: stop rm rm-logs

stop:
	docker-compose stop

rm:
	docker-compose rm -vf

rm-logs:
	rm -f srv/logs/*.log
	rm -f srv/logs/*.txt

build: 
	@docker build --no-cache -t {IMAGE} dockerfile

release:
	docker push ${IMAGE}