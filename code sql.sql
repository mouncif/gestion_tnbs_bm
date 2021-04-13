create table contacts_test0 (
 id serial primary key not null,
 nom text,
 email varchar (50),
 sujet text,
 commentaire text
 );

 create table users_test0 (
id serial primary key not null,
nom varchar(20) unique,
sexe char(1),
mot_de_passe varchar(15),
email varchar (50)
 );

CREATE SEQUENCE my_seq
INCREMENT 3
MINVALUE 19209701
MAXVALUE 9223372036854775807
START 19209702
CACHE 1;
ALTER TABLE my_seq
OWNER TO postgres;

select nextval('my_seq')

create table administrator_test0 (
id serial primary key not null,
code int unique not null default (nextval('my_seq')),
nom varchar(20) unique,
prenom varchar(50),
sexe char(1),
age int check(age > 0 AND age <= 200),
ville_naissance varchar(50),
mot_de_passe varchar(15),
email varchar (50),
contacts varchar(20)
);

insert into administrator_test0 values 
(default,default,'MAROUANE','FAYED','M',100,'OUAGADOUGOU','bonjour1','abufayed1981@yahoo.fr','+212777289097'),
(default,default,'SEYE','BI','M',30,'ZUENOULA','bonjour2','biseyebi@gmail.com','+212648345986'),
(default,default,'LEITE','IZECSON','M',20,'MEXICO','bonjour3','dosricardo@gmail.com','+212772434682'),
(default,default,'Christina','Scofield','F',100,'Jersey','bonjour1','scylla1981@yahoo.fr','+212777509097');

select code from administrator_test0 where nom='bonjour';