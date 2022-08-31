SHOW databases;
create database test;

use test;
 create table addressses(
 id int,
 house_no int,
 city varchar(20),
 postcode varchar(7)
 );
 
 create table people(
 id int,
 first_name varchar(20),
 last_name varchar(20),
 address_id int);
 
 create table pets(
id int,
name varchar(20),
species varchar(20),
owner_id int
);

show tables;

describe addressses;

alter table addressses
add primary key(id);

alter table addressses
drop primary key;

describe people;
alter table people
add primary key(id);

describe addressses;

describe people;
alter table people
add constraint fK_peopleAddress
foreign key (address_id) REFERENCES addressses(id);

alter table people
drop foreign key fK_peopleAddress;

select * from pets;

describe pets;
alter table pets
add constraint u_species unique(species);

alter table pets
drop index  u_species;

alter table pets change `species` `animal_type` varchar(20);
alter table pets change `animal_type` `species` varchar(20);

describe addressses;

alter table addressses modify city varchar(30);

alter table pets
add primary key(id);

alter table people
add primary key(id);

alter table pets

add constraint fkOWNER
foreign key(owner_id) references people(id);

describe pets;

alter table people
add column email varchar(50);

describe people;

alter table people
add constraint unique_email unique(email);

alter table pets change `name` `first_name` varchar(20);
alter table addressses modify postcode char(7);








