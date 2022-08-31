use coffee_store

select first_name,phone_number from customers
where gender='F'
and last_name='Bluth';

select * from products
where price >3
or coffee_origin='india';


select * from customers
where gender='M'
and phone_number is null;
