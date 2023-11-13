-- Select all the actors with the first name ‘Scarlett’.

SELECT *
FROM sakila.actor
WHERE first_name = 'Scarlett';

-- Select all the actors with the last name ‘Johansson’.
SELECT *
FROM sakila.actor
WHERE last_name = 'Johansson';

-- How many films (movies) are available for rent?

SELECT count(rental_id)
FROM sakila.rental;

-- How many films have been rented?

select count(rental_date)
from sakila.rental;

-- What is the shortest and longest rental period?

SELECT MIN(rental_duration) AS shortest_rental_period
FROM sakila.film;

SELECT max(rental_duration) AS longest_rental_period
FROM sakila.film;

-- What's the average movie duration?

SELECT AVG(length) AS average_movie_duration
FROM sakila.film;

-- What's the average movie duration expressed in format (hours, minutes)?
SELECT 
  CONCAT(
    FLOOR(AVG(length) / 60), ' hours ',
    AVG(length) % 60, ' minutes'
  ) AS average_movie_duration
FROM sakila.film;

-- How many movies longer than 3 hours?

SELECT COUNT(*)
FROM sakila.film
WHERE length > 180; 

-- Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.

SELECT
  CONCAT(first_name, ' ', last_name, ' - ', email) AS formatted_name_and_email
FROM
  sakila.customer;
  
  -- What's the length of the longest film title?
  SELECT MAX(LENGTH(title)) AS longest_title_length
FROM sakila.film;









