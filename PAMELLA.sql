use sakila;

SELECT * FROM actor WHERE first_name="Scarlett"; -- 1

SELECT * FROM actor WHERE last_name="Johansson"; -- 2

SELECT COUNT(*) FROM inventory; -- 3

SELECT COUNT(*) FROM rental; -- 4

SELECT MIN(rental_duration) AS min_duration, MAX(rental_duration) AS max_duration FROM film; -- 5

SELECT MIN(length) AS min_duration, MAX(length) AS max_duration FROM film; -- 6

SELECT AVG(length) AS avg_duration FROM film; -- 7

SELECT TIME_FORMAT(SEC_TO_TIME(avg(length)*60), '%H:%i') AS time_string from film; -- 8

SELECT COUNT(*) FROM film WHERE length > 180; -- 9

SELECT concat(upper(left(first_name,1)),LOWER(SUBSTRING(first_name,2)),' ', UPPER(last_name),' - ',lower(email)) as name_and_email FROM customer; -- 10

SELECT MAX(LENGTH(title)) AS max_title_length FROM film; -- 11