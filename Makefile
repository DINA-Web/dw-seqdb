#!make
include .env

all: up

up: 
	@echo "Obs, you need to run a proxy"
	docker-compose up -d database 
	sleep 4
	docker-compose up -d seqdb

up-extra:
	docker-compose -f docker-compose.tools.yml up -d adminer
	docker-compose -f docker-compose.tools.yml up -d public-ui

load-tar:
	docker load -i seqdb_img_3_35.tar

test-curl:
	curl -L http://seqdb.nrm.se/login.js

test-browser:
	xdg-open https://seqdb.nrm.se/login.jsp &

build: 
	@docker build --no-cache -t {IMAGE} dockerfile

release:
	docker push ${IMAGE}

# local machine
# https://seqdb-lab.nrm.se and https://seqpublic-lab.nrm.se/ 