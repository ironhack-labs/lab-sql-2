-- DA PT 2023 
-- Sara Ferreira da Silva

-- 1. Select all the actors with the first name ‘Scarlett’.
select *
from sakila.actor
where first_name = 'Scarlett' 

-- 2. Select all the actors with the last name ‘Johansson’.
select *
from sakila.actor
where last_name = 'Johansson' 

-- 3. How many films (movies) are available for rent?
-- There are 4851 movies available
select *
from sakila.inventory
select count(inventory_id) 
from sakila.inventory;

-- 4. How many films have been rented?
-- There were rented 16044 movies
select *
from sakila.rental
select count(rental_id) 
from sakila.rental;

-- 5. What is the shortest and longest rental period?
-- Longest is 10 days // 221 hours // 13319 min
-- Shortest is 0 days // 18 hours // 1080 min 

-- In days
select max(datediff(return_date, rental_date)) AS rental_period_in_days
from sakila.rental; 
select min(datediff(return_date, rental_date)) AS rental_period_in_days
from sakila.rental; 

-- In hours
select timestampdiff(hour, rental_date, return_date) AS rental_period_in_hours
from sakila.rental
select max(timestampdiff(hour, rental_date, return_date)) AS rental_period_in_hours
from sakila.rental
select min(timestampdiff(hour, rental_date, return_date)) AS rental_period_in_hours
from sakila.rental

-- In seconds
select timestampdiff(minute, rental_date, return_date) AS rental_period_in_minutes
from sakila.rental
select max(timestampdiff(minute, rental_date, return_date)) AS rental_period_in_minute
from sakila.rental
select min(timestampdiff(minute, rental_date, return_date)) AS rental_period_in_minute
from sakila.rental

-- 6. What are the shortest and longest movie duration? Name the values max_duration and min_duration.
-- Max: 185 // Min: 46 
select*
from sakila.film
select max(length) as max_duration, min(length) as min_duration
from sakila.film;

-- 7. What's the average movie duration?
-- The average is 115,2720 min. duration
select avg(length)
from sakila.film;

-- 8. What's the average movie duration expressed in format (hours, minutes)?
-- The average is 1 hour, 55 minutes, 16 seconds and 32 microseconds
select sec_to_time(avg(length * 60)) as length_h_m
FROM sakila.film;

-- 9. How many movies are longer than 3 hours?
-- Note: 3 hours is 180 min
-- There are 39 movies longer than 3 hours 
select count(*) as movies_longer_than_3_hours
from sakila.film
where length > 180

-- 10. Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
select concat(first_name, ' ', last_name, ' - ', email) as customer_identification
from sakila.customer;

-- 11. What's the length of the longest film title?
-- It is 27 caracters: ARACHNOPHOBIA ROLLERCOASTER
select max(length(title)) as max_film_title_length
from sakila.film;

select max(char_length(title)) as max_film_title_length,
substring_index(group_concat(title order by char_length(title) desc), ',', 1) as longest_film_title
from sakila.film;
