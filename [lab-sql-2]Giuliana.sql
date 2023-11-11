-- Select all the actors with the first name ‘Scarlett’
select * 
from sakila.actor
where first_name = 'Scarlett'; 

-- Select all the actors with the last name ‘Johansson’

select * 
from sakila.actor
where last_name = 'Johansson'; 

-- How many films (movies) are available for rent? 4.581
select count(inventory_id)
from sakila.inventory;

-- How many films have been rented?

select count(*) as films_rented 
from sakila.rental
where rental_id;

-- What is the shortest and longest rental period? 18 hours
select min(TIMEDIFF(return_date, rental_date)) as rental_period
from sakila.rental 
;
-- largest: 10 days
select max(DATEDIFF(return_date, rental_date)) as rental_period
from sakila.rental;

-- What are the shortest and longest movie duration? Name the values max_duration and min_duration
--  Max : 185 min
select max(length) as max_duration
from sakila.film; 
-- Min: 46 min
select min(length) as min_duration
from sakila.film;

-- What's the average movie duration? 115,2 min
select avg(length) as average_duration
from sakila.film;

-- What's the average movie duration expressed in format (hours, minutes)?
select time_format(sec_to_time(avg(length * 60)), '%H:%i:%s') as average_length
FROM sakila.film;

-- How many movies longer than 3 hours? 39 movies
select count(title) as long_movies
from sakila.film
where length > 180;

-- Get the name and email formatted

select lower(email)
from sakila.customer;

SELECT CONCAT(UPPER(SUBSTRING(first_name, 1, 1)), LOWER(SUBSTRING(first_name, 2)), " ", 
upper(last_name), " - ", lower(email)) as formated
FROM sakila.customer;

-- What's the length of the longest film title? 
#  27 characters 
select max(character_length(title)) as max_len_of_title
from sakila.film;
