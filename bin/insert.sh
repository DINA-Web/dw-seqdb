#!/bin/bash

#docker exec db sh -c 'psql -U brf -d seqdb_prod -c "SELECT * FROM seqdb.accounts"' > ${TARGET}/test.1
docker cp ./bin/insert-users.sql db:/tmp
docker exec db sh -c 'psql -U brf -d seqdb_prod -c "\i /tmp/insert-users.sql"'
