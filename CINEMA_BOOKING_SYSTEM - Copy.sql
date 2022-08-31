show databases;
create database cinema_booking_system;

use  cinema_booking_system;

create table films(
id int primary key auto_increment,
name varchar(45) not null unique ,
length_min int not null
);

show tables;


create table customers(
id  int primary key auto_increment,
first_name varchar(45),
last_name varchar(45) not null,
email varchar(45) not null unique
);

describe customers;

create table rooms(
id  int primary key auto_increment,
name varchar(45) not null,
no_seats int not null
);

show tables;
describe rooms;


create table screenings(
id int primary key auto_increment,
film_id int not null,
room_id int not null,
foreign key (room_id) references rooms(id),
foreign key (film_id) references films(id),
start_time DATETIME not null
);

create table seats(
id int primary key auto_increment,
roww char(1) not null,
number int  not null,
room_id int not null,
foreign key (room_id) references rooms(id)
);

show tables;
describe seats;

create table bookings


