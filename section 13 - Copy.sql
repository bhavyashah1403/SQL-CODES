-- challenge one

select name from films
where length_min>=120;

-- challenge two


   select film_id,count(film_id) as count1 from screenings
   join films f on f.id=screenings.film_id
   group by film_id
   order by count1 desc
   limit 1;
   
   select *from bookings;
   
   -- challenge 3
   select count(b.id) from films f
   join screenings s on f.id=s.film_id
   join bookings b on s.id=b.screening_id
   where f.name='Jigsaw'
   group by f.name;
   
   -- challenge 4
   select *from customers;
   select* from bookings;
   
   select concat(c.first_name," ",c.last_name),count(b.id) as no_bookings from customers c
   join bookings b on c.id=b.customer_id
   group by c.first_name,c.last_name
   order by no_bookings desc
   limit 5;
   
   -- challenge 5
   
   select* from rooms;
   select* from films;
   select*from screenings;
   
   select f.name,count(s.room_id) as time_shown from films f
   join screenings s on f.id=s.film_id
   where s.room_id= 1
   group by f.name
   order by time_shown desc
   limit 1;
   
   -- challenge 6
   
   select*from bookings;
   
   select count(distinct(b.customer_id))as no_customers from bookings b;
   
   