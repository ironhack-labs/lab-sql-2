-- Instructions
-- Select all the actors with the first name ‘Scarlett’.
SELECT * FROM sakila.actor WHERE first_name='Scarlett';

-- Select all the actors with the last name ‘Johansson’.
SELECT * FROM sakila.actor WHERE last_name='Johansson';

-- How many films (movies) are available for rent?
SELECT COUNT(*) FROM sakila.film;

-- How many films have been rented?
SELECT COUNT(*) FROM sakila.rental;

-- What is the shortest and longest rental period?
SELECT MIN(rental_duration) FROM `sakila`.`film`;
SELECT MAX(rental_duration) FROM `sakila`.`film`;

-- What are the shortest and longest movie duration? Name the values max_duration and min_duration.
SELECT MIN(length) AS min_duration FROM `sakila`.`film`;
SELECT MAX(length) AS max_duration FROM `sakila`.`film`;

-- What's the average movie duration?
SELECT AVG(length) AS avg_duration FROM `sakila`.`film`;

-- What's the average movie duration expressed in format (hours, minutes)?
SELECT CONCAT(FLOOR(avg(length)/60), ', ', round(avg(length)%60)) AS formatted_time FROM sakila.film;

-- How many movies longer than 3 hours?
SELECT COUNT(length) FROM sakila.film WHERE length > 180;

-- Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
SELECT CONCAT(SUBSTR(first_name, 1, 1), LOWER(SUBSTR(first_name, 2)), ' ', last_name, ' - ', lower(email)) AS formatted_final FROM `sakila`.`customer`;

-- What's the length of the longest film title?
SELECT max(length(title)) FROM sakila.film;