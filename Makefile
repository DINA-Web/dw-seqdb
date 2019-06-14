#!make
include .env
include env/.env.mysql
TS := $(shell date '+%Y_%m_%d_%H_%M')

all: up

up: 
	@echo "Obs, you need to run a proxy"
	docker-compose up -d db 
	sleep 4
	docker-compose up -d seqdb

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

mysqldump:
	@docker exec shared_seqdb_database sh -c 'exec mysqldump ${MYSQL_DATABASE} -u${MYSQL_USER} -p${MYSQL_PASSWORD}' > ./db-backup/${MYSQL_DATABASE}_${TS}.sql

mysqlimport:
		@docker exec shared_seqdb_database sh -c 'exec mysql -u${MYSQL_USER} -p${MYSQL_PASSWORD} ${MYSQL_DATABASE}' < ./db-backup/seqdb-import.sql

#db-import:
#	@docker exec shared_seqdb_database sh -c 'exec mysql  -u${MYSQL_USER} -p${MYSQL_PASSWORD} ${MYSQL_DATABASE}' < ./customization/seqdbweb_2019_03_11_11_13-before_import.sql


# docker exec shared_seqdb_database sh -c 'exec mysql seqdbweb -ubrf -pbrf' < ./customization/seqdbweb_2019_03_11_11_13-before_import.sql
## conventient
# $ docker-compose run --rm seqdb bash

# java -Xmx8g -jar seqdbweb.war -Xmx8g --spring.config.additional-location=./seqdbconfig.yml
# seqdb-docker$ docker build -t openjdk:ingimar.2 dockerfile

#docker exec shared_seqdb_database sh -c 'exec mysql -ubrf -pbrf seqdbweb' < ./db-backup/seqdb-import.sql
# docker exec -i shared_seqdb_databaser mysql -ubrf -pbrf seqdbweb < ./db-backup/seqdb-import_with-settings.sql

