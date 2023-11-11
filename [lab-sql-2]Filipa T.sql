-- Select all the actors with the first name ‘Scarlett’.
select *
from sakila.actor
where first_name = 'Scarlett'
;

-- Select all the actors with the last name ‘Johansson’.

select *
from sakila.actor
where last_name = 'Johansson'
;

-- How many films (movies) are available for rent?

select count(inventory_id)
from sakila.inventory
;

-- 4581 films are available to rent

-- How many films have been rented?

select count(rental_id)
from sakila.rental
;

-- 16044 films were rented

-- What is the shortest and longest rental period

select max(rental_duration)
from sakila.film
;

select min(rental_duration)
from sakila.film
;

-- What are the shortest and longest movie duration? Name the values max_duration and min_duration.

select max(length) as max_duration
from sakila.film
;

-- 185 minutes

select min(length) as max_duration
from sakila.film
;

-- 46 minutes

-- What's the average movie duration?

select avg(length)
from sakila.film
;

-- 115,27 minutes

-- What's the average movie duration expressed in format (hours, minutes)?

select sec_to_time(avg(length)*60) as length_avg
from sakila.film
;

-- its 1:55:16

-- How many movies longer than 3 hours?

select count(*) as crazy_long_films
from sakila.film
where length > '180'
;

-- There are 39

-- Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.

select *, concat(first_name, ' ', last_name, ' - ', lower(email)) as full_info
from sakila.customer
;

-- What's the length of the longest film title?

select max(length(title)) as longest_title_length
from sakila.film
;

-- its 27 characters


