-- 1. Select all the actors with the first name ‘Scarlett’.
select *
from sakila.actor
where first_name = 'Scarlett'
;

-- 2. Select all the actors with the last name ‘Johansson’.
select *
from sakila.actor
where last_name = 'Johansson'
;

-- 3. How many films (movies) are available for rent?
select count(inventory_id) as number_of_movies
from sakila.inventory
;
-- 4.581 movies are available

-- 4. How many films have been rented?
-- 16.044 rentals have been made until this point

-- 5. What is the shortest and longest rental period?
select timestampdiff(day, rental_date, return_date) as rental_duration
from sakila.rental
;

select min(rental_duration) as min_rental
from sakila.film
;
select max(rental_duration) as max_rental
from sakila.film
;
-- min = 3 days; max = 7 days

-- 6. What are the shortest and longest movie duration? Name the values max_duration and min_duration.
select max(length) as max_duration
from sakila.film
;

select min(length) as min_duration
from sakila.film
;
-- min = 46 days; max = 185 minutes

-- 7. What's the average movie duration?
select round(avg(length),2) as avg_length_movie
from sakila.film
;
-- The avg. length of the movies are 115.27 minutes

-- 8. What's the average movie duration expressed in format (hours, minutes)?
select sec_to_time(avg(length)*60) as avg_length_movie
from sakila.film
;
-- The avg. length of a movies is 01:55 (hh:mm)

-- 9. How many movies are longer than 3 hours?
select count(*) as long_duration_movie
from sakila.film
where length > 180
;
-- 39 movies are over 3 h long

-- 10. Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
select *, concat(lower(first_name),' ', last_name, ' - ', lower(email)) as customer_details
from sakila.customer
;

-- 11. What's the length of the longest film title?
select max(length(title)) as longest_title
from sakila.film
;
-- the title with 27 characters is the longest!