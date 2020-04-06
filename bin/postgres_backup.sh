#!/bin/bash
source ../env/.env.postgres
NOW=`date +"%Y-%m-%d"`
TARGET=../db-backup
# docker exec shared_db sh -c 'exec pg_dump -U ${POSTGRES_USER} -w -F t ${POSTGRES_DB}' > ${TARGET}/${POSTGRES_DB}_${NOW}.sql.tar
# docker exec shared_db sh -c 'exec pg_dump -U ${POSTGRES_USER}  ${POSTGRES_DB}' > ${TARGET}/${POSTGRES_DB}_${NOW}.sql
docker exec shared_db sh -c 'exec  pg_dump -U postgres seqdb_prod' > ${TARGET}/${POSTGRES_DB}_${NOW}.sql
echo $NOW >> biobackup.log
scp ${TARGET}/${POSTGRES_DB}_${NOW}.sql biobackup.nrm.se:/backup/SEQDB &>>biobackup.log
