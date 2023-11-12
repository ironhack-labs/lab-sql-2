-- Select all the actors with the first name ‘Scarlett’.

select *
from sakila.actor
where first_name = 'Scarlett';


-- Select all the actors with the last name ‘Johansson’.

select *
from sakila.actor
where last_name = 'Johansson';


-- How many films (movies) are available for rent?
select count(inventory_id)
from sakila.inventory;


-- How many films have been rented?
-- first i checked if the date had hours because if it hadnt it could be that it wasnt counting the rentals and just the days where there wa renting of movies ocurring
select distinct (rental_date)
from sakila.rental;
-- now do he counting 
select count(rental_date) 
from sakila.rental;


-- What is the shortest and longest rental period?
select rental_date, return_date
from sakila.rental
;


-- after doing this i realized there is a column in table film for rental_duration
select max(timestampdiff(minute, rental_date, return_date)) as max_rental_period
from sakila.rental
;

-- the maximum rental periodo is 7 days
select max(rental_duration) as longest_rental_period
from sakila.film
;
-- the minimum rental period is 3 days
select min(rental_duration) as shortest_rental_period
from sakila.film
;
 
 
-- What are the shortest and longest movie duration? Name the values max_duration and min_duration.
-- the maximum duration of a film is 185 min 
select max(length) as max_duration
from sakila.film;

-- the minimum duration of a film is 46 min 
select min(length) as min_duration
from sakila.film;


-- What's the average movie duration
-- the average movie duration is 115
select round(avg(length),0) as average_movie_duration
from sakila.film
;


-- What's the average movie duration expressed in format (hours, minutes)?
select sec_to_time(avg(length)*60) as average_movie_duration_h
from sakila.film
;



-- How many movies longer than 3 hours?
select count(length) total_movies
from sakila.film
where length>180
;



-- Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.

select *, concat(upper(substring(first_name,1,1)), lower(substring(first_name,2, length(first_name))),' ', last_name ,' - ', lower(email)) as name_and_email
from sakila.customer;




-- What's the length of the longest film title?
-- the longest movie tittle is arachnophobia rollercoaster with 2h e 27 min 
select title, sec_to_time(length*60)
from sakila.film
order by length(title) desc
limit 1;

