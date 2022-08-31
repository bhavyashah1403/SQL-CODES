use coffee_store;

select* from products;
select name, price from products
where coffee_origin in ('usa','india')
order by name;

select*from orders
where customer_id in(2,4,6,8)
and order_time between '2017-02-01' AND '2017-02-28';

select *from customers;
select first_name, phone_number from customers
where last_name like '%ar%';


