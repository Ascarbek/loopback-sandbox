CREATE SEQUENCE city_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;

CREATE TABLE city
(
  id integer NOT NULL DEFAULT nextval('city_id_seq'::regclass),
  name character varying(100),
  country integer,
  CONSTRAINT city_pk PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);

CREATE SEQUENCE country_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;

CREATE TABLE country
(
  id integer NOT NULL DEFAULT nextval('country_id_seq'::regclass),
  name character varying(200),
  CONSTRAINT country_pk PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);

insert into country(name) values('USA');
insert into city(name, country) values('New York', 1);
