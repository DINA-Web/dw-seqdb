#!/bin/bash
source ../env/.env.postgres
NOW=`date +"%Y-%m-%d"`
TARGET=../db-backup
docker exec db sh -c 'exec pg_dump -U ${POSTGRES_USER} -w -F t ${POSTGRES_DB}' > ${TARGET}/${POSTGRES_DB}_${NOW}.sql.tar
echo $NOW >> biobackup.log
scp ${TARGET}/${MYSQL_DATABASE}_${NOW}.sql biobackup:/backup/SEQDB &>>biobackup.log
