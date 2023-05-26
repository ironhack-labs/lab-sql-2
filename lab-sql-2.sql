use sakila;

-- Select all the actors with the first name ‘Scarlett"
select * from sakila.actor
where first_name='Scarlett';

-- Select all the actors with the last name ‘Johansson’
select * from sakila.actor
where last_name='Johansson';

-- How many films (movies) are available for rent?
select count(inventory_id) from inventory;

-- How many films have been rented?
select count(rental_id) from rental;

-- What is the shortest and longest rental period?
-- shortest
select rental_duration as shortest_rental
from film
order by rental_duration asc
limit 1;

select min(rental_duration)
from film;

-- longest
select rental_duration 
from film
order by rental_duration desc
limit 1;

select max(rental_duration)
from film;

-- What are the shortest and longest movie duration? Name the values max_duration and min_duration

select min(length) as 'min_duration'
from film;

select max(length) as 'max_duration'
from film;


-- What's the average movie duration?
select avg(length)
from film;

--8. What's the average movie duration expressed in format (hours, minutes)?---- not able to output in the required format
select avg(length)
from film;

select time_format((convert(time, avg(length),'hh:mi') from bank.loan;

SELECT EXTRACT( from CAST(date as date)) AS day from loan;


-- How many movies longer than 3 hours? ---- - not correct!!!
select count(length)
from film
where length > '180';


-- Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
select concat(lower(first_name),' ',last_name, '-', email)
from customer;

-- What's the length of the longest film title?
select max(length(title))
from film;

