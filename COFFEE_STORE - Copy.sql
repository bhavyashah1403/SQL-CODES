SHOW DATABASES;
drop database coffee_store;
CREATE DATABASE  coffee_store;

USE coffee_store;

drop table coffee_store;
drop table products;
drop table customers;

CREATE TABLE products(
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(30),
price DECIMAL(3,2)
);

select * from products;
describe products;




CREATE TABLE customers(
id INT  AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(30),
last_name VARCHAR(30),
gender ENUM('M','F'),
phone_number VARCHAR(11)
);

CREATE TABLE orders(
id INT  AUTO_INCREMENT PRIMARY KEY,
product_id INT,
customer_id INT,
order_time DATETIME,
FOREIGN KEY(product_id) REFERENCES products(id),
FOREIGN KEY(customer_id) REFERENCES customers(id)
);
drop table orders;
SHOW TABLES;
describe tables;
select * from products;
ALTER table products
add column coffee_origin varchar(30);

alter table products
drop column coffee_origin;

select * from products;
truncate table products;
describe products;
select * from products;
inSERT into products(name,price,coffee_origin)
values('espresso',2.50,'brazil');

INSERT into products(name,price,coffee_origin)
values('robusta',5.6,'india');

INSERT into products(name,price,coffee_origin)
values('latte',9.80,'costa rica');

INSERT into products(name,price,coffee_origin)
values('filter',6.79,'usa');

INSERT into products(name,price,coffee_origin)
values('choco filter',7.79,'usa');

INSERT into products(name,price,coffee_origin)
values('hot choco filter',7.79,'usa');

INSERT into products(name,price,coffee_origin)
values('cold choco filter',7.79,'usa');

select * from products;

update products
set id = 2
where id=8;

commit

set sql_safe_updates=0;

select *from products
update products
set price=3.25,coffee_origin='ethopia'
where name='robusta';

delete from products
where name='robusta';

delete from people;;;;
will delete everything;

INSERT INTO customers (first_name, last_name, gender, phone_number) VALUES ('Chris','Martin','M','01123147789'),('Emma','Law','F','01123439899'),('Mark','Watkins','M','01174592013'),('Daniel','Williams','M',NULL),('Sarah','Taylor','F','01176348290'),('Katie','Armstrong','F','01145787353'),('Michael','Bluth','M','01980289282'),('Kat','Nash','F','01176987789'),('Buster','Bluth','M','01173456782'),('Charlie',NULL,'F','01139287883'),('Lindsay','Bluth','F','01176923804'),('Harry','Johnson','M',NULL),('John','Smith','M','01174987221'),('John','Taylor','M',NULL),('Emma','Smith','F','01176984116'),('Gob','Bluth','M','01176985498'),('George','Bluth','M','01176984303'),('Lucille','Bluth','F','01198773214'),('George','Evans','M','01174502933'),('Emily','Simmonds','F','01899284352'),('John','Smith','M','01144473330'),('Jennifer',NULL,'F',NULL),('Toby','West','M','01176009822'),('Paul','Edmonds','M','01966947113');
describe customers;
select * from customers;
select* from orders;
describe orders;
INSERT INTO orders (product_id,customer_id,order_time)
 VALUES (1,1,'2017-01-01 08-02-11'),
 (1,2,'2017-01-01 08-05-16'),
 (5,12,'2017-01-01 08-44-34'),(3,4,'2017-01-01 09-20-02'),(1,9,'2017-01-01 11-51-56'),(6,22,'2017-01-01 13-07-10'),(1,1,'2017-01-02 08-03-41'),(3,10,'2017-01-02 09-15-22'),(2,2,'2017-01-02 10-10-10'),(3,13,'2017-01-02 12-07-23'),(1,1,'2017-01-03 08-13-50'),(7,16,'2017-01-03 08-47-09'),(6,21,'2017-01-03 09-12-11'),(5,22,'2017-01-03 11-05-33'),(4,3,'2017-01-03 11-08-55'),(3,11,'2017-01-03 12-02-14'),(2,23,'2017-01-03 13-41-22'),(1,1,'2017-01-04 08-08-56'),(3,10,'2017-01-04 11-23-43'),(4,12,'2017-01-05 08-30-09'),(7,1,'2017-01-06 09-02-47'),(3,18,'2017-01-06 13-23-34'),(2,16,'2017-01-07 09-12-39'),(2,14,'2017-01-07 11-24-15'),(4,5,'2017-01-08 08-54-11'),(1,1,'2017-01-09 08-03-11'),(6,20,'2017-01-10 10-34-12'),(3,3,'2017-01-10 11-02-11'),(4,24,'2017-01-11 08-39-11'),(4,8,'2017-01-12 13-20-13'),(1,1,'2017-01-14 08-27-10'),(4,15,'2017-01-15 08-30-56'),(1,7,'2017-01-16 10-02-11'),(2,10,'2017-01-17 09-50-05'),(1,1,'2017-01-18 08-22-55'),(3,9,'2017-01-19 09-00-19'),(7,11,'2017-01-19 11-33-00'),(6,12,'2017-01-20 08-02-21'),(3,14,'2017-01-21 09-45-50'),(5,2,'2017-01-22 10-10-34'),(6,24,'2017-01-23 08-32-19'),(6,22,'2017-01-23 08-45-12'),(6,17,'2017-01-23 12-45-30'),(2,11,'2017-01-24 08-01-27'),(1,1,'2017-01-25 08-05-13'),(6,11,'2017-01-26 10-49-10'),(7,3,'2017-01-27 09-23-57'),(7,1,'2017-01-27 10-08-16'),(3,18,'2017-01-27 10-13-09'),(4,19,'2017-01-27 11-02-40'),(3,10,'2017-01-28 08-03-21'),(1,2,'2017-01-28 08-33-28'),(1,12,'2017-01-28 11-55-33'),(1,13,'2017-01-29 09-10-17'),(6,6,'2017-01-30 10-07-13'),(1,1,'2017-02-01 08-10-14'),(2,14,'2017-02-02 10-02-11'),(7,10,'2017-02-02 09-43-17'),(7,20,'2017-02-03 08-33-49'),(4,21,'2017-02-04 09-31-01'),(5,22,'2017-02-05 09-07-10'),(3,23,'2017-02-06 08-15-10'),(2,24,'2017-02-07 08-27-26'),(1,1,'2017-02-07 08-45-10'),(6,11,'2017-02-08 10-37-10'),(3,13,'2017-02-09 08-58-18'),(3,14,'2017-02-10 09-12-40'),(5,4,'2017-02-10 11-05-34'),(1,2,'2017-02-11 08-00-38'),(3,8,'2017-02-12 08-08-08'),(7,20,'2017-02-12 09-22-10'),(1,1,'2017-02-13 08-37-45'),(5,2,'2017-02-13 12-34-56'),(4,3,'2017-02-14 08-22-43'),(5,4,'2017-02-14 09-12-56'),(3,5,'2017-02-15 08-09-10'),(6,7,'2017-02-15 09-05-12'),(1,8,'2017-02-15 09-27-50'),(2,9,'2017-02-16 08-51-12'),(3,10,'2017-02-16 13-07-46'),(4,11,'2017-02-17 08-03-55'),(4,12,'2017-02-17 09-12-11'),(5,10,'2017-02-17 11-41-17'),(6,18,'2017-02-17 13-05-56'),(7,19,'2017-02-18 08-33-27'),(1,17,'2017-02-19 08-12-31'),(1,1,'2017-02-20 09-50-17'),(3,5,'2017-02-20 09-51-29'),(4,6,'2017-02-20 10-43-39'),(3,1,'2017-02-21 08-32-17'),(1,1,'2017-02-21 10-30-11'),(3,2,'2017-02-21 11-08-45'),(4,3,'2017-02-22 11-46-32'),(2,15,'2017-02-22 13-35-16'),(6,13,'2017-02-23 08-34-48'),(4,24,'2017-02-24 08-32-03'),(2,13,'2017-02-25 08-03-12'),(7,17,'2017-02-25 09-34-23'),(7,23,'2017-02-25 11-32-54'),(5,12,'2017-02-26 11-47-34'),(6,4,'2017-02-27 12-12-34'),(1,1,'2017-02-28 08-59-22');

select * from orders;

-- select statement
Select * from customers;

select last_name from customers;

select last_name,phone_number from customers;

-- where clause

select * from products
where coffee_origin='costa rica';

select * from products
where price=9.80;

select * from products
where price= 9.80
and  id= 3;

select *from products
where price= 9.80
or id=4;

-- EQUALITY SYMBOLS

select *from products;

select *from products
where price >= 1;

select *from products
where price > 2.50;

select *from products
where price <3.0;

select *from products
where price <=3.0;

--NULL VALUES

select* from customers
where phone_number is null;

select* from customers
where phone_number is not null;

-- EXERCISE 1

select first_name,phone_number from customers
where gender='F'
and last_name='Bluth';

select * from products
where price >3
or coffee_origin='india';


select * from customers
where gender='M'
and phone_number is null;

--IN NOT IN

select * from customers
where last_name in('Taylor','Bluth','Armstrong');

select * from customers
where first_name not in('Katie','John','George');

--BETWEEN

select product_id, customer_id, order_time from orders
where order_time between '2017-01-01' and '2017-01-07';

select product_id, customer_id, order_time from orders
where customer_id between 5 and 10;
-- 5 and 10 will be included

