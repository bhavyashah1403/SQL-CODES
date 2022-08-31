use cinema_booking_system ;
use coffee_store;
-- concatination

select concat(first_name,last_name) as full_name from customers;

-- to add space
select concat(first_name," ",last_name) as full_name from customers;

select concat(first_name," ",last_name," ",email) as full_name from customers;

select concat("this is ",first_name," ",last_name,"'s email  ",email) as customers_email from customers;

-- substrings

select substring("example",3) as sub;

select name from films;

select substring(name,1,3) as short_name from films;

select substring(name,5,4) as short_name from films;

select substring(name,-2,2) as short_name from films;

select substring(name,-6) as short_name from films;

-- upper and lower case

select upper(name) as name from rooms;

select lower(name) as name from rooms;










