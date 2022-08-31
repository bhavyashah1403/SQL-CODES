use cinema_booking_system;

-- non correlated subqueries

select * from screenings;

select id,start_time from screenings
where film_id in
     (select id from films
     where length_min > 120);
     
 select id from films
 where length_min> 120 ;   

select* from customers;
select*from bookings;

select first_name,last_name,email from customers
where id in
(select customer_id from bookings
where screening_id=1 );

select* from reserved_seats ;

select min(no_seats) 
from
(select booking_id, count(seat_id) as no_seats from reserved_seats
group by booking_id) b ;

-- correlated subquries

select screening_id,customer_id,
(Select count(seat_id)
 from reserved_seats where booking_id= b.id)
 from bookings b
 order by screening_id;
 
 
 
