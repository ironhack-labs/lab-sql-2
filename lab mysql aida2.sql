-- Select all the actors with the first name ‘Scarlett’.
-- Select all the actors with the last name ‘Johansson’.
-- How many films (movies) are available for rent?
-- How many films have been rented?
-- What is the shortest and longest rental period?
-- What are the shortest and longest movie duration? Name the values max_duration and min_duration.
-- What's the average movie duration?
-- What's the average movie duration expressed in format (hours, minutes)?
-- How many movies longer than 3 hours?
-- Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
-- What's the length of the longest film title?

use sakila;

select * from actor where first_name = 'Skarlett';

select * from actor where last_name = 'Johansson';

select count(*) as film_count from film where rental_duration > 0;

select count(*) as 'film_count' from rental;

SELECT 
    MIN(TIMESTAMPDIFF(DAY, rental_date, return_date)) AS shortest_rental_period,
    MAX(TIMESTAMPDIFF(DAY, rental_date, return_date)) AS longest_rental_period
FROM rental
WHERE return_date IS NOT NULL;

SELECT 
    MIN(TIMESTAMPDIFF(DAY, rental_date, return_date)) AS max_duration,
    MAX(TIMESTAMPDIFF(DAY, rental_date, return_date)) AS min_duration
FROM film;

SELECT 
    MIN(length) AS min_duration,
    MAX(length) AS max_duration
FROM film;

SELECT AVG(length) AS average_duration
FROM film;

SELECT AVG(length) AS average_duration
FROM film;

SELECT COUNT(*) AS movies_longer_than_3_hours
FROM film
WHERE length > 180;

SELECT 
    CONCAT(first_name, ' ', UPPER(last_name), ' - ', LOWER(CONCAT(first_name, '.', last_name, '@sakilacustomer.org'))) AS formatted_info
FROM customer;

SELECT MAX(CHAR_LENGTH(title)) AS longest_title_length
FROM film;


