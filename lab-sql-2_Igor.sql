-- Lab | SQL Queries 2

-- Select all the actors with the first name ‘Scarlett’.

SELECT
	*
FROM sakila.actor
WHERE first_name = 'Scarlett';

-- Select all the actors with the last name ‘Johansson’.

SELECT
	*
FROM sakila.actor
WHERE last_name = 'Johansson';

-- How many films (movies) are available for rent?

SELECT DISTINCT
	COUNT(*)
FROM sakila.inventory;

-- How many films have been rented?

SELECT DISTINCT
	COUNT(*)
FROM sakila.rental;

-- What is the shortest and longest rental period?

SELECT
	COUNT(*),
	min(rental_duration) as rental_duration_min,
	max(rental_duration) as rental_duration_max
FROM sakila.film;

-- What are the shortest and longest movie duration? Name the values max_duration and min_duration.

SELECT
	COUNT(*),
	min(length) as min_duration,
	max(length) as max_duration
FROM sakila.film;

-- What's the average movie duration?

SELECT
	COUNT(*),
	avg(length) as avg_duration
FROM sakila.film;

-- What's the average movie duration expressed in format (hours, minutes)?

SELECT
    concat(
    floor(avg(length)/60), ' hora(s) ',
    round(avg(length)%60), ' minutos ') as 'avg_duration'
FROM sakila.film;

-- How many movies longer than 3 hours?

SELECT
	COUNT(*)
FROM sakila.film
WHERE length > 180;

-- Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.

SELECT

concat(concat(upper((first_name)), ' ', upper(last_name)), ' - ', lower(email))
FROM sakila.customer;

-- What's the length of the longest film title?

SELECT 
max(LENGTH(title)) as longest_title
FROM sakila.film;
