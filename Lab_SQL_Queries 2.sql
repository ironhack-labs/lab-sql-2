-- selecting first_name as scarlett in all actor list 

select *
from sakila.actor
where first_name = 'Scarlett';

-- selecting last_name as ‘Johansson’ in all actor list 
select *
from sakila.actor
where last_name = 'Johansson';

-- check how many film are available for rent 

select *
from sakila.film, inventory
;

select count(film_id)
from sakila.inventory ;

-- 4581 film are available to be renteed 

-- Now checking how many film have been rented 
-- 16044 film have been rented 

select count(rental_id)
from sakila.rental;

-- What is the shortest and longest rental period?
-- max rental period is 7 days
-- min rental periodo is 3 days 

select min(rental_duration)
from sakila.rental,film;

select max(rental_duration)
from sakila.rental,film;

-- What are the shortest and longest movie duration? Name the values max_duration and min_duration.
-- min_duration = 46 \ max_duration = 185

select min(length) as min_duration
from sakila.rental,film;

select max(length) as max_duration
from sakila.rental,film;

select length
from sakila.rental,film;

-- What's the average movie duration?
-- average duration is 115.2720
select avg(length) as avg_duration
from sakila.rental,film;

-- What's the average movie duration expressed in format (hours, minutes)? format is minutes

-- How many movies longer than 3 hours?
-- 625716 film are more longer than 3 hours 
select count('rental_id')
from sakila.rental,film
WHERE length > 180 ;

select *
from sakila.rental,film
WHERE length > 180 ;

-- Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.

select lower(first_name)
from sakila.customer 

select lower(email)
from sakila.customer;

SELECT last_name, lower(first_name),lower(email)
FROM sakila.customer;

-- What's the length of the longest film title?
-- the length of the longest film title is 27 caracter
select *
from film, sakila.rental;

select length(title)
from sakila.film

select max(length(title))
from sakila.film

