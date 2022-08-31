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

select* from customers
where last_name between 'A' and 'L';

--Like statement

select * from customers
where last_name like 'W%'

select * from customers
where last_name like '%o%';

select * from customers
where first_name like '%o%';

select * from customers
where first_name like '_o_';

select * from products
where price like '2%';
-- _ is used only for one character;

-- ORDER BY 


