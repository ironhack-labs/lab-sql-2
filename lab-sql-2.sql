SELECT
	*
FROM sakila.actor
WHERE first_name = 'Scarlett';

SELECT
	*
FROM sakila.actor
WHERE last_name = 'Johansson';

SELECT 
	Count(*)
FROM sakila.rental
WHERE return_date < now();

SELECT DISTINCT
	Count(*)
FROM sakila.rental;

SELECT
     min(rental_duration) as min_rental,
	 max(rental_duration) as max_rental
FROM sakila.film;


SELECT
     min(length) as min_duration,
	 max(length) as max_duration,
     avg(length) as avg_duration,
	floor((avg(length) /60)) as avg_duration_hours,
    (avg(length) % 60) as avg_duration_min
FROM sakila.film;

SELECT
	Count(*) as films_more_than_3h
FROM sakila.film
WHERE length > 179;

SELECT
lower(first_name),
upper(last_name),
lower(email)
FROM sakila.customer;

SELECT
	*
FROM sakila.customer;

SELECT
	CONCAT(UPPER(SUBSTRING(first_name,1,1)), LOWER(SUBSTRING(first_name,2))," ", upper(last_name),"-",lower(email)) as formated_name
FROM sakila.customer;

SELECT
	title,
	length(title)
FROM sakila.film
ORDER BY length(title) DESC
LIMIT 1;

