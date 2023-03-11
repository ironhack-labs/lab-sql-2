USE sakila;
-- 1
SELECT
	*
FROM sakila.actor
WHERE first_name = 'Scarlett';
-- 2
SELECT
	*
FROM sakila.actor
WHERE last_name = 'Johansson';
-- 3
SELECT
	*
FROM sakila.rental;

SELECT
	DISTINCT count(inventory_id)
FROM sakila.inventory;

-- 4

SELECT COUNT(inventory_id) FROM sakila.rental;





-- 5
SELECT 
	count(*),
    min(rental_duration) as min_rent_duration,
    max(rental_duration) as max_rent_duration
FROM sakila.film;

-- 6
SELECT 
	count(*),
    min(length) as min_duration,
    max(length) as max_duration
FROM sakila.film;

-- 7
SELECT
	count(*),
    avg(length) as avg_duration
FROM sakila.film;

-- 8
SELECT
	CONCAT(
    FLOOR(AVG(length)/60), ' horas ',
    AVG(length)%60, ' minutos ') AS 'avg_duration'
FROM sakila.film;

-- 9
SELECT
	count(*)
FROM sakila.film
WHERE (length > 180) 
;

-- 10
SELECT
	 CONCAT(upper(left(first_name,1)),lower(right(first_name,(length(first_name)-1))),' ', upper(last_name), ' - ',email)
FROM sakila.customer;

-- 11
SELECT
	max(length(title)) as length_title
    FROM sakila.film















