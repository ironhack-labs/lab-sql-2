use sakila;
-- Select all the actors with the first name ‘Scarlett’. it got Damon and Bening
select
	*
from sakila.actor
where first_name = 'Scarlett'
;
-- Select all the actors with the last name ‘Johansson’. - it got Matthew, Ray, Albert
select
	*
from sakila.actor
where last_name = 'Johansson'
;
-- How many films (movies) are available for rent? 4581
select * from sakila.film;
select
	count(*)
from sakila.inventory
;
-- How many films have been rented? 16044
select
	count(*)
from sakila.rental
;
-- What is the shortest and longest rental period? 3 e 7
select * from sakila.film;
select
	max(rental_duration) as Longest_rental,
    min(rental_duration) as Shortest_rental
from sakila.film;
-- What are the shortest and longest movie duration? Name the values max_duration and min_duration. 46 e 185
select
	max(length) as max_duration,
    min(length) as min_duration
from sakila.film;
-- What's the average movie duration? 115.2720
select
	avg(length) as avg_duration
from sakila.film;
-- What's the average movie duration expressed in format (hours, minutes)? 1 hour 55 min
SELECT     CONCAT(     FLOOR(AVG(length)/60), ' horas ',     AVG(length)%60, ' minutos ') AS 'avg_duration' FROM sakila.film;
SELECT
    CONCAT(
    FLOOR(AVG(length)/60), ' horas ',
    AVG(length)%60, ' minutos ') AS 'avg_duration'
FROM sakila.film;
-- How many movies longer than 3 hours? 39
SELECT COUNT(*)
FROM sakila.film
WHERE length > 180;

-- Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
select * from sakila.customer;
SELECT 
	CONCAT(UPPER(LEFT(first_name, 1)), 
	LOWER(SUBSTRING(first_name, 2)), ' ', 
    UPPER(last_name), ' - ', 
    LOWER(email)) AS name_and_email
FROM sakila.customer;

-- What's the length of the longest film title?
SELECT MAX(LENGTH(title)) AS longest_title_length
FROM sakila.film;