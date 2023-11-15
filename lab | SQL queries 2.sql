-- Select all the actors with the first name ‘Scarlett’.
SELECT *
FROM sakila.actor
WHERE first_name = 'SCARLETT';

-- Select all the actors with the last name ‘Johansson’.
SELECT *
FROM sakila.actor
WHERE last_name = 'JOHANSSON';

-- How many films (movies) are available for rent?
SELECT COUNT(*) AS available_for_rent
FROM sakila.inventory;

-- How many films have been rented?
SELECT COUNT(*) AS films_rented
FROM sakila.rental;

-- What is the shortest and longest rental period?
SELECT MIN(TIMEDIFF(return_date, rental_date)) AS shortest_rental_in_hrs
FROM sakila.rental;

SELECT MAX(TIMEDIFF(return_date, rental_date)) AS longest_rental_in_hrs
FROM sakila.rental;

-- What are the shortest and longest movie durations? 
-- Name the values max_duration and min_duration.
SELECT MAX(length) AS max_duration_in_min
FROM sakila.film;

SELECT MIN(length) AS min_duration_in_min
FROM sakila.film;

-- What's the average movie duration?
SELECT AVG(length) AS average_duration_in_min
FROM sakila.film;

-- What's the average movie duration expressed in format (hours, minutes)?
SELECT TIME_FORMAT(SEC_TO_TIME(AVG(length * 60)), '%H:%i') AS average_duration
FROM sakila.film;

-- How many movies longer than 3 hours?
SELECT COUNT(*) AS n_over_three_hrs 
FROM sakila.film
WHERE length >= 180;

-- Get the name and email formatted. 
-- Example: Mary SMITH - mary.smith@sakilacustomer.org.
SELECT CONCAT(
    UPPER(SUBSTRING(first_name, 1, 1)),
    LOWER(SUBSTRING(first_name, 2)),
    ' ',
    '-',
    ' ',
    UPPER(last_name),
    ' ',
    LOWER(email)
) AS formatted
FROM sakila.customer;

-- What's the length of the longest film title?
SELECT MAX(length)
FROM sakila.film;
