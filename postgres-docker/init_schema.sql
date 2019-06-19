SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

\connect seqdb_prod;
CREATE SCHEMA seqdb;
ALTER SCHEMA seqdb OWNER TO brf;
SET search_path = seqdb,public, pg_catalog;

CREATE TABLE seqdb.testmanash
(
    id serial NOT NULL,
    username text NOT NULL,
    password text NOT NULL,
    expiration_time timestamp without time zone,
    account_locked boolean NOT NULL DEFAULT false,
    CONSTRAINT users_pkey PRIMARY KEY (id),
    CONSTRAINT users_username_key UNIQUE (username)
);

ALTER TABLE seqdb.testmanash OWNER to brf;


