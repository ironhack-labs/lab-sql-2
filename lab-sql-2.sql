SELECT *
FROM sakila.actor
WHERE first_name = 'Scarlett';

SELECT *
FROM sakila.actor
WHERE last_name = 'Johansson';

SELECT
	 count(*)
FROM sakila.film;

SELECT DISTINCT 
              count(rental_id)
FROM sakila.rental;

SELECT 
     min(length) as min_length,
     max(length) as max_length
FROM sakila.film;

SELECT
     avg(length) as avg_length
FROM sakila.film;

SELECT
     CONCAT(FLOOR(avg(length)/60),':',round(avg(length)%60)) as format_hours
FROM sakila.film;

SELECT
     count(length)
FROM sakila.film
WHERE length > 180;

SELECT
     CONCAT(substr(first_name,1,1),lower(substr(first_name,2)),' ',last_name,' - ',lower(email)) as Name_and_Email
FROM sakila.customer;

SELECT
     title,
	 length(title)
FROM sakila.film
ORDER by length(title) desc limit 1;