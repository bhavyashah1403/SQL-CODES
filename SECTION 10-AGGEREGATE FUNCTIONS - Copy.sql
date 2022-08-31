use cinema_booking_system;
select *from customers;

-- count

select count(*) from customers;

select count(*) from customers
where last_name ='smith';

-- sum

select count(*) from rooms;
select sum(no_seats) from rooms
where id> 1;
select sum(id) from rooms;

-- min and max

select* from films;

select max(length_min) from films;

select min(length_min) from films;

-- average 

select avg(length_min) from films;

select avg(length_min) from films
where length_min>120;








