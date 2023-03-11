-- LAB1
-- Use sakila database.
use sakila; 

-- Get all the data from tables actor, film and customer.
select * from sakila.actor;
select * from sakila.film;
select * from sakila.customer;

-- Get film titles.
select title from sakila.film;

-- Get unique list of film languages under the alias language.
SELECT DISTINCT language_id -- selecting all the unique vaues from the column 
FROM sakila.film;

-- Find out how many stores does the company have?
SELECT DISTINCT store_id -- chooses the columns 
FROM sakila.customer;

-- Find out how many employees staff does the company have?
select * from sakila.staff;

SELECT DISTINCT staff_id -- selecting all the unique vaues from the column 
FROM sakila.staff;

SELECT -- chooses the columns 
	count(staff_id)
FROM sakila.staff;

-- Return a list of employee first names only?
SELECT DISTINCT first_name -- chooses the columns 
FROM sakila.staff;


-- LAB2
-- Select all the actors with the first name ‘Scarlett’.

select
*
from sakila.actor
where first_name = 'SCARLETT';

-- Select all the actors with the last name ‘Johansson’.

select
*
from sakila.actor
where last_name = 'JOHANSSON';

-- How many films (movies) are available for rent?

SELECT -- chooses the columns 
	count(film_id)
FROM sakila.inventory;

-- How many films have been rented?
SELECT DISTINCT count(inventory_id)
from sakila.rental;


-- What is the shortest and longest rental period?
SELECT 
    MIN(rental_duration) AS min_duration,
    MAX(rental_duration) AS max_duartion
FROM
    sakila.film;

-- What are the shortest and longest movie duration? Name the values max_duration and min_duration
SELECT 
    MIN(length) AS min_duration, 
    MAX(length) AS max_duartion
FROM
    sakila.film;
    
-- What's the average movie duration?

select 
	avg(length) as avg_duration
from sakila.film;

-- What's the average movie duration expressed in format (hours, minutes)

select 
concat(floor(avg(length)/60),':',round(avg(length) % 60)) as hours_and_minutes
from sakila.film;


-- How many movies longer than 3 hours?

SELECT COUNT(length) 
FROM sakila.film 
WHERE length > 180;

-- Get the name and email formatted. Example: Mary SMITH 
SELECT 
  CONCAT(
    LEFT(first_name, 1), 
    LOWER(SUBSTR(first_name, 2)), 
    ' ',
    UPPER(last_name),
    ' - ',
    LOWER(CONCAT(first_name, '.', last_name)),
    '@sakilacustomer.org'
  ) AS formatted_customer_info
FROM sakila.customer;

-- What's the length of the longest film title?

SELECT MAX(LENGTH(title)) AS longest_title_length
FROM sakila.film;

