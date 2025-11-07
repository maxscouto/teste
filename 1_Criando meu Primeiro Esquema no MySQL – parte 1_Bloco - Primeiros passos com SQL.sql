show databases;
create database if not exists first_example;
use first_example;
create table person(
	person_id smallint unsigned,
	fname varchar(30),
	lname varchar(20),
	gender enum('M','F'),
	birth_date date,
	street varchar(20),
    city varchar(20),
    state varchar(20),
    country varchar(20),
    postal_code varchar(20),
    constraint pk_person primary key (person_id)
);
desc person;

create table favorite_food(
	person_id smallint unsigned,
    food varchar(20),
    constraint pk_favorite_food primary key(person_id,food),
    constraint fk_favorite_food_person_id foreign key(person_id)
    references person(person_id)
);

insert into person values
	('1','Joao','Silva','M','1980-06-05','Av paraguassu','Imbe','RS','Brasil','12222');
    
  insert into person values
  ('2','Maria','Bahia','F','1985-11-27','Trav Paraiso','CAxias','AM','Brasil','5284-582');
  
  select * from person;
    
    
