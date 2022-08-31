use cinema_booking_system;

-- 1

select* from films;

select name,length_min from films
where length_min >
(select avg(length_min)
 from films);
 
 -- 2
 
 
select max(id),min(id) from
 (select film_id, count(id) as id from screenings
  group by film_id)a;
  
  -- 3
  
  select f.id, f.name,
	  (select count(1) from screenings s
	  where s.film_id=f.id
	  ) as my_count
  from films f;
 
 
select film_id, count(1) from screenings s
group by film_id;

select f.id, f.name, count(f.id) from screenings s
right join films f on f.id = s.film_id
group by film_id, f.name

select * from films

insert into films(name, length_min) values('New Bhavya',200);
 

