# status = WIP

Date: 2019-09-12

# The SeqDB-Service and its database-storage.

the image used for seqdb is -> seqdb:3.35 <p>
dockerhub is not used, the images is distributed as a tar-file from AAFC to NRM.<p>
to re-create the image from the tar file do<p>
``` docker load -i seqdb_img_3_35.tar ```

## version 3.35

pre-requisites:

1. start the proxy, the proxy creates the network 'proxy-docker_default'
2. the 'seqdb' and the 'database' are using the 'proxy-docker_default'-network

### Start the datbase.

docker-compose up -d db

1. POSTGRES_DB=seqdb_prod
2. POSTGRES_PASSWORD=postgres

The 1-init-schema contains users&password
passwords are 

1. changeme
2. changeme2
3. changeme3

if modified then you must change them as well in the seqdb-section of the docker-compose.yml-file

**Volume created:**<p>
db_data_psql

Verify-db:

1. login to the container: seqdb_prod=#  `docker exec -it shared_db bash`
2. login to the database: seqdb_prod=#  `psql -d seqdb_prod -U postgres`
3. seqdb_prod=# `\dt seqdb.*` 
4. seqdb_prod=# \q



### start seqdb


start: 
docker-compose up -d seqdb

Verify-seqdb (check that the tables have been created)

1. run 'Verify-db' steps 1 to step 3
2.  **The result should be = 159 rows**
3. Are there any users:
3.1 seqdb_prod=# `select * from seqdb.People; `
3.2 result should be 'Admin' and 'User'
3.3 seqdb_prod=# \q


### The UI 

1. go to seqdb.nrm.se
2. Login in as an admin ( Version 3.32 and 'Matt Raible' should be visible in the footer etc. )

*** 
verify 'Add new user'-functionality 
1. press the 'Aministration'-link in the header-menu
2. press the 'View people'-link
3. press the 'Add User'-button
4. Fill in firstname and lastname and press the 'Save'-button

Able to add a user or not ? 


***
verify 'Genotype'-functionality 
1. press the 'Genotype-link' 

***


## Testing on your local machine
remember to add URL found in docker-compose.yml  to your /etc/hosts file...
as in '127.0.0.1 seqdb.nrm.se'

### testing
ping seqdb-beta2.dina-web.net
ping seqdb-beta.dina-web.net

# docker

## remove volume
docker volume rm seqdb-docker_db_data_psql



