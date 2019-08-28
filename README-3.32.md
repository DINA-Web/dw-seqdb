# Seqdb and its db.

## version 3.32

pre-requisites:
1.  start the proxy, the proxy creates the network 'proxy-docker_default'

### Start the datbase.

info:
The Dockerfile for postgresl creates the db 'seqdb_prod' and the schema 'seqdb'.
User 'brf' is created and granted access.

start:
docker-compose up -d db

Verify-db:
1. login to the container: 'docker exec -it db bash' or 'docker exec -it shared_db bash'
2. login to the database: 'psql -d seqdb_prod -U brf'
3. seqdb_prod=# \dt seqdb.* 
4. -> OK or not ? 
5. seqdb_prod=# REVOKE CONNECT ON DATABASE seqdb_prod FROM PUBLIC;
7. seqdb_prod=# REVOKE CREATE ON SCHEMA public FROM PUBLIC;

### start seqdb

info:
This is a Spring-application, creates the necessary tables.

start: 
docker-compose up -d seqdb

Verify-seqdb (check that the tables have been created)
1. run 'Verify-db' steps 1 to step 3
2. result should be: (154 rows) 
3. Are there any users:
3.1 select * from seqdb.People; 
3.2 result should be: (0 rows)


additional setup, add the users:
1. make insert
2. workflow 'Verify-seqdb'
3. select users, result should be : (6 rows)

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
