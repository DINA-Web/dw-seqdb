# dw-seqdb
work-in-progress <br>
Going from a vagrant-packaging ( dev  - https://bitbucket.org/aafc-mbb/seqdb-vagrant ) to docker-packaging. <br>

Every new release comes from aafc as a ZIP file containing:

1. war-file (store in the 'tomcat'-directory)
2. sql-dump (store in the 'mysql_autoload'-directory)
3. context.xml (store in the 'tomcat'-directory)

the context.xml has information about the database

1. JNDI-name = jdbc/SeqDBWeb
2. username and password 
3. url="jdbc:mysql://db/seqdbweb?useUnicode=true&amp;characterEncoding=utf-8" 

where 'db' is the container-name ( set in the docker-compose.yml)

## run with the proxy-docker
store the nrm.se.crt- and nrm.se.key-files in the 'certs'-directory

## image is stored at hub.docker.com
1. Check that your version of the image is the same in the docker-compose.yml and in the Makefile
2. latest image is stored in https://hub.docker.com/r/dina/seqdb/tags/
3. the image is populated with seqdb version 3.8 (seqdb.web-3.8.war)


## Run the target  'make' <br>
login with Admin/Admin

# SeqDB version 3.18.1

## The Docker Image is based on ubuntu:16.04
Image is = dina/seqdb:v3.28.1b

## Docker Image 

### JDK

Oracle-Java , version 8

### Tomcat-server 
version 7.0.69

## database
Image is =  mysql:5.6


<hr> 

# SeqDB version 3.28.1

## The Docker Image is based on openjdk:8
Image is = dina/seqdb:v3.28.1b


### About the Docker Image.

SeqDB is now a runnable jar. <p> 
**No need** for Tomcat.


## database
Image is =  mysql:5.6

<hr> 

## for the developer.
push images to hub.docker.com



