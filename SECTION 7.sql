USE coffee_store;

select* from products;
select* from customers;
select* from orders;

select orders.id, products.name,orders.order_time
from products
inner  join orders on orders.product_id= products.id
inner join customers on customers.id=orders.customer_id;
-- shorthand version

select p.name,o.order_time 
from orders o
join products p on o.product_id= p.id
order by o.order_time;


select p.name,o.order_time 
from orders o
join products p on o.product_id= p.id
where o.product_id=5
order by o.order_time;

update orders
set customer_id=1
where id=1;

truncate table orders;


select o.id ,c.phone_number,c.last_name,o.order_time 
from customers c
left join orders o on c.id =o.customer_id
order by o.order_time;


select o.id ,c.phone_number,c.last_name,o.order_time 
from orders o
right join customers c on o.customer_id= c.id 
order by o.order_time;

select p.name,p.price,c.first_name,c.last_name,c.last_name from products p
join orders o on p.id=o.product_id
join customers c on c.id= o.customer_id
where c.last_name='Martin'
order by o.order_time;






