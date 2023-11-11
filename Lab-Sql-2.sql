-- 1) Selecting all the actors with the first name ‘Scarlett’
select *
from sakila.actor
where (first_name = "Scarlett");

-- 2) Selecting all the actors with the last name ‘Johansson’
select *
from sakila.actor
where (last_name = "Johansson");

-- 3) How many films (movies) are available for rent?
select count(*) as films_available_for_rent
from sakila.inventory;

-- 4) How many films have been rented?
select count(*) number_of_rented_films
from sakila.rental;

-- 5) What is the shortest and longest rental period?
select min(rental_duration) as shortest_rental_period
from sakila.film;

select max(rental_duration) as longest_rental_period
from sakila.film;

-- 6) What are the shortest and longest movie duration?
select min(length) as min_duration
from sakila.film;

select max(length) as max_duration
from sakila.film

-- 7) What's the average movie duration?
select avg(length) as average_movie_duration
from sakila.film;

-- 8) What's the average movie duration expressed in format (hours, minutes)?
select concat(floor(avg(length)/60), " hour(s) and ", round(avg(length)%60), " minute(s)") as average_movie_duration
from sakila.film;

-- 9) How many movies longer than 3 hours?
select count(*) as number_of_movies_longer_than_3_hours
from sakila.film
where (length > 180);

-- 10) Getting the name and email formatted
select concat(first_name, " ", last_name, " - ", lower(email)) as name_and_email
from sakila.customer;

-- 11) What's the length of the longest film title?
select max(length(description)) as length_of_the_longest_film_title
from sakila.film;