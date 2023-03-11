use sakila;

-- 1

SELECT * FROM actor WHERE first_name = 'Scarlett';

-- 2

SELECT * FROM actor WHERE last_name = 'Johansson';

-- 3

SELECT COUNT(*) FROM Inventory;

-- 4

SELECT COUNT(*) FROM rental;

-- 5

SELECT min(DATEDIFF(return_date, rental_date)) as 'Min Date',
		max(DATEDIFF(return_date, rental_date)) as 'Max Date' FROM rental;
        
-- 6

SELECT min(length) as min_duration,
		max(length) as max_duration FROM FILM;
        
-- 7

SELECT avg(length) as average_length FROM film;

-- 8 

SELECT CONCAT(FLOOR(AVG(length)/60), ',', ROUND(AVG(length) % 60)) AS avg_duration FROM film;

-- 9

SELECT * FROM film WHERE length > 180;

SELECT CONCAT(first_name, ' ', last_name, '-', email) FROM customer;

SELECT * FROM film WHERE LENGTH(title) = (
		SELECT MAX(LENGTH(title)) FROM film);