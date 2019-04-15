# dw-seqdb

## run with the proxy-docker
store the nrm.se.crt- and nrm.se.key-files in the 'certs'-directory


# SeqDB version 3.18.1
Every new release comes from AAFC as a ZIP file containing:

1. war-file (store in the 'tomcat'-directory)
2. sql-dump (store in the 'mysql_autoload'-directory)
3. context.xml (store in the 'tomcat'-directory)

the context.xml has information about the database


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
Every new release comes from aafc as a ZIP file containing:

1. war-file (store in the 'tomcat'-directory)

Database is created, no need for a sql-dump from AAFC. <p>
You need to import xx-tables prior to working with the seqdb <p>



where 'db' is the container-name (set in the docker-compose.yml)

## The Docker Image is based on openjdk:8
Image is = dina/seqdb:v3.28.1b



### About the Docker Image.

SeqDB is now a runnable jar (seqdbweb.war) . <p> 
**OBS -> No need** for Tomcat.

**seqdbconfig.yml **<p>

1. datasource:
2.  url: jdbc:mysql://db/seqdbweb?useUnicode=true&amp;characterEncoding=utf-8
3.  username: 'username'
4.  password: 'psw'


## database
Image is =  mysql:5.6

<hr> 

## for the developer.
push images to hub.docker.com



