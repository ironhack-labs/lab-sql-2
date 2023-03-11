USE sakila;

-- 1
SELECT
	*
FROM actor
WHERE first_name = 'Scarlett';

-- 2 
SELECT
	*
FROM actor
WHERE last_name = 'Johansson';

-- 3
SELECT count(return_date)
FROM rental;

-- 4
SELECT DISTINCT	count(*)-count(return_date)
FROM rental;

-- 5
SELECT
	min(rental_duration) as min_rental_duration,
    max(rental_duration) as max_rental_duration
FROM film;

-- 6
SELECT
	min(length) as min_durantion,
    max(length) as max_duration
FROM film;

-- 7
SELECT
    avg(length) as avg_length
FROM film;

-- 8
SELECT
    floor(avg(length)/60) as hours,
    round(avg(length)%60,0) as minutes
FROM film;

-- 9
SELECT
	count(*)
FROM film
WHERE length/60 > 3;

-- 10
SELECT
	concat(upper(left(first_name,1)),lower(right(first_name,(length(first_name)-1)))) as first_name,
    upper(last_name) as last_name,
    lower(email) as email
FROM customer;

-- 11
SELECT
	title,
    length(title) as title_length
from film
ORDER by length(title) DESC
LIMIT 1;

-- OR

SELECT 
	title,
	length(title)
FROM film
WHERE length(title) = (select max(length(title)) FROM film);