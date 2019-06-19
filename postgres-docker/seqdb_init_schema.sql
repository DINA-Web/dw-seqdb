CREATE DATABASE seqdb_prod;
CREATE USER brf WITH PASSWORD 'brf';
\connect seqdb_prod;
create schema seqdb;
ALTER SCHEMA seqdb OWNER TO brf;

CREATE TABLE seqdb.testusers
(
    id serial NOT NULL,
    username text NOT NULL,
    password text NOT NULL,
    expiration_time timestamp without time zone,
    account_locked boolean NOT NULL DEFAULT false,
    CONSTRAINT users_pkey PRIMARY KEY (id),
    CONSTRAINT users_username_key UNIQUE (username)
);

ALTER TABLE seqdb.testusers OWNER to brf;